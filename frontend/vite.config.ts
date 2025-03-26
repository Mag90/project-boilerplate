import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import path from 'path'

// https://vitejs.dev/config/
export default defineConfig(async () => {
    const tailwindcss = await import('@tailwindcss/vite')

    return {
        plugins: [
            vue(),
            tailwindcss.default(),
        ],
        resolve: {
            alias: {
                '@': path.resolve(__dirname, './src'),
            },
        },
        server: {
            port: 3000
        }
    }
}) 