URL_PREFIX=https://raw.githubusercontent.com/johndimm/comic-photos/refs/heads/main/images/

echo "comic_id,area,photo" > comics-images.csv

find ~/projects/comic-photos/images | sed "s#/Users/johndimm/projects/comic-photos/images/##" | grep -E 'jpg|jpeg' | sed -E "s#([^/]*)/#\1,,${URL_PREFIX}\1/#" > tmp-comics-images.csv

cat tmp-comics-images.csv | grep "front.jpeg" >> comics-images.csv
cat tmp-comics-images.csv | grep -v "front.jpeg" >> comics-images.csv

cat comics-images.csv

cp ../marvel/data/v2/comics.csv .
git add images
git commit . -m "more comics" 
git push
