.class Lcom/taptap/sdk/j$a;
.super Ljava/lang/Object;
.source "TestQualificationModel.java"

# interfaces
.implements Lcom/taptap/sdk/net/Api$ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/j;->a(Lcom/taptap/sdk/net/Api$ApiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic a:Lcom/taptap/sdk/net/Api$ApiCallback;

.field final synthetic b:Lcom/taptap/sdk/j;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/j;Lcom/taptap/sdk/net/Api$ApiCallback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/j$a;->b:Lcom/taptap/sdk/j;

    iput-object p2, p0, Lcom/taptap/sdk/j$a;->a:Lcom/taptap/sdk/net/Api$ApiCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/c;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_2f

    .line 2
    const-string v0, "success"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 4
    const-string v0, "in_test"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 5
    iget-object v1, p0, Lcom/taptap/sdk/j$a;->a:Lcom/taptap/sdk/net/Api$ApiCallback;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/taptap/sdk/net/Api$ApiCallback;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_2f
    iget-object p1, p0, Lcom/taptap/sdk/j$a;->a:Lcom/taptap/sdk/net/Api$ApiCallback;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcom/taptap/sdk/net/Api$ApiCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/taptap/sdk/exceptions/ServerError;

    const-string v1, "get testQualification error"

    if-eqz v0, :cond_61

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v2, "access_denied"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 4
    invoke-static {}, Lcom/taptap/sdk/d;->a()Lcom/taptap/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/d;->b()V

    .line 8
    :cond_29
    :try_start_29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const v0, 0x13880

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 11
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 12
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_51

    const-string v0, "msg"

    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "code"

    .line 15
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    move-object v1, v0

    move v0, p1

    .line 18
    :cond_51
    iget-object p1, p0, Lcom/taptap/sdk/j$a;->a:Lcom/taptap/sdk/net/Api$ApiCallback;

    new-instance v2, Lcom/taptap/sdk/exceptions/ServerError;

    invoke-direct {v2, v1, v0}, Lcom/taptap/sdk/exceptions/ServerError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v2}, Lcom/taptap/sdk/net/Api$ApiCallback;->onError(Ljava/lang/Throwable;)V
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_5b} :catch_5c

    goto :goto_61

    .line 20
    :catch_5c
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 23
    :cond_61
    :goto_61
    iget-object p1, p0, Lcom/taptap/sdk/j$a;->a:Lcom/taptap/sdk/net/Api$ApiCallback;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/taptap/sdk/net/Api$ApiCallback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/j$a;->a(Lorg/json/JSONObject;)V

    return-void
.end method
