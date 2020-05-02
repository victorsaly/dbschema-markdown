import { renderFile } from 'ejs';
import { readFileSync, existsSync, writeFileSync } from 'fs';
import tablemark from 'tablemark';


/**
 * CONTANTS
 */
const startMarker = '<!-- START dblookup-markdown -->';
const endMarker ='<!-- END dblookup-markdown -->'
const sql = require('mssql')
/**
 * Get Data from Database
 * @param  {object} config - database access
 * @param  {string} queryStr - sql query
 */
async function getDataFromDb(config, queryStr) {
    try {
        await sql.connect(config)
        const q = await sql.query(queryStr)
        await sql.close()
        return q;
    } catch (err) {
        return false
    }
}



async function  convertModelQueryToHtmlTable(config, model){  
        for(let t of model.tables) {
            try {
                if ( t.query != undefined && t.query != null){
                    await sql.connect(config)
                    let result = await sql.query(t.query)
                    if (result.recordset != undefined && result.recordset != null){
                        t.htmlTable =tablemark(result.recordset)
                    }
                    await sql.close()
                }
            } catch (error) {
            }
          }
    return model;
}


/**
 * Convert DbObject to Model
 * @param  {object} dbObject
 */
function convertDbObjectToModel(dbObject){
    // Create object model
    var model = {
        tables : []
    };

    // Data 
    var data = dbObject.recordset;

    // Push each entity to the model
    data.forEach((e)=>{
        var table = {
            data: e,
            query : `DECLARE @Temp NVARCHAR(MAX); 
            DECLARE @SQL NVARCHAR(MAX);
            
            SET @Temp = '';
            SELECT @Temp = @Temp + COLUMN_NAME + ', ' FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME ='${e.tableName}' AND COLUMN_NAME NOT IN ('Created', 'Guid', 'IsDeleted', 'Modified', 'ModifiedBy', 'CreatedById', 'ApplicationId')  
            
            SET @SQL = 'SELECT ' + SUBSTRING(@Temp, 0, LEN(@Temp)) +' FROM [${e.tableName}]';
            EXECUTE SP_EXECUTESQL @SQL;`,
            htmlTable : "",
         }
        model.tables.push(table);
    })
    
    return model;
}


/**
 * Generate Markdown Schema
 * @param  {} options
 */
export async function generateMarkdownSchema(options) {
    
    // Get SQL Query
    const queryStr = readFileSync(require.resolve('../templates/mssql/lookupGenerator.sql')).toString()

    const config = options.connectionString !== undefined ? options.connectionString.toString() : null;
    
    if (config == null || config == undefined){
        throw new Error(`Connection string is required`)
    }


    
    // Get Data from Database
    const data = await getDataFromDb(config, queryStr);

    if (data == undefined || data == null || data == false){
        throw new Error(`Error retreiving the data from database`)
    }

    
    const model = await convertModelQueryToHtmlTable(config, convertDbObjectToModel(data));
    
    // Generate markdown schema
    let mdSchema = null;

    
    renderFile(require.resolve('../templates/mssql/lookuptables.tpl'), model, {}, function (err, str) {
        // str => Rendered HTML string
        if (err) {
            console.log(err)
            return false;
        } else {
            mdSchema = str.toString();
        }
    });

    if (mdSchema == null || mdSchema == undefined){
        throw new Error(`Error rendering the markdown`)
    }



    var doc = startMarker + '\r\n' + mdSchema + '\r\n\n' + endMarker + '\r\n';

    var isAnUpdate = options.updateFile !== undefined;
    /*  update or create file */

    if (isAnUpdate){
        const path = options.updateFile;
        if (!existsSync(path)) {
            throw new Error(`Create a Markdown output`)
        }
        // file exists then update 
        doc = readFileSync(path).toString()
        const includeMarkers = options.includeMarkers !== false
        let startIndex = doc.indexOf(startMarker)
        let endIndex = doc.lastIndexOf(endMarker)

        if (startIndex !== -1 && endIndex !== -1 && startIndex < endIndex) {
            if (includeMarkers) {
              startIndex += startMarker.length
            } else {
              endIndex += endMarker.length
            }
            doc = doc.slice(0, startIndex) + '\r\n' + mdSchema + '\r\n' + doc.slice(endIndex)
          } else if (startIndex === -1) {
            throw new Error(`Start marker not found: ${startMarker}`)
          } else if (endIndex === -1) {
            throw new Error(`End marker not found: ${endMarker}`)
          } else {
            throw new Error('Start marker must precede end marker.')
          }
        // Add generated schema to file
        writeFileSync(path, doc, function (err) {
            if (err) throw err;
            return true;
        });
    }else{
        console.log(doc)
    }
    
    

    return true;
}