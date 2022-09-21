import { defineConfig, loadEnv } from 'vite'
import { resolve } from "path";

import laravel from 'laravel-vite-plugin';

export default defineConfig(({ command }) => ({

  plugins: [
    laravel([
      'src/css/app.css',
      'src/js/app.js',
    ]),
  ],  
  resolve: {
    alias: {
        '@': '/src/js',
        "/images": resolve(__dirname, "src/images"),
    }
  },
  assetsInclude: ['./src/images/*.png'], // do not add .css
  server: {
    watch: {
      include: ['**/src/js/**', '**/src/css/**'],
    },
  },
  build: {
    outDir: 'public',
    emptyOutDir: true,
    manifest: true,
    rollupOptions: {
      output: {
        entryFileNames: 'js/[name].js',
        /*assetFileNames({name: filename}) {
          const asset = filename?.split('src/').at(1)
          return asset ? asset : filename
        },*/
        assetFileNames: ({name}) => {
          console.log("asset_name: " + name)
          if (/\.(gif|jpe?g|png|svg)$/.test(name ?? '')){
              return 'images/[name][extname]';
          }
          
          if (/\.css$/.test(name ?? '')) {
              return 'css/[name][extname]';   
          }
 
          // default value
          // ref: https://rollupjs.org/guide/en/#outputassetfilenames
          return '[name][extname]';
        },
      },
    }
  },
  dev_server: {
    enabled: true
  },
}));
