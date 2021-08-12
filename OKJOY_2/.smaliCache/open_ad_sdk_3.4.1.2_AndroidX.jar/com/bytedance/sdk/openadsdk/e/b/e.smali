.class public Lcom/bytedance/sdk/openadsdk/e/b/e;
.super Lcom/bytedance/sdk/openadsdk/e/a/e;
.source "GetDownloadStatusMethod.java"


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

    .line 14
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/e/a/e;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    .line 33
    const-string v0, "GetDownloadStatusMethod"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 34
    const/4 v2, 0x1

    if-nez p0, :cond_10

    .line 35
    const-string p0, "params is null"

    invoke-static {v1, v2, p0, v2, v2}, Lcom/bytedance/sdk/openadsdk/e/b/e;->a(Lorg/json/JSONObject;ILjava/lang/String;II)V

    .line 36
    return-object v1

    .line 39
    :cond_10
    :try_start_10
    const-string v3, "ad_down_load_id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 41
    const-string p0, "ad_down_load_id is null"

    invoke-static {v1, v2, p0, v2, v2}, Lcom/bytedance/sdk/openadsdk/e/b/e;->a(Lorg/json/JSONObject;ILjava/lang/String;II)V

    .line 43
    return-object v1

    .line 45
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetDownloadStatusMethod analysisJson downloadId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetDownloadStatusMethod analysisJson downloadJson "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_10 .. :try_end_56} :catchall_57

    .line 48
    return-object p0

    .line 50
    :catchall_57
    move-exception p0

    .line 53
    return-object v1
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/e/a/q;)V
    .registers 3

    .line 23
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/b/e;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/e/b/e;-><init>()V

    const-string v1, "getDownloadStatus"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/e/a/q;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/e;)Lcom/bytedance/sdk/openadsdk/e/a/q;

    .line 24
    return-void
.end method

.method private static a(Lorg/json/JSONObject;ILjava/lang/String;II)V
    .registers 6

    .line 59
    if-nez p0, :cond_3

    .line 60
    return-void

    .line 63
    :cond_3
    :try_start_3
    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    const-string p1, "codeMsg"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string p1, "downloadStatus"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    const-string p1, "downloadProcessRate"

    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_18

    .line 69
    goto :goto_1e

    .line 67
    :catch_18
    move-exception p0

    .line 68
    const-string p0, "GetDownloadStatusMethod"

    invoke-static {p0, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_1e
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/e/a/f;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/e/b/e;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/a/f;)Lorg/json/JSONObject;

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

    .line 29
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/e/b/e;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
