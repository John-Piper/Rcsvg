glue_csv_from_folder <- function(folder_path = "", pattern = "*.csv", sep = ",", header = TRUE, fileEncoding = 'UTF-8-BOM', stringsAsFactors = FALSE) {

  current_wd <- getwd()

  setwd(folder_path)

  file_names <- list.files(pattern = pattern)

  csv_files <- lapply(file_names, function(file_name) {

    read.csv(file_name, sep = sep, header = header, fileEncoding = fileEncoding, stringsAsFactors = stringsAsFactors)

  })

  return_df <- glue_data(csv_files)

  setwd(current_wd)

  return_df

}

