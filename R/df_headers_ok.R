df_headers_ok <- function(left_df, right_df, check_header_names = TRUE) {

  return_value <- TRUE

  if (is.data.frame(left_df) & is.data.frame(right_df)) {

    if (check_header_names) {

      if (!same_df_headers(left_df, right_df)) {

        return_value <- FALSE

      }

    } else {

      if (ncol(left_df) != ncol(right_df)) {

        return_value <- FALSE

      }

    }

  }

  return_value

}




