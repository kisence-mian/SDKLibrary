.class public Lcom/ss/android/socialbase/downloader/m/b;
.super Ljava/lang/Object;
.source "DownloadDigestUtils.java"


# static fields
.field static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/b;->a:[C

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

    .line 43
    const/4 v1, 0x0

    .line 45
    :try_start_2
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_5b
    .catchall {:try_start_2 .. :try_end_7} :catchall_4a

    move-result-object v2

    .line 46
    if-nez v2, :cond_15

    .line 59
    if-eqz v0, :cond_f

    .line 60
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_10

    .line 56
    :cond_f
    :goto_f
    return-object v0

    .line 62
    :catch_10
    move-exception v1

    .line 63
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 48
    :cond_15
    :try_start_15
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_5b
    .catchall {:try_start_15 .. :try_end_1a} :catchall_4a

    .line 49
    const/16 v3, 0x2000

    :try_start_1c
    new-array v3, v3, [B

    .line 51
    :goto_1e
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_37

    .line 52
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2a} :catch_2b
    .catchall {:try_start_1c .. :try_end_2a} :catchall_59

    goto :goto_1e

    .line 55
    :catch_2b
    move-exception v2

    .line 59
    :goto_2c
    if-eqz v1, :cond_f

    .line 60
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_f

    .line 62
    :catch_32
    move-exception v1

    .line 63
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 54
    :cond_37
    :try_start_37
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/m/b;->a([B)Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3e} :catch_2b
    .catchall {:try_start_37 .. :try_end_3e} :catchall_59

    move-result-object v0

    .line 59
    if-eqz v1, :cond_f

    .line 60
    :try_start_41
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_f

    .line 62
    :catch_45
    move-exception v1

    .line 63
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 58
    :catchall_4a
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 59
    :goto_4e
    if-eqz v1, :cond_53

    .line 60
    :try_start_50
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    .line 64
    :cond_53
    :goto_53
    throw v0

    .line 62
    :catch_54
    move-exception v1

    .line 63
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_53

    .line 58
    :catchall_59
    move-exception v0

    goto :goto_4e

    .line 55
    :catch_5b
    move-exception v1

    move-object v1, v0

    goto :goto_2c
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    .prologue
    .line 21
    if-nez p0, :cond_a

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_a
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/m/b;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_b

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_b
    if-ltz p1, :cond_12

    add-int v0, p1, p2

    array-length v2, p0

    if-le v0, v2, :cond_18

    .line 30
    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 31
    :cond_18
    mul-int/lit8 v0, p2, 0x2

    new-array v3, v0, [C

    move v0, v1

    move v2, v1

    .line 34
    :goto_1e
    if-ge v0, p2, :cond_3d

    .line 35
    add-int v4, v0, p1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 36
    add-int/lit8 v5, v2, 0x1

    sget-object v6, Lcom/ss/android/socialbase/downloader/m/b;->a:[C

    shr-int/lit8 v7, v4, 0x4

    aget-char v6, v6, v7

    aput-char v6, v3, v2

    .line 37
    add-int/lit8 v2, v5, 0x1

    sget-object v6, Lcom/ss/android/socialbase/downloader/m/b;->a:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 39
    :cond_3d
    new-instance v0, Ljava/lang/String;

    mul-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
