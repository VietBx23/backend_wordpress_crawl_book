#!/usr/bin/env bash
# render-build.sh

set -e

echo "📦 Installing Python dependencies..."
pip install -r requirements.txt

echo "🌐 Installing Playwright browsers (non-root mode)..."
npx playwright install chromium --no-sandbox || echo "⚠️ Skipping root install (Render sandbox)"

echo "✅ Build completed!"
