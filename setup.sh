#!/usr/bin/env bash
set -euo pipefail

echo "🔧 Installing PHP dependencies…"
composer install

echo "⚙️  Setting up environment…"
cp .env.example .env
php artisan key:generate

echo "🚧 Running migrations…"
php artisan migrate

echo "📦 Installing JS dependencies & building assets…"
npm install
npm run dev

echo "✅ All done! Your new Laravel project is ready at $(pwd)"