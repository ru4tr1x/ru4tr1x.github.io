#!/bin/bash

# Exit script on any error
set -e

# Step 1: Build the Jekyll Site
echo "Building Jekyll Site..."
jekyll build

# Step 2: Generate Critical-path CSS
# Ensure paths are correct for your specific project setup
echo "Generating Critical-path CSS..."
critical _site/index.html --base _site/ --inline > _site/index-critical.html

# OPTIONAL: Rename the critical file to replace the original index.html
# mv _site/index-critical.html _site/index.html

# Step 3: Serve the site
echo "Serving Jekyll Site..."
jekyll serve

# End of script
