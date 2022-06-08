glue_data <- function(input_data) {

  df_list <- list()

  index <- 1

  input_data_length <- length(input_data)

  while(index < input_data_length) {

    current_df <- input_data[[index]]

    if (df_headers_ok(df_list, current_df)) {

      df_list[[index]] <- current_df

    }

    index <- index + 1

  }

  merged_df <- merge_all_dfs(df_list)

}
