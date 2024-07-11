.class public Lcom/bytedance/embedapplog/bq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Lcom/bytedance/embedapplog/av;
    .registers 6

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 52
    new-instance v0, Lcom/bytedance/embedapplog/av;

    if-eqz p3, :cond_f

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_f
    invoke-direct {v0, p0, p2, v1}, Lcom/bytedance/embedapplog/av;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_23

    .line 55
    :try_start_18
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    iput-wide p0, v0, Lcom/bytedance/embedapplog/av;->a:J
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1e} :catch_1f

    .line 58
    goto :goto_23

    .line 56
    :catch_1f
    move-exception p0

    .line 57
    invoke-static {p0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 60
    :cond_23
    :goto_23
    return-object v0

    .line 62
    :cond_24
    sget-boolean p1, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz p1, :cond_3e

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WebViewJsUtil no event name, ignore "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    :cond_3e
    return-object v1
.end method

.method public static a(Ljava/lang/String;)V
    .registers 8

    .line 27
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 28
    const/4 p0, 0x0

    move v1, p0

    :goto_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_55

    .line 29
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 30
    const-string v3, "event"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    const-string v4, "local_time_ms"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    const-string v5, "is_bav"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_27

    goto :goto_28

    :cond_27
    move v6, p0

    .line 33
    :goto_28
    const-string v5, "params"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 34
    invoke-static {v3, v4, v6, v2}, Lcom/bytedance/embedapplog/bq;->a(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Lcom/bytedance/embedapplog/av;

    move-result-object v2

    .line 35
    if-eqz v2, :cond_52

    .line 36
    sget-boolean v4, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz v4, :cond_4f

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WebViewJsUtil send "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    :cond_4f
    invoke-static {v2}, Lcom/bytedance/embedapplog/k;->a(Lcom/bytedance/embedapplog/aq;)V
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_52} :catch_56

    .line 28
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 44
    :cond_55
    goto :goto_5a

    .line 42
    :catch_56
    move-exception p0

    .line 43
    invoke-static {p0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 45
    :goto_5a
    return-void
.end method
