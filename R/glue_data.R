# add argument to skip headers and join by same column size
glue_data <- function(input_data, check_header_names = TRUE) {

  stopifnot(length(input_data) > 0, is.data.frame(input_data[[1]]))

  first_df <- input_data[[1]]

  df_list <- list(first_df)

  iteration <- 2

  input_data_length <- length(input_data)

  while(iteration <= input_data_length) {

    current_df <- input_data[[iteration]]

    if (df_headers_ok(first_df, current_df, check_header_names)) {

      index <- length(df_list)

      df_list[[index + 1]] <- current_df

    }

    iteration <- iteration + 1

  }

  df_list <- set_df_colnames(df_list, names(first_df))

  merged_df <- merge_all_dfs(df_list)

}
