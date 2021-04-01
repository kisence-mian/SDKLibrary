.class public Lcom/bytedance/sdk/openadsdk/utils/j;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
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
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 64
    const/4 v1, 0x0

    .line 66
    :try_start_2
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_4f
    .catchall {:try_start_2 .. :try_end_7} :catchall_3f

    move-result-object v2

    .line 67
    if-nez v2, :cond_10

    .line 79
    if-eqz v0, :cond_f

    .line 81
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_49

    .line 77
    :cond_f
    :goto_f
    return-object v0

    .line 69
    :cond_10
    :try_start_10
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_4f
    .catchall {:try_start_10 .. :try_end_15} :catchall_3f

    .line 70
    const/16 v3, 0x2000

    :try_start_17
    new-array v3, v3, [B

    .line 72
    :goto_19
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_2f

    .line 73
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_25} :catch_26
    .catchall {:try_start_17 .. :try_end_25} :catchall_4d

    goto :goto_19

    .line 76
    :catch_26
    move-exception v2

    .line 79
    :goto_27
    if-eqz v1, :cond_f

    .line 81
    :try_start_29
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_f

    .line 82
    :catch_2d
    move-exception v1

    goto :goto_f

    .line 75
    :cond_2f
    :try_start_2f
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/j;->a([B)Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_26
    .catchall {:try_start_2f .. :try_end_36} :catchall_4d

    move-result-object v0

    .line 79
    if-eqz v1, :cond_f

    .line 81
    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_f

    .line 82
    :catch_3d
    move-exception v1

    goto :goto_f

    .line 79
    :catchall_3f
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_43
    if-eqz v1, :cond_48

    .line 81
    :try_start_45
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_4b

    .line 83
    :cond_48
    :goto_48
    throw v0

    .line 82
    :catch_49
    move-exception v1

    goto :goto_f

    :catch_4b
    move-exception v1

    goto :goto_48

    .line 79
    :catchall_4d
    move-exception v0

    goto :goto_43

    .line 76
    :catch_4f
    move-exception v1

    move-object v1, v0

    goto :goto_27
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 93
    if-eqz p0, :cond_9

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 100
    :cond_9
    :goto_9
    return-object v0

    .line 95
    :cond_a
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 96
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 98
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a([B)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_22

    move-result-object v0

    goto :goto_9

    .line 99
    :catch_22
    move-exception v1

    goto :goto_9
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    .prologue
    .line 24
    if-nez p0, :cond_a

    .line 25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_a
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 33
    if-nez p0, :cond_b

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_b
    if-ltz p1, :cond_12

    add-int v0, p1, p2

    array-length v2, p0

    if-le v0, v2, :cond_18

    .line 36
    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 37
    :cond_18
    mul-int/lit8 v0, p2, 0x2

    new-array v3, v0, [C

    move v0, v1

    move v2, v1

    .line 40
    :goto_1e
    if-ge v0, p2, :cond_3d

    .line 41
    add-int v4, v0, p1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 42
    add-int/lit8 v5, v2, 0x1

    sget-object v6, Lcom/bytedance/sdk/openadsdk/utils/j;->a:[C

    shr-int/lit8 v7, v4, 0x4

    aget-char v6, v6, v7

    aput-char v6, v3, v2

    .line 43
    add-int/lit8 v2, v5, 0x1

    sget-object v6, Lcom/bytedance/sdk/openadsdk/utils/j;->a:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 45
    :cond_3d
    new-instance v0, Ljava/lang/String;

    mul-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
