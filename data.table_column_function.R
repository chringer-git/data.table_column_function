library(data.table)

gimme_column <- function(data_dt, col_name) {
  data_dt[, ..col_name]
}

dt <- data.table::data.table(
  "first_column" = seq(1, 26 , by = 1),
  "second_column" = letters,
  "third_column" = LETTERS
)
gimme_column(dt, c("first_column", "third_column"))
