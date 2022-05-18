const path = require('path')
const fs = require('fs')

// Kill me
const dir = __dirname.slice(0, -("scripts".length + 1))

const markdownPlugin = {
  name: 'markdown',

  setup(build) {
    build.onLoad({ filter: /^.*\.md\.js$/ }, async (args) => {
      import(args.path).then(async ({ make, displayName, parentName }) => {
        if (parentName) {
          if(!fs.existsSync(`${dir}/docs/${parentName}`)){
            fs.mkdirSync(`${dir}/docs/${parentName}`)
          }
          await fs.promises.writeFile(`${dir}/docs/${parentName}/${displayName}.md`, make);
        } else {
          await fs.promises.mkdir(`${dir}/docs/${displayName}`);
          await fs.promises.writeFile(`${dir}/docs/${displayName}/${displayName}.md`, make);
        }

        return { contents: '' }
      })
    })
  },
}

const i = 1
const data = [
  "./src/litons/Liton/a/ButtonLink.md.js",  //  0
  "./src/litons/Liton/button/Button.md.js", //  1
];

require('esbuild').build({
  entryPoints: [data[i]],
  format: "esm",
  target: "es6",
  write: false,
  plugins: [markdownPlugin],
})
