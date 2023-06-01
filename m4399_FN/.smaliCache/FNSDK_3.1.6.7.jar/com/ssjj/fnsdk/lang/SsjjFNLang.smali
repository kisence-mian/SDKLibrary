.class public Lcom/ssjj/fnsdk/lang/SsjjFNLang;
.super Ljava/lang/Object;


# static fields
.field public static LANG_EN:Ljava/lang/String;

.field public static LANG_ZH_CN:Ljava/lang/String;

.field public static LANG_ZH_HK:Ljava/lang/String;

.field public static LANG_ZH_TW:Ljava/lang/String;

.field public static MSG_CANCEL:Ljava/lang/String;

.field public static MSG_CLICK_TO_INSTALL:Ljava/lang/String;

.field public static MSG_DOWNLOAD_FINISH:Ljava/lang/String;

.field public static MSG_DOWNLOAD_FINISH_AND_INSTALL:Ljava/lang/String;

.field public static MSG_EXIT:Ljava/lang/String;

.field public static MSG_FORCE_UPDATE:Ljava/lang/String;

.field public static MSG_FOUND_NEW_VERSION:Ljava/lang/String;

.field public static MSG_INSTALL:Ljava/lang/String;

.field public static MSG_INSTALL_NOW:Ljava/lang/String;

.field public static MSG_I_KNOW:Ljava/lang/String;

.field public static MSG_LOGIN_FAIL:Ljava/lang/String;

.field public static MSG_NET_BREAK:Ljava/lang/String;

.field public static MSG_NET_ERROR:Ljava/lang/String;

.field public static MSG_NEW_UPDATE:Ljava/lang/String;

.field public static MSG_NEXT_TIME:Ljava/lang/String;

.field public static MSG_NOT_FOUND_SDCARD:Ljava/lang/String;

.field public static MSG_PLEASE_INSTALL:Ljava/lang/String;

.field public static MSG_UID_IS_INVAILID:Ljava/lang/String;

.field public static MSG_UPDATE:Ljava/lang/String;

.field public static MSG_UPDATING:Ljava/lang/String;

.field public static MSG_UPDATING2:Ljava/lang/String;

.field public static MSG_VERSION_UPDATE:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;

.field public static URL_API:Ljava/lang/String;

.field public static URL_BGPS:[[Ljava/lang/String;

.field public static URL_CFG:Ljava/lang/String;

.field public static URL_CFG2:Ljava/lang/String;

.field public static URL_CHECK:Ljava/lang/String;

.field public static URL_ENTER_GAME:Ljava/lang/String;

.field public static URL_FNAPI:Ljava/lang/String;

.field public static URL_FNAPIS:Ljava/lang/String;

.field public static URL_FNS:Ljava/lang/String;

.field public static URL_FNSS:Ljava/lang/String;

.field public static URL_FXD:Ljava/lang/String;

.field public static URL_FXD_TEST:Ljava/lang/String;

.field public static URL_GET_INVITE:Ljava/lang/String;

.field public static URL_GET_INVITE_TEST:Ljava/lang/String;

.field public static URL_GET_IP:Ljava/lang/String;

.field public static URL_GET_PUZZLE:Ljava/lang/String;

.field public static URL_GET_PUZZLE_TEST:Ljava/lang/String;

.field public static URL_GET_SHARE:Ljava/lang/String;

.field public static URL_GET_SHARE_CFG:Ljava/lang/String;

.field public static URL_GET_SHARE_DATA:Ljava/lang/String;

.field public static URL_GET_SHARE_DATA_TEST:Ljava/lang/String;

.field public static URL_GET_SHARE_PRICE_CFG:Ljava/lang/String;

.field public static URL_INIT_INFO:Ljava/lang/String;

.field public static URL_INIT_SHARE_PRICE:Ljava/lang/String;

.field public static URL_LOG:Ljava/lang/String;

.field public static URL_LON:Ljava/lang/String;

.field public static URL_ORDER:Ljava/lang/String;

.field public static URL_ORDER_SPECIAL:Ljava/lang/String;

.field public static URL_POST_LINK:Ljava/lang/String;

.field public static URL_POST_LINK_TEST:Ljava/lang/String;

.field public static URL_REPOET:Ljava/lang/String;

.field public static URL_ROLE:Ljava/lang/String;

.field public static URL_SHARE:Ljava/lang/String;

.field public static URL_SHARE_STAT:Ljava/lang/String;

.field public static URL_SINGLE_O:Ljava/lang/String;

.field public static URL_TEMPBIND:Ljava/lang/String;

.field public static URL_TEMPLOGIN:Ljava/lang/String;

.field public static URL_UDP:Ljava/lang/String;

.field public static URL_UP:Ljava/lang/String;

.field public static URL_UPDATE:Ljava/lang/String;

.field public static URL_UP_FCODE:Ljava/lang/String;

.field public static enableMulti:Z

.field public static isHW:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "SsjjFNLang"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->LANG_ZH_CN:Ljava/lang/String;

    const-string v0, "SsjjFNLangZH_TW"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->LANG_ZH_TW:Ljava/lang/String;

    const-string v0, "SsjjFNLangZH_HK"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->LANG_ZH_HK:Ljava/lang/String;

    const-string v0, "SsjjFNLangEN"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->LANG_EN:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->isHW:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->enableMulti:Z

    invoke-static {}, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->initInland()V

    invoke-static {}, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->initSubUrl()V

    const/4 v2, 0x2

    new-array v2, v2, [[Ljava/lang/String;

    const-string v3, "Zm5zZGsuNDM5OXN5LmNvbQ=="

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Zm5zZGstYmdwLjQzOTlzeS5jb20="

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Zm5hcGkuNDM5OXN5LmNvbQ=="

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Zm5hcGktYmdwLjQzOTlzeS5jb20="

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    sput-object v2, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_BGPS:[[Ljava/lang/String;

    const-string v0, "\u4e2d\u6587"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->TAG:Ljava/lang/String;

    const-string v0, "\u6709\u6700\u65b0\u7684\u8f6f\u4ef6\u5305\u54e6\uff0c\u4eb2\u5feb\u4e0b\u8f7d\u5427~"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_NEW_UPDATE:Ljava/lang/String;

    const-string v0, "\u4eb2\uff0c\u7531\u4e8e\u6dfb\u52a0\u4e86\u65b0\u7684\u529f\u80fd\uff0c\u9700\u8981\u4e0b\u8f7d\u65b0\u7684\u5305\u624d\u80fd\u4f7f\u7528\u54e6~"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_FORCE_UPDATE:Ljava/lang/String;

    const-string v0, "\u7248\u672c\u66f4\u65b0"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_VERSION_UPDATE:Ljava/lang/String;

    const-string v0, "\u53d1\u73b0\u65b0\u7248\u672c"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_FOUND_NEW_VERSION:Ljava/lang/String;

    const-string v0, "UID\u6709\u8bef"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_UID_IS_INVAILID:Ljava/lang/String;

    const-string v0, "\u6b63\u5728\u66f4\u65b0"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_UPDATING:Ljava/lang/String;

    const-string v0, "\u66f4\u65b0\u4e2d"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_UPDATING2:Ljava/lang/String;

    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_DOWNLOAD_FINISH:Ljava/lang/String;

    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u8bf7\u5b89\u88c5"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_DOWNLOAD_FINISH_AND_INSTALL:Ljava/lang/String;

    const-string v0, "\u7acb\u5373\u5b89\u88c5"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_INSTALL_NOW:Ljava/lang/String;

    const-string v0, "\u60a8\u5df2\u4e0b\u8f7d\u5b8c\u6700\u65b0\u7248\u672c\uff0c\u8bf7\u5b89\u88c5\u3002"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_PLEASE_INSTALL:Ljava/lang/String;

    const-string v0, "\u767b\u5f55\u5931\u8d25"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_LOGIN_FAIL:Ljava/lang/String;

    const-string v0, "\u77e5\u9053\u4e86"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_I_KNOW:Ljava/lang/String;

    const-string v0, "\u4ee5\u540e\u518d\u8bf4"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_NEXT_TIME:Ljava/lang/String;

    const-string v0, "\u5b89\u88c5"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_INSTALL:Ljava/lang/String;

    const-string v0, "\u70b9\u51fb\u5b89\u88c5"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_CLICK_TO_INSTALL:Ljava/lang/String;

    const-string v0, "\u66f4\u65b0"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_UPDATE:Ljava/lang/String;

    const-string v0, "\u9000\u51fa"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_EXIT:Ljava/lang/String;

    const-string v0, "\u53d6\u6d88"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_CANCEL:Ljava/lang/String;

    const-string v0, "\u7f51\u7edc\u94fe\u63a5\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u94fe\u63a5\u7f51\u7edc"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_NET_ERROR:Ljava/lang/String;

    const-string v0, "\u7f51\u7edc\u4e2d\u65ad\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\uff01"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_NET_BREAK:Ljava/lang/String;

    const-string v0, "\u6ca1\u6709\u627e\u5230\u53ef\u7528\u7684\u5b58\u50a8\u5361"

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_NOT_FOUND_SDCARD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    if-nez p0, :cond_5

    move-object p0, v0

    :cond_5
    if-nez p1, :cond_8

    move-object p1, v0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    return-object p1

    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    return-object p0

    :cond_16
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v1, :cond_3b

    if-eqz v2, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    :goto_36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3b
    if-nez v1, :cond_51

    if-nez v2, :cond_51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_36

    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_36
.end method

.method public static initInland()V
    .registers 1

    const-string v0, "aHR0cDovL3VkcGRjcy40Mzk5c3kuY29tLw=="

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_UDP:Ljava/lang/String;

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_SHARE:Ljava/lang/String;

    const-string v0, "aHR0cDovL2Zuc2RrLjQzOTlzeS5jb20v"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNS:Ljava/lang/String;

    const-string v0, "aHR0cHM6Ly9mbnNkay40Mzk5c3kuY29tLw=="

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNSS:Ljava/lang/String;

    const-string v0, "aHR0cDovL2ZuYXBpLjQzOTlzeS5jb20v"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNAPI:Ljava/lang/String;

    const-string v0, "aHR0cHM6Ly9mbmFwaS40Mzk5c3kuY29tLw=="

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNAPIS:Ljava/lang/String;

    const-string v0, "aHR0cHM6Ly9meGRjcy40Mzk5c3kuY29tLw=="

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FXD:Ljava/lang/String;

    const-string v0, "aHR0cDovL3NoYXJlLmRlbW8uNDM5OXN5LmNvbS8="

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FXD_TEST:Ljava/lang/String;

    const-string v0, "aHR0cDovL2FwaS40Mzk5c3kuY29tLw=="

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_API:Ljava/lang/String;

    return-void
.end method

.method public static initSubUrl()V
    .registers 9

    sget-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_UDP:Ljava/lang/String;

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_LOG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_UDP:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "aW5pdF9pbmZvLnBocA=="

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_INIT_INFO:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_SHARE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ZW50ZXJfZ2FtZS5waHA="

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_ENTER_GAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_SHARE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "c2hhcmUucGhw"

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_GET_SHARE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_SHARE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "cGhvdG9fc2hhcmUucGhw"

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_GET_SHARE_CFG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_SHARE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "c2hhcmVfbG9nLnBocA=="

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_SHARE_STAT:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNS:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "c2RrL2FwaS9mbmNmZy5waHA="

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_CFG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNS:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "c2RrL2FwaS9sb2dpbi5waHA="

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_LON:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNS:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "b3JkZXIv"

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_ORDER:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNS:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "b3JkZXIvZm4ucGhw"

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_ORDER_SPECIAL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNS:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "c2RrL2FwaS91cGRhdGUucGhw"

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_UPDATE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNS:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "c2RrL2FwaS90ZW1wbG9naW4ucGhw"

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_TEMPLOGIN:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNS:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "c2RrL2FwaS90ZW1wYmluZC5waHA="

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_TEMPBIND:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNS:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "c2RrL2FwaS91cGxvYWQucGhw"

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_UP:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNS:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "L3BjL2FwaS9yb2xlLnBocA=="

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_ROLE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_API:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "c2VydmljZS91cGxvYWQvY2hlY2s="

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_CHECK:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNS:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "c2RrL2FwaS9pbWFnZV9yZXBvcnQucGhw"

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_REPOET:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNSS:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "c2RrL2FwaS9mbmNmZzIucGhw"

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_CFG2:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNSS:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "c2RrL2FwaS9zaW5nbGVfb3JkZXIucGhw"

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_SINGLE_O:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FXD:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "c2RrL2ludml0ZS8="

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_GET_INVITE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FXD_TEST:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_GET_INVITE_TEST:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FXD:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "c2RrL3B1enpsZS8="

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_GET_PUZZLE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FXD_TEST:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_GET_PUZZLE_TEST:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FXD:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "dW5pdmVyc2FsL2xpbmsv"

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_GET_SHARE_DATA:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FXD_TEST:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_GET_SHARE_DATA_TEST:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FXD:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "c2RrL3NoYXJlcHJpY2UvcGhvdG9pbml0"

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_GET_SHARE_PRICE_CFG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FXD:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "c2RrL3NoYXJlcHJpY2UvaXRlbWluaXQ="

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_INIT_SHARE_PRICE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FXD_TEST:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "bGluaw=="

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_POST_LINK_TEST:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FXD:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_POST_LINK:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_API:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "c2VydmljZS9naWZ0Y29kZS91cGxvYWRfZmNvZGU="

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_UP_FCODE:Ljava/lang/String;

    const-string v0, "aHR0cDovL2Zuc2RrLjQzOTllbi5jb20vdG9vbC9sb2NhdGlvbi5waHA="

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_GET_IP:Ljava/lang/String;

    sget-boolean v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->enableMulti:Z

    if-eqz v0, :cond_35f

    sget-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNAPI:Ljava/lang/String;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_CFG:Ljava/lang/String;

    sget-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNAPI:Ljava/lang/String;

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_CFG2:Ljava/lang/String;

    sget-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNAPI:Ljava/lang/String;

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_UPDATE:Ljava/lang/String;

    sget-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNAPI:Ljava/lang/String;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_LON:Ljava/lang/String;

    sget-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNAPI:Ljava/lang/String;

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_UP:Ljava/lang/String;

    sget-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_FNAPI:Ljava/lang/String;

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_ROLE:Ljava/lang/String;

    :cond_35f
    return-void
.end method

.method public static setLang(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ssjj/fnsdk/lang/SsjjFNLang;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLang: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_19
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;

    invoke-static {}, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->initSubUrl()V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->afterInit()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    :goto_32
    return-void
.end method

.method public static setLang(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.ssjj.fnsdk.lang."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setLang: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :try_start_21
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;

    invoke-static {}, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->initSubUrl()V

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->afterInit()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3a} :catch_3b

    goto :goto_50

    :catch_3b
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not found "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    return-void
.end method


# virtual methods
.method public afterInit()V
    .registers 1

    return-void
.end method
