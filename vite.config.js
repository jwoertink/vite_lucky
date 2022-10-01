import { defineConfig, loadEnv } from 'vite'
import autoprefixer from 'autoprefixer';
import tailwindcss from 'tailwindcss';

export default defineConfig(({ command }) => ({
  plugins: [
  ],
  css: {
    postcss: {
      extract: true,
      plugins: [
        tailwindcss(),
        autoprefixer()
      ],
    },
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
      input: ['src/js/app.ts','src/css/app.css'],
      output: {
        entryFileNames: 'js/[name].ts',
        assetFileNames: ({name}) => {
          if (/\.(gif|jpe?g|png|svg)$/.test(name ?? '')){
            return 'images/[name].[hash][extname]';
          }
          if (/\.css$/.test(name ?? '')) {
            return 'css/[name].[hash][extname]';
          }
          return '[name].[hash][extname]';
        },
      },
    }
  }
}));
