df_headers_ok <- function(df_list, current_df) {

  return_value <- TRUE

  if (length(df_list) != 0) {

    if (!same_df_headers(df_list[[1]], current_df)) {

      return_value <- FALSE

    }

  }

  return_value

}
