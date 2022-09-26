import { defineConfig, loadEnv } from 'vite'
// import laravel from 'laravel-vite-plugin'
// import { Blurhash } from 'vite-plugin-md'


export default defineConfig(({ command }) => ({
  //assetsInclude: ['**/*.png'],
  plugins: [
    /*laravel([
      //'src/css/app.css',
      'src/js/app.js',
    ]),*/
  ],
  css: {
    postcss: {
      extract: true,
      plugins: [
        
      ],
    },
  },
  resolve: {
    alias: {
      '@': '/images',
    }
  },
  server: {
    watch: {
      include: ['**/src/js/**', '**/src/css/**'],
    },
  },
  build: {
    outDir: 'public',
    emptyOutDir: true, // If true, all public/* including images folder will be deleted every build
    
    manifest: true,
    rollupOptions: {
      input: ['src/js/app.js','src/css/app.css'],
      output: {
        entryFileNames: 'js/[name].js',
        assetFileNames: ({name}) => {
          if (/\.(gif|jpe?g|png|svg)$/.test(name ?? '')){
            return 'images/[name].[hash][extname]';
          }
          if (/\.css$/.test(name ?? '')) {
            return 'css/[name].[hash][extname]';   
          }
          // default value
          // ref: https://rollupjs.org/guide/en/#outputassetfilenames
          return '[name].[hash][extname]';
        },
      },
    }
  }
}));
