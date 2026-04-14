#!/bin/bash

# Ensure datasets directory exists
mkdir -p models

URL="https://berkeley.box.com/s/o6i5gg5nw9bdo2g7r4zr1auz27upbpsy"
ZIP="pretrained.zip"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Linux operating system detected"
    echo "Downloading the datasets..."
    wget -O "$ZIP" "$URL"

elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Mac OSX operating system detected"
    echo "Downloading the datasets..."
    curl -L "$URL" --output "$ZIP"

else
    echo "Detected operating system unsupported"
    echo "Visit:"
    echo "$URL"
    exit 1
fi

echo "Unzipping into models/..."
unzip -o "$ZIP" -d models

echo "Cleaning up..."
rm "$ZIP"
rm -rf __MACOSX/

echo "Done."