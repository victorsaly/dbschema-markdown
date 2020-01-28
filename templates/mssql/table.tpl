### <%= name %>
<%= description %>      
| Column | Type |  Constraints | Default | 
|:-------|:-------------|:---------|:--------|
<% columns.forEach(column => { _%>
| <%= column.column %>  | <%= 
      column.sqlType %><%= 
      column.maxLength == null && column.precision == null ? '' : '(' %><%= column.maxLength > null ? column.maxLength : (column.precision == null ? '' :  column.precision) %><%= column.maxLength == null && column.precision == null ? '' : ')' %> <%- column.isNullable ? '<br> `nullable`':'' %><%- column.isComputed ? '<br> `Computed`':'' %> | <% 
     column.constraints.forEach((constraint, key, arr) => { %><%-
     constraint.constraintType == null ? '' : 
     ((constraint.constraintType.charAt(0).toUpperCase() + constraint.constraintType.slice(1).toLowerCase() + ''
          + '<br>` ' + (constraint.constraintTable == null ? '' : constraint.constraintTable + '.') 
          + constraint.constraintColumn 
          + ' `' + ((Object.is(arr.length - 1, key)) ? '' : '<br>'))
     ) _%><%-

     constraint.collectionTables == null ? '' : 
     ('<br> Dependencies: <br> ' + constraint.collectionTables.replace(/{/g,'`').replace(/}/g,'`<br>') + '')

     %><% })%> | <%= column.defaultValue == null ? '' : column.defaultValue %><%= 
column.columnDescription == null ? '' : '<br>`' + column.columnDescription + '`' %> |
<% }) %>
