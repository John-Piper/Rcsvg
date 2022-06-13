glue_from_folder <- function(folder_path = "",
                             pattern = "*.csv",
                             check_header_names = TRUE,
                             first_file = NA_character_,
                             func=read.csv,
                             ...) {

  current_wd <- getwd()

  setwd(folder_path)

  file_names <- list.files(pattern = pattern)

  if (!is.na(first_file)) {

    file_names <- move_to_index_one(first_file, file_names)

  }

  files <- lapply(file_names, function(file_name) {

    func(file_name, ...)

  })

  return_df <- glue_data(files, check_header_names)

  setwd(current_wd)

  return_df

}

