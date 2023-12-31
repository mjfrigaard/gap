% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/golem_utils_ui.R
\name{undisplay}
\alias{undisplay}
\title{Hide or display a tag}
\usage{
undisplay(tag)
}
\arguments{
\item{tag}{the tag}
}
\value{
a tag
}
\description{
Hide or display a tag
}
\examples{
## Hide
a <- shiny::tags$p(src = "plop", "pouet")
undisplay(a)
b <- shiny::actionButton("go_filter", "go")
undisplay(b)
}
