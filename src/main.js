import { renderFile } from 'ejs';
import { readFileSync, existsSync, writeFileSync } from 'fs';

/**
 * CONTANTS
 */
const startMarker = '<!-- START dbSchema-markdown -->';
const endMarker ='<!-- END dbSchema-markdown -->'
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
        sql.close()
        return q;
    } catch (err) {
        console.log(err);
        return false
    }
}

/**
 * Convert DbObject to Model
 * @param  {object} dbObject
 */
function convertDbObjectToModel(dbObject){
    // Create object model
    var model = {
        entities : [],
        catalog : ''
    };

    // Data 
    var data = dbObject.recordset;


    // Set Catalog name 
    model.catalog = data[0].catalog;

    // Unique Entities
    var entities = [...new Set(data.map(a => a.name))] 

    // Push each entity to the model
    entities.forEach((e)=>{
        //var columns = getColumns(e, data);
        var columns = data.filter(f=>f.name==e);
        model.entities.push({
            name : e,
            schema : columns[0].schema,
            description : columns[0].tableExtendedProperties,
            columns : columns
        })
    })
    return model;
}

/**
 * Generate Markdown Schema
 * @param  {} options
 */
export async function generateMarkdownSchema(options) {
    
    // Get SQL Query
    const queryStr = readFileSync(require.resolve('../templates/mssql/schemaGenerator.sql')).toString()

    const config = options.connectionString !== undefined ? options.connectionString.toString() : null;
    
    if (config == null || config == undefined){
        throw new Error(`Connection string is required`)
    }
    // Get Data from Database
    const data = await getDataFromDb(config, queryStr);

    if (data == undefined || data == null || data == false){
        throw new Error(`Error retreiving the data from database`)
    }

    // Generate the model from Database
    const model = convertDbObjectToModel(data);

    // Generate markdown schema
    let mdSchema = null;

    
    renderFile(require.resolve('../templates/mssql/readme.md.tpl'), model, {}, function (err, str) {
        // str => Rendered HTML string
        if (err) {
            console.log(err)
            return false;
        } else {
            mdSchema = str;
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