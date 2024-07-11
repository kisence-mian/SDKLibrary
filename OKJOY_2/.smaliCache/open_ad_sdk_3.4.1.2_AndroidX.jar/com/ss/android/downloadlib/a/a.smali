.class public Lcom/ss/android/downloadlib/a/a;
.super Ljava/lang/Object;
.source "AmUtils.java"


# direct methods
.method public static a(Lorg/json/JSONArray;Ljava/lang/String;)Z
    .registers 7

    .line 26
    const/4 v0, 0x0

    if-eqz p0, :cond_2f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2f

    .line 29
    :cond_a
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 30
    move v2, v0

    :goto_f
    if-ge v2, v1, :cond_2e

    .line 31
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 32
    if-eqz v3, :cond_2b

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 33
    invoke-static {v3}, Lcom/ss/android/downloadlib/a/a;->a(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 34
    const/4 p0, 0x1

    return p0

    .line 30
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 37
    :cond_2e
    return v0

    .line 27
    :cond_2f
    :goto_2f
    return v0
.end method

.method public static a(Lorg/json/JSONObject;)Z
    .registers 3

    .line 21
    const-string v0, "device_requirements"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 22
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->b(Lorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method
