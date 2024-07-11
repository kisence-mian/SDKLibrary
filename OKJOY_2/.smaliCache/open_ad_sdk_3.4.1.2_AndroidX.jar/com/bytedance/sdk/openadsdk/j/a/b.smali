.class public Lcom/bytedance/sdk/openadsdk/j/a/b;
.super Ljava/lang/Object;
.source "SDKThreadStateLogModel.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget v0, Lcom/bytedance/sdk/openadsdk/j/e;->a:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/b;->a:I

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/b;->b:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/b;->c:Ljava/lang/String;

    .line 21
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/j/a/b;->b:I

    .line 22
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/a/b;->c:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 4

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    :try_start_5
    const-string v1, "cupCount"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/j/a/b;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    const-string v1, "sdkThreadCount"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/j/a/b;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    const-string v1, "sdkThreadNames"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/j/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_1c

    .line 34
    nop

    .line 35
    return-object v0

    .line 31
    :catch_1c
    move-exception v0

    .line 32
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method
