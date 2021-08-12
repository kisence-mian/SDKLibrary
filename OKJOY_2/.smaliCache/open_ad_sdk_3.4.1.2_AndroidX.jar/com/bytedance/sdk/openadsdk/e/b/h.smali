.class public Lcom/bytedance/sdk/openadsdk/e/b/h;
.super Lcom/bytedance/sdk/openadsdk/e/a/e;
.source "ReportPlayableScreenshotMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/e/a/e<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/e/a/e;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 10

    .line 42
    const-string v0, "ReportPlayableScreenshotMethod"

    const-string v1, "reportPlayableScreenshot "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 44
    const/4 v1, 0x1

    if-nez p1, :cond_15

    .line 45
    const-string p1, "params is null"

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/e/b/h;->a(Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 46
    return-object v0

    .line 49
    :cond_15
    :try_start_15
    const-string v2, "image"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    const-string v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/f;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 54
    if-nez v2, :cond_2d

    .line 55
    const-string p1, "imageBase64 to Bitmap error"

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/e/b/h;->a(Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 56
    return-object v0

    .line 58
    :cond_2d
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/e/b/h;->c()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v3

    .line 59
    if-nez v3, :cond_39

    .line 60
    const-string p1, "materialMeta is null"

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/e/b/h;->a(Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 61
    return-object v0

    .line 63
    :cond_39
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x6

    invoke-static {v2, v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/f;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 64
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-string v4, "rewarded_video"

    const-string v6, "playable_show_status"

    const/4 v7, 0x1

    .line 65
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/e/b/h;->b(Ljava/lang/String;)I

    move-result p1

    .line 64
    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move v6, v7

    move v7, p1

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
    :try_end_5e
    .catchall {:try_start_15 .. :try_end_5e} :catchall_5f

    .line 68
    goto :goto_60

    .line 66
    :catchall_5f
    move-exception p1

    .line 69
    :goto_60
    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/e/a/q;)V
    .registers 3

    .line 32
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/b/h;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/e/b/h;-><init>()V

    const-string v1, "reportPlayableScreenshot"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/e/a/q;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/e;)Lcom/bytedance/sdk/openadsdk/e/a/q;

    .line 33
    return-void
.end method

.method private a(Lorg/json/JSONObject;ILjava/lang/String;)V
    .registers 5

    .line 73
    if-nez p1, :cond_3

    .line 74
    return-void

    .line 77
    :cond_3
    :try_start_3
    const-string v0, "code"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    const-string p2, "codeMsg"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    .line 81
    goto :goto_14

    .line 79
    :catch_e
    move-exception p1

    .line 80
    const-string p1, "ReportPlayableScreenshotMethod"

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_14
    return-void
.end method

.method private b(Ljava/lang/String;)I
    .registers 4

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 101
    return v1

    .line 103
    :cond_8
    const-string v0, "video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 104
    const/4 p1, 0x2

    return p1

    .line 105
    :cond_12
    const-string v0, "canvas"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 106
    const/4 p1, 0x3

    return p1

    .line 108
    :cond_1c
    return v1
.end method

.method private c()Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 4

    .line 85
    nop

    .line 86
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/k;->e()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 88
    return-object v2

    .line 91
    :cond_d
    :try_start_d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_17

    .line 94
    goto :goto_1f

    .line 92
    :catchall_17
    move-exception v0

    .line 93
    const-string v0, "ReportPlayableScreenshotMethod"

    const-string v1, "ReportPlayableScreenshotMethod materialMeta is null "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_1f
    return-object v2
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/e/a/f;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/e/b/h;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/a/f;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/a/f;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/e/b/h;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
