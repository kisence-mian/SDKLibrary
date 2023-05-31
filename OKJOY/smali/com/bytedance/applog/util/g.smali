.class public Lcom/bytedance/applog/util/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    const-string v0, "SHA-256"

    invoke-static {p0, v0}, Lcom/bytedance/applog/util/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 24
    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 29
    :try_start_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 30
    const-string p1, "SHA-256"

    .line 32
    :cond_d
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 33
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 34
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/applog/util/g;->a([B)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_1b} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_1d

    move-result-object v0

    .line 40
    :goto_1c
    return-object v0

    .line 37
    :catch_1d
    move-exception v1

    goto :goto_1c

    .line 35
    :catch_1f
    move-exception v1

    goto :goto_1c
.end method

.method private static a([B)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    if-nez p0, :cond_5

    .line 56
    :goto_4
    return-object v0

    .line 48
    :cond_5
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    array-length v3, p0

    :goto_b
    if-ge v1, v3, :cond_25

    aget-byte v4, p0, v1

    .line 50
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 52
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_28} :catch_2a

    move-result-object v0

    goto :goto_4

    .line 53
    :catch_2a
    move-exception v1

    goto :goto_4
.end method
