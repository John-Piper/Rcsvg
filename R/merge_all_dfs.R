merge_all_dfs <- function(df_list) {

  final_df <- do.call(rbind.data.frame, df_list)

  rownames(final_df) <- NULL

  final_df

}
