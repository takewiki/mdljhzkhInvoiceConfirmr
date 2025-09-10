#' #' 开票申请
#' #'
#' #' @param statementNo 第二个参数
#' #'
#' #' @return 两个数的和
#' #' @export
#' #'
#' #' @examples
#' #' InvoiceApply
#' InvoiceApply <- function(statementNo) {
#'   clientId = "A775726"
#'   clientSecret = "1qaz3edc"
#'   username = "M2_JaourHotMeltA"
#'   password = "ef73781effc5774100f87fe2f437a435"
#'   
#'   res=try({
#'     mdl =  tsda::import('pyzkh.invoice')
#'     app = mdl$Invoice(clientId=clientId,
#'                     clientSecret=clientSecret,
#'                     userName=username,password=password,env="prd",debug=0)
#'     app$apply(statementNo='202508280001')
#'   })
#'   
#'   
#'   
#'   return(res)
#'   
#' }

#' #' 开票查询
#' #'
#' #' @param statementNo 第二个参数
#' #'
#' #' @return 两个数的和
#' #' @export
#' #'
#' #' @examples
#' #' InvoiceQuery
#' InvoiceQuery <- function(statementNo) {
#'   clientId = "A775726"
#'   # clientId = "A775726"
#'   clientSecret = "1qaz3edc"
#'   username = "M2_JaourHotMeltA"
#'   password = "ef73781effc5774100f87fe2f437a435"
#'   res=try({
#'     mdl =  tsda::import('pyzkh.invoice')
#'     app = mdl$Invoice(clientId=clientId,
#'                     clientSecret=clientSecret,
#'                     userName=username,password=password,env="prd",debug=0)
#'     res =app$query(statementNo='",statementNo,"')
#'   })
#'   
#'   
#'   return(res)
#'   
#}
