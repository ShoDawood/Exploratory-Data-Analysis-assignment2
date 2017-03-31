NEI <- readRDS("~/Exploratory_Data_Analysis/Assignment_2/summarySCC_PM25.rds")
SCC <- readRDS("~/Exploratory_Data_Analysis/Assignment_2/Source_Classification_Code.rds")

NEI_sampling <- NEI[sample(nrow(NEI), size=5000, replace=F), ]
MD <- subset(NEI, fips=='24510')

png(filename='~/Exploratory_Data_Analysis/Assignment_2/plot2.png')

barplot(tapply(X=MD$Emissions, INDEX=MD$year, FUN=sum), 
        main='Total Emission in Baltimore City, MD', 
        xlab='Year', ylab=expression('PM'[2.5]))

dev.off()
