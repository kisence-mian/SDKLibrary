.class public Lcom/tds/common/tracker/model/LoginModel;
.super Ljava/lang/Object;
.source "LoginModel.java"

# interfaces
.implements Lcom/tds/common/tracker/model/BaseTrackModel;


# static fields
.field public static final PARAM_LOGIN_ACTION:Ljava/lang/String; = "login_action"

.field public static final PARAM_LOGIN_ERROR_CODE:Ljava/lang/String; = "login_error_code"

.field public static final PARAM_LOGIN_ERROR_MSG:Ljava/lang/String; = "login_error_msg"

.field public static final PARAM_LOGIN_SESSION_ID:Ljava/lang/String; = "login_session_id"

.field public static final PARAM_LOGIN_TYPE:Ljava/lang/String; = "login_type"


# instance fields
.field private loginAction:Ljava/lang/String;

.field private loginErrorCode:Ljava/lang/String;

.field private loginErrorMsg:Ljava/lang/String;

.field private loginSessionId:Ljava/lang/String;

.field private loginType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tds/common/tracker/model/LoginModel;->loginSessionId:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/tds/common/tracker/model/LoginModel;->loginAction:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/tds/common/tracker/model/LoginModel;->loginType:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/tds/common/tracker/model/LoginModel;->loginErrorCode:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/tds/common/tracker/model/LoginModel;->loginErrorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public convert()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/tds/common/tracker/model/LoginModel;->loginSessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 61
    iget-object v0, p0, Lcom/tds/common/tracker/model/LoginModel;->loginAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/tds/common/tracker/model/LoginModel;->loginSessionId:Ljava/lang/String;

    const-string v2, "login_session_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/tds/common/tracker/model/LoginModel;->loginAction:Ljava/lang/String;

    const-string v2, "login_action"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/tds/common/tracker/model/LoginModel;->loginType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/tds/common/tracker/model/LoginModel;->loginType:Ljava/lang/String;

    const-string v2, "login_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_32
    iget-object v1, p0, Lcom/tds/common/tracker/model/LoginModel;->loginErrorCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, p0, Lcom/tds/common/tracker/model/LoginModel;->loginErrorCode:Ljava/lang/String;

    const-string v2, "login_error_code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_41
    iget-object v1, p0, Lcom/tds/common/tracker/model/LoginModel;->loginErrorMsg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/tds/common/tracker/model/LoginModel;->loginErrorMsg:Ljava/lang/String;

    const-string v2, "login_error_msg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_50
    return-object v0

    .line 61
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_51
    new-instance v0, Lcom/tds/common/tracker/exceptions/ModelConvertException;

    const-string v1, "login model param login_action empty"

    invoke-direct {v0, v1}, Lcom/tds/common/tracker/exceptions/ModelConvertException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_59
    new-instance v0, Lcom/tds/common/tracker/exceptions/ModelConvertException;

    const-string v1, "login model param session_id empty"

    invoke-direct {v0, v1}, Lcom/tds/common/tracker/exceptions/ModelConvertException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withLoginAction(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;
    .registers 2
    .param p1, "action"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/tds/common/tracker/model/LoginModel;->loginAction:Ljava/lang/String;

    .line 40
    return-object p0
.end method

.method public withLoginErrorCode(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;
    .registers 2
    .param p1, "errorCode"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/tds/common/tracker/model/LoginModel;->loginErrorCode:Ljava/lang/String;

    .line 50
    return-object p0
.end method

.method public withLoginErrorMsg(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;
    .registers 2
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/tds/common/tracker/model/LoginModel;->loginErrorMsg:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public withLoginSessionId(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;
    .registers 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/tds/common/tracker/model/LoginModel;->loginSessionId:Ljava/lang/String;

    .line 35
    return-object p0
.end method

.method public withLoginType(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;
    .registers 2
    .param p1, "loginType"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/tds/common/tracker/model/LoginModel;->loginType:Ljava/lang/String;

    .line 45
    return-object p0
.end method
