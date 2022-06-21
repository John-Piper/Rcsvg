library("Rcsvg")

#-----------------------------------------------------------------------------------------------------------------

test_one_csv_location <- "folder_files_for_tests/test_one"


expected_result <- read.csv("folder_files_for_tests/test_one/expected_result/csv_expected_result_one.csv")






test_that("the csv files with the same columns names from the folder path will merge into one dataframe", {

  expect_equal(glue_from_folder(folder_path = test_one_csv_location),
               expected_result)

})
