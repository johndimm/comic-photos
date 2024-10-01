
URL_PREFIX=https://raw.githubusercontent.com/johndimm/comic-photos/refs/heads/main/images/

echo "comic_id,area,photo" > comics-images.csv

find ~/projects/comic-photos/images | sed "s#/Users/johndimm/projects/comic-photos/images/##" | grep -E 'jpg|jpeg' | sed -E "s#([^/]*)/#\1,,${URL_PREFIX}\1/#" >> comics-images.csv

cat comics-images.csv
