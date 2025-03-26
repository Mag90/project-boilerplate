# Project Boilerplate

A simple starter template for JavaScript/Node.js projects with frontend and backend workspaces.

## Structure

This boilerplate includes:

- Frontend and backend workspaces
- Concurrently for running both workspaces simultaneously
- Basic package.json configuration

## Using this Boilerplate

### Option 1: Using the provided script

1. Clone this repository
   ```
   git clone git@github.com:Mag90/project-boilerplate.git project-boilerplate
   cd project-boilerplate
   ```

2. Run the creation script
   ```
   ./create-project.sh your-project-name [optional-target-directory]
   ```

3. The script will:
   - Create a new directory for your project
   - Copy all files (excluding .git and node_modules)
   - Update package.json with your project name
   - Initialize a new git repository
   - Install dependencies

### Option 2: Manual setup

1. Clone this repository
   ```
   git clone git@github.com:Mag90/project-boilerplate.git your-project-name
   cd your-project-name
   ```

2. Remove the existing .git directory and initialize a new one
   ```
   rm -rf .git
   git init
   ```

3. Update the project name in package.json

4. Create your remote repository and set it as origin
   ```
   git remote add origin <your-repository-url>
   ```

5. Install dependencies
   ```
   npm install
   ```

## Development

- Run the frontend only: `npm run dev:frontend`
- Run the backend only: `npm run dev:backend`
- Run both concurrently: `npm run dev` 