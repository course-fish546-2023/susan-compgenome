#EXTRACTING FILES FROM FOLDER

#FOLDER IS THE "agenome-ncbi


install.packages("airspaceR")
library(airspaceR)

data <- read.faa("../agenome-ncbi_dataset/ncbi-dataset/data/GCF_900177485.1/protein.faa")


#Protein files are different: 
#1.
#2.GCF_028230015.1
#3.GCF_028230015.1
#4.GCF_028229605.1
#5.GCF_028229535.1
#6.GCF_028221145.1
#7.
#8.
#9.
#10.
# Set the path to the directory containing the files to extract
source_dir <- "../agenome-project/data"


# Set the path to the directory where the extracted files will be placed
destination_dir <- "../agenome-project/data-intermediate"

# Extract all files from the source directory and its subdirectories
files_to_move <- list.files(source_dir, recursive = TRUE, full.names = TRUE)

# Create the destination directory if it doesn't already exist
if (!dir.exists(destination_dir)) {
  dir.create(destination_dir)
}

# Move the extracted files to the destination directory
file.copy(files_to_move, destination_dir, recursive = TRUE)
