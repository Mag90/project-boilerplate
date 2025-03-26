#!/bin/bash

# Check if project name is provided
if [ $# -lt 1 ]; then
    echo "Usage: ./create-project.sh <project-name> [target-directory]"
    exit 1
fi

PROJECT_NAME=$1
TARGET_DIR=${2:-"$(pwd)/../$PROJECT_NAME"}

# Create target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Copy all files except .git, node_modules, and the script itself
echo "Copying project files to $TARGET_DIR..."
rsync -av --exclude='.git/' --exclude='node_modules/' --exclude='create-project.sh' ./ "$TARGET_DIR/"

# Update package.json with new project name
echo "Updating package.json with project name: $PROJECT_NAME..."
sed -i '' "s/\"name\": \"agent-social-media\"/\"name\": \"$PROJECT_NAME\"/" "$TARGET_DIR/package.json"

# Initialize new git repository
echo "Initializing new git repository..."
cd "$TARGET_DIR"
git init
git add .
git commit -m "Initial commit from project-boilerplate"

# Install dependencies
echo "Installing dependencies..."
npm install

echo "Project setup complete!"
echo "Your new project is ready at: $TARGET_DIR"
echo "You can now create a remote repository and push your project."
echo "Example:"
echo "  cd $TARGET_DIR"
echo "  git remote add origin git@github.com:yourusername/$PROJECT_NAME.git"
echo "  git push -u origin main" 