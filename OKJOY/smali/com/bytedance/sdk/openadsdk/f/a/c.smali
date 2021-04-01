.class public Lcom/bytedance/sdk/openadsdk/f/a/c;
.super Lcom/bytedance/sdk/openadsdk/f/a/d;
.source "LoadAdNoRspLog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/f/a/d",
        "<",
        "Lcom/bytedance/sdk/openadsdk/f/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lcom/bytedance/sdk/openadsdk/f/a/c;
    .registers 4

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/f/a/c;->a:J

    .line 18
    return-object p0
.end method

.method public a()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 32
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 34
    :try_start_4
    const-string v1, "c_process_time"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/f/a/c;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 35
    const-string v1, "s_process_time"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/f/a/c;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    .line 39
    :goto_12
    return-object v0

    .line 36
    :catch_13
    move-exception v1

    goto :goto_12
.end method

.method public b(J)Lcom/bytedance/sdk/openadsdk/f/a/c;
    .registers 4

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/f/a/c;->b:J

    .line 27
    return-object p0
.end method
