.class public final Lcom/bytedance/tea/crash/g/k;
.super Ljava/lang/Object;
.source "PackUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

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

    move-result-object p0

    .line 63
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 64
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 68
    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/bytedance/tea/crash/c/a;Lcom/bytedance/tea/crash/c/b;Lcom/bytedance/tea/crash/c;)V
    .registers 10

    .line 30
    const-string v0, "_"

    if-eqz p0, :cond_8c

    invoke-virtual {p0}, Lcom/bytedance/tea/crash/c/a;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8c

    if-nez p2, :cond_e

    goto/16 :goto_8c

    .line 33
    :cond_e
    invoke-virtual {p0}, Lcom/bytedance/tea/crash/c/a;->a()Lorg/json/JSONObject;

    move-result-object p0

    .line 34
    const-string v1, "crash_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 35
    const-string v3, "aid"

    invoke-static {v3}, Lcom/bytedance/tea/crash/g/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/tea/crash/g/k;->b(Ljava/lang/String;)I

    move-result v3

    .line 36
    invoke-static {}, Lcom/bytedance/tea/crash/h;->c()Lcom/bytedance/tea/crash/e/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/tea/crash/e/j;->a()Ljava/lang/String;

    move-result-object v4

    .line 37
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_8b

    if-lez v3, :cond_8b

    .line 38
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8b

    .line 39
    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8b

    .line 40
    invoke-virtual {p2}, Lcom/bytedance/tea/crash/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8b

    .line 42
    :try_start_4a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_75} :catch_87

    .line 43
    const-string v0, "unique_key"

    if-eqz p1, :cond_83

    .line 44
    :try_start_79
    invoke-virtual {p1}, Lcom/bytedance/tea/crash/c/b;->a()Lorg/json/JSONObject;

    move-result-object p0

    .line 45
    if-eqz p0, :cond_82

    .line 46
    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :cond_82
    goto :goto_86

    .line 49
    :cond_83
    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_86
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_86} :catch_87

    .line 54
    :goto_86
    goto :goto_8b

    .line 52
    :catch_87
    move-exception p0

    .line 53
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 56
    :cond_8b
    :goto_8b
    return-void

    .line 31
    :cond_8c
    :goto_8c
    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .registers 3

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 73
    return v1

    .line 76
    :cond_8
    :try_start_8
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    return p0

    .line 77
    :catch_d
    move-exception p0

    .line 78
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 80
    return v1
.end method
