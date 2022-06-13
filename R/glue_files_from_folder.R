
glue_from_folder <- function(folder_path = "", pattern = "*.csv", check_header_names = TRUE, func=read.csv, ...) {

  current_wd <- getwd()

  setwd(folder_path)

  file_names <- list.files(pattern = pattern)

  files <- lapply(file_names, function(file_name) {

    func(file_name, ...)

  })

  return_df <- glue_data(files, check_header_names)

  setwd(current_wd)

  return_df

}

