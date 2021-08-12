.class Lcom/bytedance/sdk/openadsdk/d/a$2;
.super Ljava/lang/Object;
.source "JsAppAdDownloadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;
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

    .line 271
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a$2;->b:Lcom/bytedance/sdk/openadsdk/d/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/a$2;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)V
    .registers 6

    .line 315
    if-eqz p1, :cond_40

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    goto :goto_40

    .line 319
    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 320
    const-string v1, "message"

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string v1, "appad"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/a$2;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const/4 v1, 0x0

    :goto_1c
    array-length v2, p1

    if-ge v1, v2, :cond_2b

    .line 323
    aget-object v2, p1, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    add-int/lit8 v1, v1, 0x2

    goto :goto_1c

    .line 325
    :cond_2b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a$2;->b:Lcom/bytedance/sdk/openadsdk/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Lcom/bytedance/sdk/openadsdk/d/a;)Lcom/bytedance/sdk/openadsdk/d/b;

    move-result-object p1

    const-string v1, "app_ad_event"

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/d/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_36} :catch_37

    .line 328
    goto :goto_3f

    .line 326
    :catch_37
    move-exception p1

    .line 327
    const-string p1, "JsAppAdDownloadManager"

    const-string v0, "JSONException"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :goto_3f
    return-void

    .line 316
    :cond_40
    :goto_40
    return-void
.end method


# virtual methods
.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 279
    const/4 p5, 0x6

    new-array p5, p5, [Ljava/lang/String;

    const/4 p6, 0x0

    const-string v0, "status"

    aput-object v0, p5, p6

    const/4 p6, 0x1

    const-string v0, "download_active"

    aput-object v0, p5, p6

    const/4 p6, 0x2

    const-string v0, "total_bytes"

    aput-object v0, p5, p6

    .line 281
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, p5, p2

    const/4 p1, 0x4

    const-string p2, "current_bytes"

    aput-object p2, p5, p1

    .line 282
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, p5, p2

    .line 279
    invoke-direct {p0, p5}, Lcom/bytedance/sdk/openadsdk/d/a$2;->a([Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 295
    const/4 p5, 0x6

    new-array p5, p5, [Ljava/lang/String;

    const/4 p6, 0x0

    const-string v0, "status"

    aput-object v0, p5, p6

    const/4 p6, 0x1

    const-string v0, "download_failed"

    aput-object v0, p5, p6

    const/4 p6, 0x2

    const-string v0, "total_bytes"

    aput-object v0, p5, p6

    .line 297
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, p5, p2

    const/4 p1, 0x4

    const-string p2, "current_bytes"

    aput-object p2, p5, p1

    .line 298
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, p5, p2

    .line 295
    invoke-direct {p0, p5}, Lcom/bytedance/sdk/openadsdk/d/a$2;->a([Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 303
    const/4 p3, 0x6

    new-array p3, p3, [Ljava/lang/String;

    const/4 p4, 0x0

    const-string v0, "status"

    aput-object v0, p3, p4

    const/4 p4, 0x1

    const-string v0, "download_finished"

    aput-object v0, p3, p4

    const/4 p4, 0x2

    const-string v0, "total_bytes"

    aput-object v0, p3, p4

    .line 305
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x3

    aput-object p4, p3, v0

    const/4 p4, 0x4

    const-string v0, "current_bytes"

    aput-object v0, p3, p4

    .line 306
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, p3, p2

    .line 303
    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/d/a$2;->a([Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 287
    const/4 p5, 0x6

    new-array p5, p5, [Ljava/lang/String;

    const/4 p6, 0x0

    const-string v0, "status"

    aput-object v0, p5, p6

    const/4 p6, 0x1

    const-string v0, "download_paused"

    aput-object v0, p5, p6

    const/4 p6, 0x2

    const-string v0, "total_bytes"

    aput-object v0, p5, p6

    .line 289
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, p5, p2

    const/4 p1, 0x4

    const-string p2, "current_bytes"

    aput-object p2, p5, p1

    .line 290
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, p5, p2

    .line 287
    invoke-direct {p0, p5}, Lcom/bytedance/sdk/openadsdk/d/a$2;->a([Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public onIdle()V
    .registers 3

    .line 274
    const-string v0, "status"

    const-string v1, "idle"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/a$2;->a([Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 311
    const-string p1, "status"

    const-string p2, "installed"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/d/a$2;->a([Ljava/lang/String;)V

    .line 312
    return-void
.end method
