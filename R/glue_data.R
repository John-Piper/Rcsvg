#' Glues a list of data.frames into one data.frame if the they have the same headers or column size as the first data.frame
#'
#' @param input_data List data.frame
#' @param check_header_names logical. True to Check the files are the same by column names or False for number of columns
#'
#' @return data.frame
#'
#' @examples
#'
#' \donttest{
#'
#' df_1 <- data.frame(a = c(1,2,3,4))
#' df_2 <- data.frame(a = c(5,6,7,8))
#' df_3 <- data.frame(b = c(9,10,11,12))
#'
#' df_list <- list(df_1, df_2, df_3)
#'
#' final_df_one <- glue_data(df_list)
#' # data.frame(a = c(1,2,3,4,5,6,7,8))
#'
#' final_df_two <- glue_data(df_list, check_header_names = FALSE)
#' # data.frame(a = c(1,2,3,4,5,6,7,8,9,10,11,12))
#'
#' }
#' @export
glue_data <- function(input_data, check_header_names = TRUE) {

  stopifnot(length(input_data) > 0, is.data.frame(input_data[[1]]))

  first_df <- input_data[[1]]

  df_list <- list(first_df)

  iteration <- 2

  input_data_length <- length(input_data)

  while(iteration <= input_data_length) {

    current_df <- input_data[[iteration]]

    if (df_headers_ok(first_df, current_df, check_header_names)) {

      index <- length(df_list) + 1

      df_list[[index]] <- current_df

    }

    iteration <- iteration + 1

  }

  df_list <- set_df_colnames(df_list, names(first_df))

  merged_df <- merge_all_dfs(df_list)

}
