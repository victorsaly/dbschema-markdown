<div align="center">

# dbschema-markdown

**The easiest way to document your Database schema.**


</div>

---

This package will generate Markdown that beautifully renders your Database schema
in an easily explorable document.


```console
$ npm install dbschema-markdown --save-dev
```

## Usage

### Command Line API

Installing the package adds a `dbschema-markdown` script. Point it at a schema
and the output will be written to stdout.

The schema may be retrieved from a Database endpoint:

```console
$ dbschema-markdown "Data Source=SERVER\INSTANCE;Initial Catalog=Demo;Persist Security Info=True;User ID=APP_Demo;password=XXXXX" > schema.md
```

…or update existing file:

```console
$ dbschema-markdown "Data Source=SERVER\INSTANCE;Initial Catalog=Demo;Persist Security Info=True;User ID=APP_Demo;password=XXXXX" -u "./schema.md"
```

If `--update-file` is given, the generated Markdown will be output to the given
file between the `<!-- START dbschema-markdown -->` and `<!-- END dbschema-markdown -->`
comment markers instead of printed to STDOUT. If the file does not exist, it
will be created (and will include the comment markers for future updates).

#### Options

```console
$ dbschema-markdown --help

Usage: dbschema-markdown [options] <connectionString>

Output a Markdown document 

Options:

  --update-file <file>   Markdown document to update (between comment markers) or
                         create (if the file does not exist)
```


## Output


<!-- START dbSchema-markdown -->

# Database **Demo**

## dbo.Logs
      
| Name | Column | Type | Nullable | Default | Example | Comments    |
|------|--------|:------------:|---------:|---------|---------|-------------|
| Logs | ID  | int() | false |  |  | PRIMARY KEY |
| Logs | Created  | datetime() | true | (getdate()) |  |  |
## dbo.Users
This is a demo, Additional Information about the Table 

| Name | Column | Type | Nullable | Default | Example | Comments    |
|------|--------|:------------:|---------:|---------|---------|-------------|
| Users | ID  | int() | false |  | Primary Key | PRIMARY KEY |
| Users | Name  | varchar(50) | false |  | Full Name |  |

<!-- END dbSchema-markdown -->


[example]: https://github.com/exogen/graphbrainz/blob/master/docs/types.md
[graphbrainz]: https://github.com/exogen/graphbrainz
