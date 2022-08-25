import { defineConfig } from 'vite';

export default defineConfig({
  server: {
    watch: {
      include: ['**/src/js/**', '**/src/css/**'],
    },
  },
  build: {
    outDir: './public',
    //emptyOutDir: false,
    manifest: true,
    rollupOptions: {
      input: './src/js/app.js',
      output: {
        entryFileNames: '[name].js',
      }
    }
  }
});
