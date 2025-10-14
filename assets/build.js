const esbuild = require('esbuild');
const path = require('path');

const args = process.argv.slice(2);
const watch = args.includes('--watch');
const deploy = args.includes('--deploy');

const loader = {
  '.woff': 'file',
  '.woff2': 'file',
  '.ttf': 'file',
  '.eot': 'file',
  '.svg': 'file',
  '.png': 'file',
  '.jpg': 'file',
  '.jpeg': 'file',
  '.gif': 'file'
};

let opts = {
  entryPoints: ['js/app.js'],
  bundle: true,
  logLevel: 'info',
  target: 'es2022',
  outdir: '../priv/static/assets/js',
  external: ['/fonts/*', '/images/*', 'phoenix-colocated/*'],
  loader: loader,
  alias: {
    '@': path.resolve(__dirname)
  }
};

if (deploy) {
  opts = {
    ...opts,
    minify: true,
    sourcemap: false
  };
} else {
  opts = {
    ...opts,
    sourcemap: 'inline'
  };
}

if (watch) {
  opts = {
    ...opts,
    sourcemap: 'inline'
  };
  esbuild
    .context(opts)
    .then((ctx) => {
      ctx.watch();
      console.log('Watching...');
    })
    .catch((_error) => process.exit(1));
} else {
  esbuild.build(opts).catch((_error) => process.exit(1));
}
