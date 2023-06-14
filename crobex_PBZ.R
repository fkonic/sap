CROBEXtr <- read.xlsx("../data/CROBEXtr.xlsx", detectDates = T)
CROBEXtr = CROBEXtr[, -c(2, 3, 4, 6, 7)]

names(CROBEXtr) <- c("datum", "vrijednost")
CROBEXtr$datum <- ymd(CROBEXtr$datum)

head(CROBEXtr)

PBZA <- read.table("../data/PBZCO OMF A.txt", sep="", header = TRUE)
PBZC <- read.table("../data/PBZCO OMF C.txt", sep="", header = TRUE)

PBZA <- PBZA[, -c(2, 3)]
PBZC <- PBZC[, -c(2, 3)]

names(PBZA) <- c("datum", "vrijednost")
names(PBZC) <- c("datum", "vrijednost")

PBZA$datum <- dmy(PBZA$datum)
PBZC$datum <- dmy(PBZC$datum)

head(PBZA)
head(PBZC)