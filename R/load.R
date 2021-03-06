

#' Load NLA data into current R session
#'
#' @return list
#' @export
#' @param year numeric choice of 2007 or 2012.
#' @param use_rappdirs logical write files to operating system data directories at the location returned by \code{\link[rappdirs]{user_data_dir}}.
#' @param source_folder optional custom file.path to data directory
#'
#' @examples \donttest{
#' source_folder <- nla_get(2012)
#' dt <- nla_load(2012, source_folder = source_folder)
#' }
nla_load <- function(year, use_rappdirs = FALSE, source_folder = NA){
  valid_year(year)

  if(!is.na(source_folder) & !use_rappdirs){
    readRDS(file.path(source_folder, paste0("data_", year, ".rds")))
  }else{
    tryCatch(
      readRDS(file.path(nla_path(), paste0("data_", year, ".rds"))),
        error = function(e){
stop("Data not found. Try specifing a source_folder or pull the data using nla_get.")})
  }
}
