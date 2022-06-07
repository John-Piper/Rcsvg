glue_files_from_folder <- function(folder_path, pattern = "") {

  setwd(folder_path)

  file_names <- list.files(pattern = pattern)

  df_list <- list()

  for (file_name in file_names) {

    current_df <- read.csv(file_name, fileEncoding = 'UTF-8-BOM')

    if (df_headers_ok(df_list, current_df)) {

      df_list[[file_name]] <- current_df

    }

  }

  merged_df <- merge_all_dfs(df_list)

}
