.class public final Lcom/bytedance/tea/crash/g/k;
.super Ljava/lang/Object;
.source "PackUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 59
    invoke-static {}, Lcom/bytedance/tea/crash/h;->a()Lcom/bytedance/tea/crash/e/a;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 60
    invoke-static {}, Lcom/bytedance/tea/crash/h;->a()Lcom/bytedance/tea/crash/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/a;->a()Ljava/util/Map;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_1b

    .line 62
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 64
    check-cast v0, Ljava/lang/String;

    .line 68
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static a(Lcom/bytedance/tea/crash/c/a;Lcom/bytedance/tea/crash/c/b;Lcom/bytedance/tea/crash/c;)V
    .registers 11

    .prologue
    .line 30
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/bytedance/tea/crash/c/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_a

    if-nez p2, :cond_b

    .line 56
    :cond_a
    :goto_a
    return-void

    .line 33
    :cond_b
    invoke-virtual {p0}, Lcom/bytedance/tea/crash/c/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 34
    const-string v1, "crash_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 35
    const-string v1, "aid"

    invoke-static {v1}, Lcom/bytedance/tea/crash/g/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/tea/crash/g/k;->b(Ljava/lang/String;)I

    move-result v1

    .line 36
    invoke-static {}, Lcom/bytedance/tea/crash/h;->c()Lcom/bytedance/tea/crash/e/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/tea/crash/e/j;->a()Ljava/lang/String;

    move-result-object v4

    .line 37
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_a

    if-lez v1, :cond_a

    .line 38
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "0"

    .line 39
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 40
    invoke-virtual {p2}, Lcom/bytedance/tea/crash/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 42
    :try_start_47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    if-eqz p1, :cond_8b

    .line 44
    invoke-virtual {p1}, Lcom/bytedance/tea/crash/c/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_a

    .line 46
    const-string v2, "unique_key"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_85} :catch_86

    goto :goto_a

    .line 52
    :catch_86
    move-exception v0

    .line 53
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a

    .line 49
    :cond_8b
    :try_start_8b
    const-string v2, "unique_key"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_8b .. :try_end_90} :catch_86

    goto/16 :goto_a
.end method

.method public static b(Ljava/lang/String;)I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 80
    :goto_7
    return v0

    .line 76
    :cond_8
    :try_start_8
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v0

    goto :goto_7

    .line 77
    :catch_d
    move-exception v1

    .line 78
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    goto :goto_7
.end method
