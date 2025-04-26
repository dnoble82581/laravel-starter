#!/usr/bin/env bash
set -euo pipefail

echo "🔧 Installing PHP dependencies…"
composer install

echo "⚙️  Copying environment file…"
[ -f .env ] || cp .env.example .env

echo "🔑 Generating app key…"
php artisan key:generate

echo "🚧 Running migrations…"
php artisan migrate

echo "📦 Installing JS dependencies…"
npm install

echo "🚀 Building frontend assets…"
npm run dev

echo "✅ Setup complete! Your Laravel project is ready."