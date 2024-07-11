.class public Lcom/bytedance/sdk/openadsdk/utils/j;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/j;->a:[C

    return-void

    :array_a
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

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    .line 64
    nop

    .line 66
    const/4 v0, 0x0

    :try_start_2
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 67
    if-nez v1, :cond_d

    .line 68
    nop

    .line 79
    nop

    .line 68
    return-object v0

    .line 69
    :cond_d
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_3e
    .catchall {:try_start_2 .. :try_end_12} :catchall_35

    .line 70
    const/16 p0, 0x2000

    :try_start_14
    new-array v3, p0, [B

    .line 72
    :goto_16
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_21

    .line 73
    invoke-virtual {v1, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_16

    .line 75
    :cond_21
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/j;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_29} :catch_33
    .catchall {:try_start_14 .. :try_end_29} :catchall_30

    .line 79
    nop

    .line 81
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 83
    goto :goto_2f

    .line 82
    :catch_2e
    move-exception v0

    .line 75
    :goto_2f
    return-object p0

    .line 79
    :catchall_30
    move-exception p0

    move-object v0, v2

    goto :goto_36

    .line 76
    :catch_33
    move-exception p0

    goto :goto_40

    .line 79
    :catchall_35
    move-exception p0

    :goto_36
    if-eqz v0, :cond_3d

    .line 81
    :try_start_38
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 83
    goto :goto_3d

    .line 82
    :catch_3c
    move-exception v0

    .line 85
    :cond_3d
    :goto_3d
    throw p0

    .line 76
    :catch_3e
    move-exception p0

    move-object v2, v0

    .line 77
    :goto_40
    nop

    .line 79
    if-eqz v2, :cond_48

    .line 81
    :try_start_43
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    .line 83
    goto :goto_48

    .line 82
    :catch_47
    move-exception p0

    .line 77
    :cond_48
    :goto_48
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 93
    const/4 v0, 0x0

    if-eqz p0, :cond_24

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_24

    .line 95
    :cond_a
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 96
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 97
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 98
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/j;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_22

    return-object p0

    .line 99
    :catch_22
    move-exception p0

    .line 100
    return-object v0

    .line 94
    :cond_24
    :goto_24
    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    .line 24
    if-eqz p0, :cond_9

    .line 26
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "bytes is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 12

    .line 33
    if-eqz p0, :cond_3a

    .line 35
    if-ltz p1, :cond_34

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_34

    .line 37
    mul-int/lit8 v0, p2, 0x2

    new-array v1, v0, [C

    .line 39
    nop

    .line 40
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_11
    if-ge v3, p2, :cond_2e

    .line 41
    add-int v5, v3, p1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 42
    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lcom/bytedance/sdk/openadsdk/utils/j;->a:[C

    shr-int/lit8 v8, v5, 0x4

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    .line 43
    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v1, v6

    .line 40
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 45
    :cond_2e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 36
    :cond_34
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 34
    :cond_3a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bytes is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
