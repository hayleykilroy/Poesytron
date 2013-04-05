########### random haiku generation ##############

line1=0
line2=0
line3=0

haiku1=""
haiku2=""
haiku3=""

while (line1!=5) {
  x=sample(1:nrow(cmutxt), size=1)
	xsyll=cmutxt$syl[x]
	xword=cmutxt$wrd[x]
		if(line1+xsyll<=5){
			line1=line1+xsyll
			haiku1=paste(haiku1, xword, sep=" ")
		}
	}

while (line2!=7) {
	 x=sample(1:nrow(cmutxt), size=1)
  xsyll=cmutxt$syl[x]
	xword=cmutxt$wrd[x]
		if(line2+xsyll<=7){
			line2=line2+xsyll
			haiku2=paste(haiku2, xword, sep=" ")
		}
	}

while (line3!=5) {
 x=sample(1:nrow(cmutxt), size=1)
  xsyll=cmutxt$syl[x]
	xword=cmutxt$wrd[x]
		if(line3+xsyll<=5){
			line3=line3+xsyll
			haiku3=paste(haiku3, xword, sep=" ")
		}
	}

print(haiku1)
print(haiku2)
print(haiku3)