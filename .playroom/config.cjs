module.exports = {
  components: './build/index.gen.js',
  outputPath: './package',
  title: 'typography',
  snippets: './Snippets.js',
  frameComponent: './FrameComponent.js',
  widths: [400, 2000],
  port: 9000,
  openBrowser: true,
  exampleCode: `<Button>Hello</Button>`,
  webpackConfig: () => ({
    module: {
      rules: [
        {
          test: /\.css$/i,
          exclude: /node_modules/,
          use: ["style-loader", "css-loader"],
        },
        {
          test: /\.tsx?$/,
          exclude: /node_modules/,
          use: {
            loader: 'babel-loader',
            options: {
              presets: [
                '@babel/preset-env',
                '@babel/preset-typescript',
                '@babel/preset-react',
              ],
            },
          },
        },
      ],
    },
  }),
  iframeSandbox: 'allow-scripts',
};
