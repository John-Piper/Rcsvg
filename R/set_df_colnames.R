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

