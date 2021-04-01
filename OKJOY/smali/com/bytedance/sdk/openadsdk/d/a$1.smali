.class Lcom/bytedance/sdk/openadsdk/d/a$1;
.super Ljava/lang/Object;
.source "JsAppAdDownloadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/d/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/d/a;Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 212
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/d/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/a$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 256
    if-eqz p1, :cond_7

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    .line 270
    :cond_7
    :goto_7
    return-void

    .line 260
    :cond_8
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 261
    const-string v0, "message"

    const-string v2, "success"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v0, "appad"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/a$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const/4 v0, 0x0

    :goto_1c
    array-length v2, p1

    if-ge v0, v2, :cond_2b

    .line 264
    aget-object v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    add-int/lit8 v0, v0, 0x2

    goto :goto_1c

    .line 266
    :cond_2b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/d/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Lcom/bytedance/sdk/openadsdk/d/a;)Lcom/bytedance/sdk/openadsdk/d/b;

    move-result-object v0

    const-string v2, "app_ad_event"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/d/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_36} :catch_37

    goto :goto_7

    .line 267
    :catch_37
    move-exception v0

    .line 268
    const-string v0, "JsAppAdDownloadManager"

    const-string v1, "JSONException"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method


# virtual methods
.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 220
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "download_active"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "total_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 222
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 223
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 220
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/a$1;->a([Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 236
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "download_failed"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "total_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 238
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 239
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 236
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/a$1;->a([Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 244
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "download_finished"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "total_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 246
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 247
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 244
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/a$1;->a([Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 228
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "download_paused"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "total_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 230
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 231
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 228
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/a$1;->a([Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public onIdle()V
    .registers 4

    .prologue
    .line 215
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "idle"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/a$1;->a([Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 252
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "installed"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/a$1;->a([Ljava/lang/String;)V

    .line 253
    return-void
.end method
