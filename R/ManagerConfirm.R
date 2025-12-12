#' 整单确认
#'
#' @param statementNo 第二个参数
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' ChecknoteConfirm
ChecknoteConfirm <- function(statementNo) {
  clientId = "A775726"
  # clientId = "A775726"
  clientSecret = "1qaz3edc"
  username = "M2_JaourHotMeltA"
  password = "ef73781effc5774100f87fe2f437a435"
  res=try({
    mdl =  tsda::import('pyzkh.checkNote')
    app = mdl$CheckNote(clientId=clientId,
                      clientSecret=clientSecret,
                      userName=username,password=password,env="prd",debug=0)
    res =app$conform(statementNo='",statementNo,"')
  })
  
  
  return(res)
  
}

#' 开票申请
#'
#' @param statementNo 第二个参数
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' ChecknoteInvoice
ChecknoteInvoice <- function(statementNo) {
  clientId = "A775726"
  # clientId = "A775726"
  clientSecret = "1qaz3edc"
  username = "M2_JaourHotMeltA"
  password = "ef73781effc5774100f87fe2f437a435"
  res=try({
    mdl =  tsda::import('pyzkh.invoice')
    app = mdl$Invoice(clientId=clientId,
                        clientSecret=clientSecret,
                        userName=username,password=password,env="prd",debug=0)
    res =app$apply(statementNo='",statementNo,"')
  })
  
  
  return(res)
  
}


#' 对账单删除
#'
#' @param statementNo 第二个参数
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' ChecknotedeleteMessage
ChecknotedeleteMessage <- function(statementID) {
  clientId = "A775726"
  # clientId = "A775726"
  clientSecret = "1qaz3edc"
  username = "M2_JaourHotMeltA"
  password = "ef73781effc5774100f87fe2f437a435"
  res=try({
    mdl =  tsda::import('pyzkh.checkNote')
    app = mdl$CheckNote(clientId=clientId,
                        clientSecret=clientSecret,
                        userName=username,password=password,env="prd",debug=0)
    res =app$deleteMessage(id='",statementID,"')
  })
  
  
  return(res)
  
}

