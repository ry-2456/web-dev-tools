docker run --rm -it --name node-npm-script -v $(pwd):/home/app -w /home/app -p 3000:3000 -p 3001:3001 node:14 npm run web-related
