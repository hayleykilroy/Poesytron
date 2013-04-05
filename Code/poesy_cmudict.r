#load cmudict
cmutxt=read.delim("Source/cmudict.trim.txt", sep="\t", as.is=T, header=F)
cmutxt=data.frame(cmutxt)
#phonemes
#ph=read.table("Source/cmudict.phones.txt")

#extract word
cmutxt$wrd=sub("[ ].*$","",cmutxt$V1)
#exclude alternates
cmutxt=cmutxt[which(grepl("[(]",cmutxt$V1)==F),]
#extract phonemes
cmutxt$ph=sub("^.*[ ]","",cmutxt$V1)
#count syllables by counting numeric (0-9) characters which indicate a stressed phoneme
i=gregexpr("[0|1|2]",cmutxt$V1)
cmutxt$syl=unlist(lapply(i,length))
