def main():
   f = open ('rename-front.txt')
   for r in f:
     r = r.strip()
     newname = r.replace('jpg', 'jpeg')
     print (f'mv "{r}" "{newname}"')

main()
