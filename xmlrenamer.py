import os,glob,sys,re
folder=sys.argv[1]
os.chdir(folder)
pattern = re.compile("^.*<eadid.*>(.*?)</eadid>.*$",re.DOTALL|re.MULTILINE|re.IGNORECASE)
for files in glob.glob("*.xml"):
    data=open(files).read()
    if pattern.search(data):
        newfilename = pattern.findall(data)[0] #get the new file name
        try:
            os.rename(files,newfilename+".xml")
        except Exception,e:
            print e
        else:
            print "%s renamed to %s.xml" %(files,newfilename)