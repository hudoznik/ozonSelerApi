global.args = {}
process.setMaxListeners(0);
require('events').EventEmitter.defaultMaxListeners = 300;
process.argv.forEach(function (val, index, array) {
  a = val.split('=')
  args[a[0]] = a[1]
});
console.log(args)