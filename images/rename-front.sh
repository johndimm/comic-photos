find . -name "front.jpg" > rename-front.txt
python3 rename-front.py > rename-front-cmd.sh
cat rename-front-cmd.sh
chmod a+x *.sh
