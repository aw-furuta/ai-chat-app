#!/bin/bash

section_start() {
    echo "=== $1 ==="
}

success() {
    echo "✅️ $1"
}

warning() {
    echo "⚠️ $1"
}

error() {
    echo "❌️ $1"
}

section_start "Post Create Command"

echo "Node Version:"
node --version
echo ""

success "Post Create Command Completed"