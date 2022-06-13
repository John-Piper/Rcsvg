df_headers_ok <- function(df_list, current_df, check_header_names = TRUE) {

  return_value <- TRUE

  if (length(df_list) != 0) {

    if (check_header_names) {

      if (!same_df_headers(df_list[[1]], current_df)) {

        return_value <- FALSE

      }

    } else {

      if (ncol(df_list[[1]]) != ncol(current_df)) {

        return_value <- FALSE

      }

    }

  }

  return_value

}




