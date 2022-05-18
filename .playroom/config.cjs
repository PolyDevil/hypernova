module.exports = {
  components: './build/index.gen.js',
  outputPath: './package',
  title: 'typography',
  snippets: './Snippets.js',
  frameComponent: './FrameComponent.js',
  widths: [400, 2000],
  port: 9000,
  openBrowser: true,
  exampleCode:
`
<BannerWide
    background="https://user-images.githubusercontent.com/25101758/165710595-6918ab51-95fe-4c8c-9a36-0a4fbe5ec8a6.png"
    description="Лимит с рассрочкой 30 дней без процентов для ИП и ООО"
    color="snow"
>
    <H1>Покупайте со СберБизнес</H1>
</BannerWide>
`,
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
