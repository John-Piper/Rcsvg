move_to_index_one <- function(x, input_vector) {

  index <- 1

  for (i in input_vector) {

    if (x == i) {

      break

    } else {

      index <- index + 1

    }

  }

  if (index > length(input_vector)) {

    return(input_vector)

  }

  output_vector <- c(x, input_vector[-index])

}
