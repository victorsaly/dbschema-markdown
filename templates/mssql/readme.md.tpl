# Database **<%= catalog %>**
<% entities.forEach(entity => { %>
## <%= entity.name %>
<%= entity.description %>      
| Column | Type |  Constrains | Default | 
|:-------|:-------------|:---------|:--------|:--------|:------------|<% entity.columns.forEach(column => { %>
| <%= column.column %>  | <%= column.sqlType %><%= column.maxLength == null && column.precision == null ? '' : '(' %><%= column.maxLength > null ? column.maxLength : (column.precision == null ? '' :  column.precision) %><%= column.maxLength == null && column.precision == null ? '' : ')' %> <%- column.isNullable ? '<br> `nullable`':'' %> | <% 
     column.constrains.forEach((constrain, key, arr) => { %><%-
     constrain.constraintType == null ? '' : 
     (column.constraintType == 'PRIMARY KEY' ? 'Primary Key' : 
          '' + (constrain.constraintType.charAt(0).toUpperCase() + constrain.constraintType.slice(1).toLowerCase() + ''
          + '<br>` ' + (constrain.constraintTable == null ? '' : constrain.constraintTable + '.') 
          + constrain.constraintColumn 
          + ' `' + ((Object.is(arr.length - 1, key)) ? '' : '<br>'))
     ) _%><%-

     constrain.collectionTables == null ? '' : 
     ('<br> Dependencies: <br> ' + constrain.collectionTables.replace(/{/g,'`').replace(/}/g,'`<br>') + '')

     %><% })%> | <%= column.defaultValue == null ? '' : column.defaultValue %><%= 
column.columnDescription == null ? '' : '<br>`' + column.columnDescription + '`' %> | <% }) %>
<!-- Start Graph -->
[<%= entity.name %>]
<% entity.columns.forEach(column => { _%>
<%= column.column %>
<%  })  _%>
<!-- End Graph -->
<%     })  _%>