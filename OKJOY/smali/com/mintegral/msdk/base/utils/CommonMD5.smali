.class public Lcom/mintegral/msdk/base/utils/CommonMD5;
.super Ljava/lang/Object;
.source "CommonMD5.java"

# interfaces
.implements Lcom/mintegral/msdk/system/NoProGuard;


# static fields
.field public static final TAG:Ljava/lang/String; = "MD5"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ByteArrayToHexString([B)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 118
    if-nez p0, :cond_6

    .line 119
    const-string v0, ""

    .line 135
    :goto_5
    return-object v0

    .line 120
    :cond_6
    array-length v0, p0

    if-nez v0, :cond_c

    .line 121
    const-string v0, ""

    goto :goto_5

    .line 122
    :cond_c
    array-length v0, p0

    mul-int/lit8 v2, v0, 0x2

    .line 123
    new-array v3, v2, [B

    move v0, v1

    .line 124
    :goto_12
    if-ge v0, v2, :cond_1b

    .line 125
    const/16 v4, 0x30

    aput-byte v4, v3, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 127
    :cond_1b
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 128
    aput-byte v1, v0, v1

    .line 129
    const/4 v4, 0x1

    array-length v5, p0

    invoke-static {p0, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 131
    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 132
    array-length v4, v0

    sub-int/2addr v2, v4

    .line 133
    array-length v4, v0

    .line 134
    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_5
.end method

.method private static HexEncode([B)Ljava/lang/String;
    .registers 6

    .prologue
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 140
    array-length v2, p0

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_25

    aget-byte v3, p0, v0

    .line 141
    and-int/lit16 v4, v3, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    and-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 144
    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static UpHexEncode([B)Ljava/lang/String;
    .registers 6

    .prologue
    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 149
    array-length v2, p0

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_25

    aget-byte v3, p0, v0

    .line 150
    and-int/lit16 v4, v3, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    and-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 153
    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 43
    :goto_6
    return-object p0

    .line 35
    :cond_7
    :try_start_7
    const-string v0, "MD5"

    invoke-static {v0, p0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 39
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/CommonMD5;->HexEncode([B)Ljava/lang/String;
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_23} :catch_25

    move-result-object p0

    goto :goto_6

    .line 41
    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 43
    const-string p0, ""

    goto :goto_6
.end method

.method public static getQftJSMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 69
    :try_start_1
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getQftJSMD5Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 70
    const/16 v2, 0x10

    new-array v2, v2, [C

    fill-array-data v2, :array_46

    .line 72
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 73
    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 74
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 75
    array-length v4, v3

    .line 76
    mul-int/lit8 v1, v4, 0x2

    new-array v5, v1, [C

    move v1, v0

    .line 78
    :goto_1f
    if-ge v0, v4, :cond_38

    .line 79
    aget-byte v6, v3, v0

    .line 80
    add-int/lit8 v7, v1, 0x1

    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v2, v8

    aput-char v8, v5, v1

    .line 81
    add-int/lit8 v1, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v5, v7

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 83
    :cond_38
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_3e

    .line 87
    :goto_3d
    return-object v0

    .line 85
    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    const-string v0, ""

    goto :goto_3d

    .line 70
    nop

    :array_46
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static getQftJSMD5Bytes(Ljava/lang/String;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 101
    const-string v1, "UTF-16LE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 102
    const-string v1, "----"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "b = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/CommonMD5;->ByteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-array v4, v2, [B

    move v1, v0

    .line 104
    :goto_26
    array-length v5, v3

    if-ge v1, v5, :cond_3e

    .line 106
    aget-byte v5, v3, v1

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3b

    aget-byte v5, v3, v1

    const/4 v6, -0x2

    if-eq v5, v6, :cond_3b

    .line 108
    aget-byte v5, v3, v1

    aput-byte v5, v4, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 110
    if-eq v0, v2, :cond_3e

    .line 104
    :cond_3b
    add-int/lit8 v1, v1, 0x2

    goto :goto_26

    .line 113
    :cond_3e
    const-string v0, "----"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "source = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/mintegral/msdk/base/utils/CommonMD5;->ByteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-object v4
.end method

.method public static getUPMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 54
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0, p0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 58
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/CommonMD5;->UpHexEncode([B)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v0

    .line 62
    :goto_1d
    return-object v0

    .line 60
    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 62
    const-string v0, ""

    goto :goto_1d
.end method
