.class public Lcom/ss/android/socialbase/appdownloader/f/b;
.super Ljava/lang/Object;
.source "DecryptUtils.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 50
    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_8
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 53
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 54
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3c

    .line 25
    :cond_d
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 27
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 29
    array-length v2, p0

    .line 30
    nop

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    move v4, v0

    :goto_22
    if-ge v0, v2, :cond_37

    .line 34
    if-lt v4, v1, :cond_27

    .line 35
    rem-int/2addr v4, v1

    .line 37
    :cond_27
    aget-byte v5, p0, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    xor-int/2addr v5, v6

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 40
    :cond_37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_3c
    :goto_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 44
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 45
    invoke-static {p0, p2}, Lcom/ss/android/socialbase/appdownloader/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
