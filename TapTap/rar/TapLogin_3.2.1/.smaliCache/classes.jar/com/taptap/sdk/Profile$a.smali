.class final Lcom/taptap/sdk/Profile$a;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Lcom/taptap/sdk/net/Api$ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/Profile;->fetchProfileForCurrentAccessToken(Lcom/taptap/sdk/net/Api$ApiCallback;)V
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
.field final synthetic a:Lcom/taptap/sdk/net/Api$ApiCallback;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/net/Api$ApiCallback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/Profile$a;->a:Lcom/taptap/sdk/net/Api$ApiCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/c;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_27

    .line 2
    const-string v0, "success"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/taptap/sdk/Profile;->fromJson(Lorg/json/JSONObject;)Lcom/taptap/sdk/Profile;

    move-result-object v0

    .line 5
    sput-object v0, Lcom/taptap/sdk/Profile;->profile:Lcom/taptap/sdk/Profile;

    .line 6
    invoke-static {p1}, Lcom/taptap/sdk/Profile;->save(Lorg/json/JSONObject;)V

    .line 7
    iget-object p1, p0, Lcom/taptap/sdk/Profile$a;->a:Lcom/taptap/sdk/net/Api$ApiCallback;

    if-eqz p1, :cond_27

    .line 8
    invoke-interface {p1, v0}, Lcom/taptap/sdk/net/Api$ApiCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_27
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/taptap/sdk/exceptions/ServerError;

    if-eqz v0, :cond_21

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "access_denied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4
    invoke-static {}, Lcom/taptap/sdk/d;->a()Lcom/taptap/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/d;->b()V

    .line 7
    :cond_21
    iget-object v0, p0, Lcom/taptap/sdk/Profile$a;->a:Lcom/taptap/sdk/net/Api$ApiCallback;

    if-eqz v0, :cond_28

    .line 8
    invoke-interface {v0, p1}, Lcom/taptap/sdk/net/Api$ApiCallback;->onError(Ljava/lang/Throwable;)V

    :cond_28
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/Profile$a;->a(Lorg/json/JSONObject;)V

    return-void
.end method
