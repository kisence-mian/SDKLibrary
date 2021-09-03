.class final Lcom/taptap/sdk/k$a;
.super Ljava/lang/Object;
.source "TokenValidChecker.java"

# interfaces
.implements Lcom/taptap/sdk/net/Api$ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/k;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/net/Api$ApiCallback<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 4
    :try_start_8
    new-instance v0, Lcom/taptap/sdk/AccessToken;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/taptap/sdk/AccessToken;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/taptap/sdk/AccessToken;->setCurrentToken(Lcom/taptap/sdk/AccessToken;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_2e

    :catch_15
    move-exception p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenValidChecker onSuccess callback method:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TokenValidChecker"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_2e
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/taptap/sdk/exceptions/ServerError;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 3
    const-string v0, "invalid_grant"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taptap/sdk/IscTapLoginService;->checkLoginError(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/k$a;->a(Lorg/json/JSONObject;)V

    return-void
.end method
