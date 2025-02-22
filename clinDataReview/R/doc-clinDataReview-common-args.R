#' Common arguments for the functions of the clinDataReview package
#' @param data Data.frame with data.
#' @param verbose Logical, if TRUE (FALSE by default) progress messages are printed
#' in the current console.
#' For the visualizations, progress messages during download
#' of subject-specific report are displayed in the browser console.
#' @param gg \code{\link[ggplot2]{ggplot}} object.
#' @param xVar String with column of \code{data} containing x-variable.
#' @param yVar String with column of \code{data} containing y-variable.
#' @param xLab String with label for \code{xVar}.
#' @param yLab String with label for \code{xVar}.
#' @param xLim,yLim Numeric vector of length 2 with limits for the x/y axes.
#' @param idVar String with variable containing subject ID.
#' @param idLab String with label for \code{idVar}.
#' @param width Numeric, width of the plot in pixels,
#' 700 by default.
#' @param height Numeric, height of the plot in pixels,
#' 700 by default.
#' @param facetPars List with facetting parameters, 
#' passed to the facetting function. Variables should be specified
#' as character or formula.
#' For 'wrap' facetting (\code{facetType} is 'wrap'), if the layout
#' is not specified via \code{nrow}/\code{ncol}, 2 columns
#' are used by default.
#' @param lineVars List with parameters for the reference lines.
#' @param hoverVars Character vector with variable(s) to be displayed in the hover,
#' by default any position and aesthetic variables displayed in the plot.
#' @param hoverLab Named character vector with labels for \code{hoverVars}.
#' @param pathExpand Logical, should the variable in \code{pathExpand}
#' be included in a collapsible row or as hyperlink in the table?
#' Should be TRUE for if multiple paths are included for each \code{idVar},
#' FALSE otherwise (by default).
#' @param table Logical, if TRUE (FALSE by default)
#' returns also a \code{datatable} containing the plot data.
#' The plot and table are linked when included in a Rmarkdown document: 
#' when clicking on an plot element,
#' only the corresponding records are retained in the associated table;
#' when some records are selected in the table, they are highlighted in the 
#' associated table.
#' @param refLinePars (optional) Nested list, with parameters for each reference line(s).
#' Each sublist (a.k.a reference line) contains:
#' \itemize{
#' \item{aesthetic value(s) or variable(s) for the lines
#' (in this case column names of \code{data}) for reference lines.
#' The line position is controlled by the aesthetics supported in
#' \code{\link[ggplot2]{geom_vline}}, \code{\link[ggplot2]{geom_hline}} 
#' and \code{\link[ggplot2]{geom_abline}}.
#' }
#' \item{'label': }{(optional) Logical specifying if the line
#' should be annotated (\code{FALSE} to not annotate the line)
#' or string with annotation label. By default, the value
#' of the position of the horizontal/vertical line or the equation
#' of the diagonal line is displayed.
#' }
#' }
#' @param labelVars Named character vector containing variable labels.
#' @param id String with general id for the plot:
#' \itemize{
#' \item{'id' is used as \code{group} for the \code{\link[crosstalk]{SharedData}}}
#' \item{'button:[id]' is used as button ID if \code{table} is TRUE}
#' }
#' If not specified, a random id, as 'plotClinData[X]' is used.
#' @param title String with title for the plot.
#' @param titleExtra String with extra title for the plot (appended after \code{title}).
#' @param caption String with caption. \cr
#' The caption is included at the bottom right of the plot.
#' Please note that this might overlap with 
#' vertical or rotated x-axis labels.
#' @param subtitle String with subtitle.\cr
#' The subtitle is included at the top left of the plot,
#' below the title.
#' @param colorVar (optional) String with color variable.
#' @param colorLab String with label for \code{colorVar}.
#' @param colorPalette (optional) Named character vector with color palette.
#' If not specified, the viridis color palette is used.\cr
#' See \code{\link[clinUtils]{clinColors}}.
#' @name clinDataReview-common-args
#' @return No return value, used for the documentation of 
#' the functions of the package.
NULL
