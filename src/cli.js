import arg from 'arg';
import { generateMarkdownSchema } from './main';
function parseArgumentsIntoOptions(rawArgs) {
  const args = arg(
    {
      '--update-file': String,
      '-u': '--update-file',
      '--help': Boolean,
      '-h': '--help'
    },
    {
      argv: rawArgs.slice(2),
    }
  );
  return {
    updateFile: args['--update-file'] || undefined,
    help: args['--help'] || false,
    connectionString: args._[0] || undefined,
    template: 'mssql'
  };
}


function safeExit(code) {
  process.on('exit', function () {
    process.exit(code)
  })
}

function printHelp() {
  console.log(
`Usage: dblookup-markdown [options] <connectionString>

Output a Markdown document 

Options:

  --update-file <file>   Markdown document to update (between comment markers) or
                         create (if the file does not exist)`)
}


export async function cli(args) {
  let options = parseArgumentsIntoOptions(args);
  var result = 0;
  if (options.help) {
    printHelp()
  }else{
    result = await generateMarkdownSchema(options);
  }
  safeExit(result ? 0 : 1)
}