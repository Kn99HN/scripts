#! usr/bin/env bash

# Basic script for deploying on DO. Not recommended to use pm2 with typescript
# but my usage is small enough that this should be fine for NOW!
cd ~/$1/backend && pm2 reload app.ts --watch
cd ~/$1/frontend && yarn build && sudo cp -r build/* /var/www/$2/html && sudo systemctl restart nginx
