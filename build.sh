#!/bin/bash

# Step 1: Stop and disable any previously running services
sudo systemctl stop nginx
sudo systemctl stop gunicorn

# Step 2: Update your codebase (assumes you're using git)
git pull origin master

# Step 3: Activate virtual environment
source venv/bin/activate

# Step 4: Install or update dependencies
pip install -r requirements.txt

# Step 5: Install and initialize Tailwind CSS
npm install -D tailwindcss
npx tailwindcss init

# Step 6: Collect static files
python manage.py collectstatic --noinput

# Step 7: Apply database migrations
python manage.py migrate

# Step 8: Restart services
sudo systemctl start gunicorn
sudo systemctl start nginx

# Step 9: Reload Nginx configuration
sudo systemctl reload nginx

# Step 10: Display completion message
echo "Deployment complete!"
