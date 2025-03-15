#!/bin/bash

# Set the base directories
SRC_DIR="src"
DIST_DIR="dist"

echo "Starting cleanup process..."

# Step 1: Remove all HTML files from src directory
echo "Removing HTML files from src directory..."
find "${SRC_DIR}" -type f -name "*.html" -o -name "*.nb.html" | while read file; do
    echo "  Removing ${file}"
    rm "${file}"
done

# Step 2: Remove all R and Rmd files from dist directory
echo "Removing R and Rmd files from dist directory..."
find "${DIST_DIR}" -type f -name "*.R" -o -name "*.Rmd" | while read file; do
    echo "  Removing ${file}"
    rm "${file}"
done

# Step 3: Move HTML files from src to dist maintaining directory structure
echo "Moving HTML files to dist directory..."
find "${SRC_DIR}" -type f -name "*.html" -o -name "*.nb.html" | while read srcfile; do
    # Get the relative path from SRC_DIR
    relpath=$(realpath --relative-to="${SRC_DIR}" "${srcfile}")
    
    # Create the target directory if it doesn't exist
    targetdir="${DIST_DIR}/$(dirname "${relpath}")"
    mkdir -p "${targetdir}"
    
    # Move the file
    targetfile="${DIST_DIR}/${relpath}"
    echo "  Moving ${srcfile} to ${targetfile}"
    mv "${srcfile}" "${targetfile}"
done

# Create any missing directories in dist to mirror src structure
echo "Ensuring dist directory structure matches src..."
find "${SRC_DIR}" -type d | while read srcdir; do
    # Get the relative path from SRC_DIR
    reldir=$(realpath --relative-to="${SRC_DIR}" "${srcdir}")
    
    # Create the same directory in DIST_DIR if it doesn't exist
    if [ "${reldir}" != "." ]; then
        targetdir="${DIST_DIR}/${reldir}"
        mkdir -p "${targetdir}"
    fi
done

echo "Cleanup complete!"


