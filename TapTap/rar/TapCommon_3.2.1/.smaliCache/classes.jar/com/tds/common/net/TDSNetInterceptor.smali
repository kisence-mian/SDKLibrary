.class public Lcom/tds/common/net/TDSNetInterceptor;
.super Ljava/lang/Object;
.source "TDSNetInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/net/TDSNetInterceptor$CheckAuthCallback;,
        Lcom/tds/common/net/TDSNetInterceptor$Holder;
    }
.end annotation


# instance fields
.field private errorHandlerList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tds/common/net/error/ErrorHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/common/net/TDSNetInterceptor$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/tds/common/net/TDSNetInterceptor$1;

    .line 12
    invoke-direct {p0}, Lcom/tds/common/net/TDSNetInterceptor;-><init>()V

    return-void
.end method

.method public static varargs checkAuthError(Ljava/lang/String;Lcom/tds/common/net/TDSNetInterceptor$CheckAuthCallback;[Ljava/lang/String;)V
    .registers 11
    .param p0, "jsonString"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/tds/common/net/TDSNetInterceptor$CheckAuthCallback;
    .param p2, "errorList"    # [Ljava/lang/String;

    .line 59
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 61
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 62
    .local v1, "dataObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_3c

    .line 63
    const-string v3, "error"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "error":Ljava/lang/String;
    array-length v4, p2

    :goto_1d
    if-ge v2, v4, :cond_3c

    aget-object v5, p2, v2

    .line 65
    .local v5, "tagError":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 66
    if-eqz p1, :cond_3c

    .line 67
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/tds/common/net/TDSNetInterceptor$CheckAuthCallback;->onAuthError(Ljava/lang/String;)V
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_38} :catch_3d

    goto :goto_3c

    .line 64
    .end local v5    # "tagError":Ljava/lang/String;
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 76
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "dataObject":Lorg/json/JSONObject;
    .end local v3    # "error":Ljava/lang/String;
    :cond_3c
    :goto_3c
    goto :goto_41

    .line 74
    :catch_3d
    move-exception v0

    .line 75
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 77
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_41
    return-void
.end method

.method public static checkAuthErrorAccessDenied(Ljava/lang/String;Lcom/tds/common/net/TDSNetInterceptor$CheckAuthCallback;)V
    .registers 3
    .param p0, "jsonString"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/tds/common/net/TDSNetInterceptor$CheckAuthCallback;

    .line 54
    const-string v0, "access_denied"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/tds/common/net/TDSNetInterceptor;->checkAuthError(Ljava/lang/String;Lcom/tds/common/net/TDSNetInterceptor$CheckAuthCallback;[Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private static getErrorHandlerList()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tds/common/net/error/ErrorHandler;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/tds/common/net/TDSNetInterceptor;->getInstance()Lcom/tds/common/net/TDSNetInterceptor;

    move-result-object v0

    iget-object v0, v0, Lcom/tds/common/net/TDSNetInterceptor;->errorHandlerList:Ljava/util/HashMap;

    if-nez v0, :cond_13

    .line 48
    invoke-static {}, Lcom/tds/common/net/TDSNetInterceptor;->getInstance()Lcom/tds/common/net/TDSNetInterceptor;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tds/common/net/TDSNetInterceptor;->errorHandlerList:Ljava/util/HashMap;

    .line 50
    :cond_13
    invoke-static {}, Lcom/tds/common/net/TDSNetInterceptor;->getInstance()Lcom/tds/common/net/TDSNetInterceptor;

    move-result-object v0

    iget-object v0, v0, Lcom/tds/common/net/TDSNetInterceptor;->errorHandlerList:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance()Lcom/tds/common/net/TDSNetInterceptor;
    .registers 1

    .line 23
    # getter for: Lcom/tds/common/net/TDSNetInterceptor$Holder;->INSTANCE:Lcom/tds/common/net/TDSNetInterceptor;
    invoke-static {}, Lcom/tds/common/net/TDSNetInterceptor$Holder;->access$100()Lcom/tds/common/net/TDSNetInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public static interceptWithContent(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "statusCode"    # I
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "responseBody"    # Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/tds/common/net/TDSNetInterceptor;->getErrorHandlerList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 40
    invoke-static {}, Lcom/tds/common/net/TDSNetInterceptor;->getErrorHandlerList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/net/error/ErrorHandler;

    .line 41
    .local v1, "handler":Lcom/tds/common/net/error/ErrorHandler;
    invoke-interface {v1, p0, p1, p2}, Lcom/tds/common/net/error/ErrorHandler;->invoke(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    .end local v1    # "handler":Lcom/tds/common/net/error/ErrorHandler;
    goto :goto_16

    .line 44
    :cond_26
    return-void
.end method

.method public static registerNetInterceptor(Ljava/lang/String;Lcom/tds/common/net/error/ErrorHandler;)V
    .registers 3
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/tds/common/net/error/ErrorHandler;

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p1, :cond_f

    .line 30
    invoke-static {}, Lcom/tds/common/net/TDSNetInterceptor;->getErrorHandlerList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_f
    return-void
.end method

.method public static unRegisterNetInterceptor(Ljava/lang/String;)V
    .registers 2
    .param p0, "from"    # Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/tds/common/net/TDSNetInterceptor;->getErrorHandlerList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method
