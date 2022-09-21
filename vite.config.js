import { defineConfig, loadEnv } from 'vite'
import { resolve } from "path";

import laravel from 'laravel-vite-plugin';

export default defineConfig(({ command }) => ({
  plugins: [
    laravel([
      'src/css/app.css',
      'src/js/app.js',
    ],),
  ],  
  resolve: {
    alias: {
      '@': '/src/js',
    }
  },
  server: {
    watch: {
      include: ['**/src/js/**', '**/src/css/**'],
    },
  },
  build: {
    outDir: 'public',
    emptyOutDir: true, // If true, all public/* including images folder will be deleted.
    manifest: true,
    rollupOptions: {
      output: {
        entryFileNames: 'js/[name].js',
        assetFileNames: ({name}) => {
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
  }
}));
