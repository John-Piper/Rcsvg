#' Updates the column names to all the data frames in the list to the same names entered into the function
#'
#' Helper function for glue_data
#'
#' @param df_list List data.frame
#' @param df_col_names character vector.  Character vector of names to rename all the data frames in the data frame list.
#'
#' @return data.frame
#'
#' @noRd
set_df_colnames <- function(df_list, df_col_names) {

  index <- 1

  total_num_df <- length(df_list)

  while (index <= total_num_df) {

    if (ncol(df_list[[index]]) != length(df_col_names)) {

      stop("`df_list[index]` should have the same number of columns as `length(df_col_names)`", .call = FALSE)

    }

    names(df_list[[index]]) <- df_col_names

    index <- index + 1

  }

  df_list

}
