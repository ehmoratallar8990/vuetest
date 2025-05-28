# Vue 3 + Vite

This template should help get you started developing with Vue 3 in Vite. The template uses Vue 3 `<script setup>` SFCs, check out the [script setup docs](https://v3.vuejs.org/api/sfc-script-setup.html#sfc-script-setup) to learn more.

Learn more about IDE Support for Vue in the [Vue Docs Scaling up Guide](https://vuejs.org/guide/scaling-up/tooling.html#ide-support).

## Deployment Instructions

### Local Development

1. Clone the repository
2. Install dependencies:
   ```
   npm install
   ```
3. Start the development server:
   ```
   npm run dev
   ```

### Production Deployment with Railpack

This project is configured for deployment with Railpack. The configuration is in `railpack.json`.

**Key files for deployment:**
- `railpack.json` - Deployment configuration
- `server.js` - Express server to serve the built Vue.js app
- `package.json` - Dependencies and scripts

**Deployment steps:**
1. The deployment will run `npm install` to install dependencies
2. Then it will run `npm run build` to build the Vue.js application
3. Finally, it will start the Express server with `node server.js`

### Manual Production Setup

1. Install dependencies:
   ```
   npm install
   ```

2. Build the application:
   ```
   npm run build
   ```

3. Start the production server:
   ```
   npm start
   ```

The server will serve the built Vue.js application from the `dist` directory on port 3000 (or the PORT environment variable).

### Troubleshooting

If you encounter any issues with the deployment:

1. Ensure the `server.js` file exists and is correctly configured
2. Verify that Express and Compression are installed as dependencies
3. Check that the build process generates files in the `dist` directory
4. Make sure the `railpack.json` file is valid

### Server Configuration

The application is served using a simple Express server that:
- Serves static files from the `dist` directory
- Routes all other requests to `index.html` for client-side routing
- Uses compression for better performance
