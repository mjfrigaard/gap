#' Inverted versions of in, is.null and is.na
#'
#' @export
#'
#' @rdname not_in
#'
#' @examples
#' 1 %not_in% 1:10
#'
'%not_in%' <- function(x, y) {
  return( !(x %in% y) )
}

#' Inverted versions of is.null
#'
#' @rdname not_null
#'
#' @export
not_null <- function(x) {
  !is.null(x)
}

#' Inverted versions of in is.na
#' @export
#'
#' @rdname not_na
#'
not_na <- function(x) {
  !is.na(x)
}
#' Removes the null from a vector
#'
#' @export
#'
#' @rdname drop_nulls
#'
#' @examples
#' drop_nulls(list(1, NULL, 2))
drop_nulls <- function(x) {
  x[!sapply(x, is.null)]
}

#' If x is `NULL`, return y, otherwise return x
#'
#' @param x,y Two elements to test, one potentially `NULL`
#'
#' @export
#'
#' @rdname if_x_NULL_y
#'
#' @name if_x_NULL_y
#'
#' @title \%\|\|\%
#'
#' @examples
#' NULL %||% 1
"%||%" <- function(x, y) {
  if (is.null(x)) {
    y
  } else {
    x
  }
}

#' If x is `NA`, return y, otherwise return x
#'
#' @param x,y Two elements to test, one potentially `NA`
#'
#' @rdname if_x_NA_y
#'
#' @name if_x_NA_y
#'
#' @export
#'
#' @examples
#' NA %|NA|% 1
"%|NA|%" <- function(x, y) {
  if (is.na(x)) {
    y
  } else {
    x
  }
}

#' Typing reactiveValues is too long
#'
#' @importFrom shiny reactiveValues
#' @inheritParams shiny::reactiveValues
#'
#' @export
#'
rv <- function(...) shiny::reactiveValues(...)

#' Typing reactiveValuesToList is too long
#'
#' @importFrom shiny reactiveValuesToList
#' @inheritParams shiny::reactiveValuesToList
#'
#' @export
#'
rvtl <- function(...) shiny::reactiveValuesToList(...)
