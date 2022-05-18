import { defineConfig } from 'dumi';
import path from 'path';

export default defineConfig({
  base: '/hypernova',
  publicPath: '/hypernova/',
  resolve: {
    includes: ['docs', 'src'],
  },
  title: 'hypernova',
  favicon:
    'https://user-images.githubusercontent.com/9554297/83762004-a0761b00-a6a9-11ea-83b4-9c8ff721d4b8.png',
  logo: 'https://user-images.githubusercontent.com/9554297/83762004-a0761b00-a6a9-11ea-83b4-9c8ff721d4b8.png',
  outputPath: './.umi/package',

  alias: {
    '@polydevil/hypernova': path.resolve(__dirname, './package/index.gen.js'),
  },
});
