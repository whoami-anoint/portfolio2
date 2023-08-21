#!/bin/bash

# Stop and disable any previously running services
sudo systemctl stop nginx
sudo systemctl stop gunicorn

# Update your codebase (assumes you're using git)
git pull origin master

# Activate virtual environment
source venv/bin/activate

# Install or update dependencies
pip install -r requirements.txt

# Collect static files
python manage.py collectstatic --noinput

# Apply database migrations
python manage.py migrate

# Restart services
sudo systemctl start gunicorn
sudo systemctl start nginx

# Reload Nginx configuration
sudo systemctl reload nginx

# Install and initialize Tailwind CSS
npm install -D tailwindcss
npx tailwindcss init

echo "Deployment complete!"
