.class public Lcom/bytedance/sdk/openadsdk/g/a/b;
.super Lcom/bytedance/sdk/openadsdk/g/a/c;
.source "LoadAdNoRspLog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/g/a/c<",
        "Lcom/bytedance/sdk/openadsdk/g/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lcom/bytedance/sdk/openadsdk/g/a/b;
    .registers 3

    .line 17
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->a:J

    .line 18
    return-object p0
.end method

.method public a()Lorg/json/JSONObject;
    .registers 5

    .line 32
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 34
    :try_start_4
    const-string v1, "c_process_time"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 35
    const-string v1, "s_process_time"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    .line 37
    goto :goto_14

    .line 36
    :catch_13
    move-exception v1

    .line 39
    :goto_14
    return-object v0
.end method

.method public b(J)Lcom/bytedance/sdk/openadsdk/g/a/b;
    .registers 3

    .line 26
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->b:J

    .line 27
    return-object p0
.end method
