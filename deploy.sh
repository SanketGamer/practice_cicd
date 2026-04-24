cat > /home/ubuntu/deploy.sh << 'EOF'
#!/bin/bash
set -e

cd /home/ubuntu/practice_cicd/my-app

git pull origin main
npm install
npm run build
pm2 restart practice-cicd
EOF

chmod +x /home/ubuntu/deploy.sh