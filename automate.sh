#!/bin/bash
curl https://getbootstrap.com/docs/5.3/examples/cover/ > index.html; 
curl https://getbootstrap.com/docs/5.3/examples/cover/cover.css > cover.css; 

mkdir -p ./assets/img/favicons; 
curl https://getbootstrap.com/docs/5.3/assets/img/favicons/apple-touch-icon.png > ./assets/img/favicons/apple-touch-icon.png; 
curl https://getbootstrap.com/docs/5.3/assets/img/favicons/favicon-32x32.png > ./assets/img/favicons/favicon-32x32.png; 
curl https://getbootstrap.com/docs/5.3/assets/img/favicons/favicon-16x16.png > ./assets/img/favicons/favicon-16x16.png; 
curl https://getbootstrap.com/docs/5.3/assets/img/favicons/manifest.json > ./assets/img/favicons/manifest.json; 
curl https://getbootstrap.com/docs/5.3/assets/img/favicons/safari-pinned-tab.svg > ./assets/img/favicons/safari-pinned-tab.svg; 

sed 's/\/docs\/5\.3\/dist\/css\/bootstrap\.min\.css/https\:\/\/cdn\.jsdelivr\.net\/npm\/bootstrap\@5\.3\.0\-alpha1\/dist\/css\/bootstrap\.min\.css/' index.html > new_index.html && sed 's/\/docs\/5\.3\/assets/assets/g' new_index.html > index.html && rm new_index.html; 

echo -e "\n\nlet's take a 5 second break just because we can :-)\n\n"; 
sleep 5s; echo -e 'break time over... Enjoy!\n'; open index.html