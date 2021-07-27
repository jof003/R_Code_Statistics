# Save Data =========================================
#saving data
#new CSV
write.csv(gssdata, file="gssdata.csv", row.names = F)

#RData
save(gssdata, file="gssdata.RData")
