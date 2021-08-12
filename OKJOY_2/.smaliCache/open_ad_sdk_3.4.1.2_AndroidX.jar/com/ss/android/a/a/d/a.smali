.class public Lcom/ss/android/a/a/d/a;
.super Ljava/lang/Object;
.source "ToolUtils.java"


# direct methods
.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)J
    .registers 4

    .line 30
    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    .line 31
    return-wide v0

    .line 33
    :cond_5
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 34
    nop

    .line 36
    :try_start_a
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_12} :catch_13

    .line 38
    goto :goto_14

    .line 37
    :catch_13
    move-exception p0

    .line 39
    :goto_14
    return-wide v0
.end method

.method public static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2

    .line 110
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 111
    invoke-static {p0, v0}, Lcom/ss/android/a/a/d/a;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    .line 95
    if-eqz p0, :cond_21

    if-eqz p1, :cond_21

    .line 96
    :try_start_4
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 97
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_1b} :catch_1c

    .line 100
    goto :goto_8

    .line 102
    :catch_1c
    move-exception p0

    .line 103
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_22

    .line 104
    :cond_21
    nop

    .line 105
    :goto_22
    return-object p1
.end method

.method public static varargs a([Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    .line 116
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 117
    if-eqz p0, :cond_1a

    array-length v1, p0

    if-nez v1, :cond_b

    goto :goto_1a

    .line 120
    :cond_b
    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_19

    aget-object v3, p0, v2

    .line 121
    if-eqz v3, :cond_16

    .line 122
    invoke-static {v3, v0}, Lcom/ss/android/a/a/d/a;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 120
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 125
    :cond_19
    return-object v0

    .line 118
    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)Z
    .registers 4

    .line 85
    if-eqz p0, :cond_12

    .line 86
    const-string v0, "apk_update_handler_enable"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_12

    .line 87
    const-string p0, "application/ttpatch"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 90
    :cond_12
    const/4 p0, 0x0

    return p0
.end method
