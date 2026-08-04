#!/bin/bash
# Script to compile ALL LaTeX (.tex) files in this repository into PDF format.

set -e

# Add standard LaTeX and Homebrew binary paths
export PATH="/opt/homebrew/bin:/Library/TeX/texbin:/usr/local/bin:$PATH"

# Determine compiler
COMPILER=""
if command -v tectonic &> /dev/null; then
    COMPILER="tectonic"
elif command -v pdflatex &> /dev/null; then
    COMPILER="pdflatex"
elif command -v xelatex &> /dev/null; then
    COMPILER="xelatex"
else
    echo "❌ Error: No LaTeX compiler (tectonic, pdflatex, xelatex) found in PATH."
    echo "To install tectonic via Homebrew, run: brew install tectonic"
    exit 1
fi

echo "🚀 Using LaTeX compiler: $COMPILER"

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# Navigate to parent project root if in resumes directory
if [[ "$SCRIPT_DIR" == */resumes ]]; then
    cd "$SCRIPT_DIR/.."
else
    cd "$SCRIPT_DIR"
fi

SUCCESS_COUNT=0
FAIL_COUNT=0

# Find all .tex files recursively
while IFS= read -r tex_file; do
    if [ -f "$tex_file" ]; then
        dir=$(dirname "$tex_file")
        base=$(basename "$tex_file")
        echo ""
        echo "📄 Compiling: $tex_file..."
        if (
            cd "$dir"
            if [ "$COMPILER" = "tectonic" ]; then
                tectonic "$base"
            else
                "$COMPILER" -interaction=nonstopmode "$base" > /dev/null 2>&1
            fi
        ); then
            echo "✅ Successfully generated PDF for $tex_file"
            SUCCESS_COUNT=$((SUCCESS_COUNT + 1))
        else
            echo "❌ Failed to compile $tex_file"
            FAIL_COUNT=$((FAIL_COUNT + 1))
        fi
    fi
done < <(find . -name "*.tex" -not -path '*/.*')

echo ""
echo "=========================================="
echo "🎉 Compilation finished!"
echo "   Successfully compiled: $SUCCESS_COUNT file(s)"
if [ $FAIL_COUNT -gt 0 ]; then
    echo "   Failed: $FAIL_COUNT file(s)"
fi
echo "=========================================="
