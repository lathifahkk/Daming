#Membuat data frame 
bulan <- c("April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", 
           "November", "Desember")
konfirmasi <- c(951, 4829, 12099, 22070, 33524, 43725, 52446, 61864, 84133)
meninggal <- c(100, 412, 928, 1711, 2370, 3192, 3768, 4407, 5827)
data_covid <- data.frame(bulan, konfirmasi, meninggal)
data_covid

#Export data frame ke dalam file data1.csv
write.csv(data_covid, "data1.csv", row.names = F)

#Membuat Histogram 
#Menggunakan data frame covid gabungan
names(data_covid) <- c("bulan","konfirmasi", "meninggal")
data_covid$bulan <- NULL
barplot(as.matrix(data_covid), main = "Data Covid-19 di Jawa Timur Tahun 2020", 
        ylab = "jumlah", beside = TRUE, col = rainbow(9))
legend("topleft", c("April", "Mei", "Juni", "Juli", "Agustus", "September", 
                    "Oktober", "November", "Desember"),
       cex = 0.6, bty = "n", fill=rainbow(9))
