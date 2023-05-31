.class final Lcom/taptap/sdk/f$a;
.super Ljava/lang/Object;
.source "TapLoginWithCode.java"

# interfaces
.implements Lcom/taptap/sdk/net/Api$ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/f$b;)V
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


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taptap/sdk/f$b;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/taptap/sdk/f$b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/f$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/taptap/sdk/f$a;->b:Lcom/taptap/sdk/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 15

    .line 1
    const-string v0, "success"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz v0, :cond_49

    .line 4
    const-string v0, "kid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    const-string v0, "token_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    const-string v0, "mac_key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    const-string v0, "mac_algorithm"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10
    new-instance v11, Lcom/taptap/sdk/AccessToken;

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v11

    invoke-direct/range {v1 .. v7}, Lcom/taptap/sdk/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance p1, Lcom/taptap/sdk/LoginResponse;

    iget-object v9, p0, Lcom/taptap/sdk/f$a;->a:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/taptap/sdk/LoginResponse;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/AccessToken;Z)V

    .line 13
    iget-object v0, p0, Lcom/taptap/sdk/f$a;->b:Lcom/taptap/sdk/f$b;

    if-eqz v0, :cond_62

    .line 14
    invoke-interface {v0, p1}, Lcom/taptap/sdk/f$b;->a(Lcom/taptap/sdk/LoginResponse;)V

    goto :goto_62

    :cond_49
    nop

    .line 18
    const-string v0, "error_description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 19
    new-instance p1, Lcom/taptap/sdk/LoginResponse;

    iget-object v3, p0, Lcom/taptap/sdk/f$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/taptap/sdk/LoginResponse;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/AccessToken;Z)V

    .line 20
    iget-object v0, p0, Lcom/taptap/sdk/f$a;->b:Lcom/taptap/sdk/f$b;

    if-eqz v0, :cond_62

    .line 21
    invoke-interface {v0, p1}, Lcom/taptap/sdk/f$b;->a(Lcom/taptap/sdk/LoginResponse;)V

    :cond_62
    :goto_62
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 9

    .line 1
    new-instance v6, Lcom/taptap/sdk/LoginResponse;

    iget-object v2, p0, Lcom/taptap/sdk/f$a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/taptap/sdk/LoginResponse;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/AccessToken;Z)V

    .line 2
    iget-object p1, p0, Lcom/taptap/sdk/f$a;->b:Lcom/taptap/sdk/f$b;

    if-eqz p1, :cond_16

    .line 3
    invoke-interface {p1, v6}, Lcom/taptap/sdk/f$b;->a(Lcom/taptap/sdk/LoginResponse;)V

    :cond_16
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/f$a;->a(Lorg/json/JSONObject;)V

    return-void
.end method
