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

section_start "Post Start Command"

echo "Installing dependencies for app"
npm install --prefix ./src
echo ""

success "Post Start Command Completed"