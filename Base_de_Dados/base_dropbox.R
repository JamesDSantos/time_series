ECG <- read.table('https://www.dropbox.com/s/wfm0zk9nkzirahw/ECG.txt?dl=1')
ECG <- ts(ECG[,1])

PIB <- read.csv('https://www.dropbox.com/s/zsoxpzpzqo6reml/PIB_brasil.csv?dl=1', header = TRUE, sep = ";", dec = ",")
PIB <- ts( PIB[,2], start=1967)


