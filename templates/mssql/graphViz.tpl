[<%= name %>] {bgcolor: "#ececfc", size: "12"}
<% columns.forEach(column => { _%>
<%= column.isPK ? '*' : '' %><%= column.isFK ? '*+' : '' %><%= column.column %> {label: "<%= column.sqlType %><%= column.maxLength == null && column.precision == null ? '' : '(' %><%= column.maxLength > null ? column.maxLength : (column.precision == null ? '' :  column.precision) %><%= column.maxLength == null && column.precision == null ? '' : ')' %>, <%= column.isNullable ? '':'not' %> null"}
<%  })  _%>

<% 
columns.forEach(column => { 
    column.constraints.filter(f=>f.constraintTable != null).forEach(constraint => { 
_%>
[<%= constraint.constraintTable %>] {bgcolor: "#d0e0d0", size: "12"}
<% entities.filter(f=>f.name==constraint.constraintTable)[0].columns.filter(f=>f.isPK==true || f.isFK == true).forEach((c)=>{ _%>
<%= c.isPK ? '*' : '' %><%= c.isFK ? '*+' : '' %><%= c.column %> {label: "<%= c.sqlType %><%= c.maxLength == null && c.precision == null ? '' : '(' %><%= c.maxLength > null ? c.maxLength : (c.precision == null ? '' :  c.precision) %><%= c.maxLength == null && c.precision == null ? '' : ')' %>, <%= c.isNullable ? '':'not' %> null"}
<% }) _%>
<%  
    }) 
}) 
_%>


<% 
columns.forEach(column => { 
    column.constraints.filter(f=>f.collectionTables != null).forEach(constraint => { 
       var _collectionTables = constraint.collectionTables.split('}');
       
        _collectionTables.forEach((ct, idx)=>{
            var table = null;
            var _column = null;
            if (ct != undefined && ct.length > 2){
                ct = ct.slice(1);
                var ctArr = ct.split('.');
                table = ctArr[0];
                _column = ctArr[1];
            }
        if (table && idx < 11){
            
_%>
[<%=table %>] {bgcolor: "#fcecec", size: "12"}
<% entities.filter(f=>f.name==table)[0].columns.filter(f=>f.isPK==true || f.isFK == true).forEach((c)=>{ _%>
<%= c.isPK ? '*' : '' %><%= c.isFK ? '*+' : '' %><%= c.column %> {label: "<%= c.sqlType %><%= c.maxLength == null && c.precision == null ? '' : '(' %><%= c.maxLength > null ? c.maxLength : (c.precision == null ? '' :  c.precision) %><%= c.maxLength == null && c.precision == null ? '' : ')' %>, <%= c.isNullable ? '':'not' %> null"}
<% }) _%>
<%          
            }
        })
    }) 
}) 
_%>


# Relationships

<% 
columns.forEach(column => { 
    column.constraints.filter(f=>f.constraintTable != null).forEach(constraint => { 
_%>
<%= name %> 1--* <%= constraint.constraintTable %> { label: "<%= column.column %>", size: "10"}
<%  
    }) 
}) 
_%>

<% 
columns.forEach(column => { 
    column.constraints.filter(f=>f.collectionTables != null).forEach(constraint => { 
        var _collectionTables = constraint.collectionTables.split('}');
       
        _collectionTables.forEach((ct, idx)=>{
            var table = null;
            var _column = null;
            if (ct != undefined && ct.length > 2){
                ct = ct.slice(1);
                var ctArr = ct.split('.');
                table = ctArr[0];
                _column = ctArr[1];
            }
        if (table && idx < 11){
            
_%>
<%= name %> *--1 <%= table %> { label: "<%= _column %>", size: "10"}
<%          
            }
        })
    }) 
}) 
_%>