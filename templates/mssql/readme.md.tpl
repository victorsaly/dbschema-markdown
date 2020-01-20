# Database **<%= catalog %>**
<% entities.forEach(entity => { %>
## <%= entity.schema %>.<%= entity.name %>
<%= entity.description %>      
| Name | Column | Type | Nullable | Default | Example | Comments    |
|------|--------|:------------:|---------:|---------|---------|-------------|<% entity.columns.forEach(column => { %>
| <%= column.name %> | <%= column.column %>  | <%= column.sqlType %>(<%= column.maxLength %>) | <%= column.isNullable %> | <%= column.defaultValue %> | <%= column.columnDescription %> | <%= column.constraintType %> |<% })
     })  _%>