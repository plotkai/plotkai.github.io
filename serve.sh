#!/bin/bash

# Simple script to start a local development server
# This helps avoid CORS issues when developing locally

echo "Starting local development server..."
echo "Blog will be available at: http://localhost:8000/blog.html"
echo "Press Ctrl+C to stop the server"
echo ""

# Check if Python 3 is available
if command -v python3 &> /dev/null; then
    python3 -m http.server 8000
# Fallback to Python 2
elif command -v python &> /dev/null; then
    python -m SimpleHTTPServer 8000
# Try Node.js serve if available
elif command -v npx &> /dev/null; then
    npx serve . -p 8000
else
    echo "Error: No suitable server found."
    echo "Please install Python or Node.js to run a local server."
    echo ""
    echo "Alternatively, you can:"
    echo "1. Install Python: https://python.org"
    echo "2. Install Node.js: https://nodejs.org"
    echo "3. Or use any other static file server"
fi