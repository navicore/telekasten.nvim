#!/usr/bin/env bash

# Test script for kitty-previewer
echo "Testing Kitty image preview..."

# Create a test image if you don't have one
if [ ! -f "test.png" ]; then
    echo "Please provide a test.png file in the current directory"
    echo "Or specify an image path as argument: $0 /path/to/image.png"
fi

IMG="${1:-test.png}"

if [ -f "$IMG" ]; then
    echo "Testing with image: $IMG"
    echo "Dimensions: 30x20 cells"
    ./scripts/kitty-previewer "$IMG" 0 0 30 20
else
    echo "Image not found: $IMG"
    exit 1
fi