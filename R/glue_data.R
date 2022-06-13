# add argument to skip headers and join by same column size
glue_data <- function(input_data, check_header_names = TRUE) {

  stopifnot(length(input_data) > 0, is.data.frame(input_data[[1]]))

  df_list <- list()

  index <- 1

  input_data_length <- length(input_data)

  while(index <= input_data_length) {

    current_df <- input_data[[index]]

    if (df_headers_ok(df_list, current_df, check_header_names)) {

      df_list[[index]] <- current_df

    }

    index <- index + 1

  }

  merged_df <- merge_all_dfs(df_list)

}
