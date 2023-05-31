.class public Lcom/bytedance/sdk/openadsdk/f/a/a;
.super Lcom/bytedance/sdk/openadsdk/f/a/d;
.source "DnsTimeLog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/f/a/d",
        "<",
        "Lcom/bytedance/sdk/openadsdk/f/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/a/d;-><init>()V

    .line 14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/a/a;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/f/a/a;
    .registers 4

    .prologue
    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz p2, :cond_d

    .line 19
    :try_start_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/a/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_e

    .line 23
    :cond_d
    :goto_d
    return-object p0

    .line 20
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public a()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 28
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 30
    :try_start_4
    const-string v0, "event_extra"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 37
    :goto_16
    const-string v2, "dns_info"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/f/a/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v2, "event_extra"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    :goto_26
    return-object v1

    .line 35
    :cond_27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2c} :catch_2d

    goto :goto_16

    .line 39
    :catch_2d
    move-exception v0

    goto :goto_26
.end method
