#' Inverse of Matrix Using RcppArmadillo
#'
#' @useDynLib debugpkg
#' @importFrom Rcpp evalCpp
#' @param x Matrix to be inverted
#'
#' @return Inverted matrix
#' @export
#'
#' @examples
#'
#'set.seed(123)
#'X <- crossprod(matrix(rnorm(25),5,5))
#'armainv(X)
#'
armainv <- function(x){
  inv(x)
}

#' Inverse of Symmetric Positive-definite Matrix Using RcppArmadillo
#'
#' @useDynLib debugpkg
#' @importFrom Rcpp evalCpp
#' @param x Matrix to be inverted
#'
#' @return Inverted matrix
#' @export
#'
#' @examples
#'
#'set.seed(123)
#'X <- crossprod(matrix(rnorm(25),5,5))
#'armainv_pd(X)
#'
armainv_pd <- function(x){
  inv_sympd(x)
}