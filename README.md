<div align="center">

# dblookup-markdown

**The easiest way to document your Database schema.**


</div>

---

This package will generate Markdown that beautifully renders your Database schema
in an easily explorable document.


```console
$ npm install dblookup-markdown -g
```

## Usage

### Command Line API

Installing the package adds a `dblookup-markdown` script. Point it at a schema
and the output will be written to stdout.

The schema may be retrieved from a Database endpoint:

```console
$ dblookup-markdown "Data Source=SERVER\INSTANCE;Initial Catalog=Demo;Persist Security Info=True;User ID=APP_Demo;password=XXXXX" > lookup.md
```

…or update existing file:

```console
$ dblookup-markdown "Data Source=SERVER\INSTANCE;Initial Catalog=Demo;Persist Security Info=True;User ID=APP_Demo;password=XXXXX" -u "./lookup.md"
```

If `--update-file` is given, the generated Markdown will be output to the given
file between the `<!-- START dblookup-markdown -->` and `<!-- END dblookup-markdown -->`
comment markers instead of printed to STDOUT. If the file does not exist, it
will be created (and will include the comment markers for future updates).

#### Options

```console
$ dblookup-markdown --help

Usage: dblookup-markdown [options] <connectionString>

Output a Markdown document 

Options:

  --update-file <file>   Markdown document to update (between comment markers) or
                         create (if the file does not exist)
```


## Output


<!-- START dblookup-markdown -->

# Database **Demo**

### AddressType

Lookup Table For Address Types

| Id    | Address type    |
| ----- | --------------- |
| 1     | Customer        |
| 2     | CustomerContact |
| 3     | Supplier        |
| 4     | DeliveryAddress |

### Application

Lookup table to Identify application

| Id    | Name             |
| ----- | ---------------- |
| 1     | Unknown          |
| 2     | SAS              |
| 3     | Warehouse        |
| 4     | Warehouse Mobile |
| 5     | Sales            |
| 6     | Accounts         |
| 7     | Buildroom        |
| 8     | OnePortal        |
| 9     | Calendar         |

<!-- END dblookup-markdown -->

