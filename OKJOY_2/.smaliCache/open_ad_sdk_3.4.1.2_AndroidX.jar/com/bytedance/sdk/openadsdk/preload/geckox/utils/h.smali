.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/h;
.super Ljava/lang/Object;
.source "MD5Utils.java"


# static fields
.field static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/h;->a:[C

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

.method private static a([BII)Ljava/lang/String;
    .registers 12

    .line 90
    if-eqz p0, :cond_3a

    .line 93
    if-ltz p1, :cond_34

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_34

    .line 96
    mul-int/lit8 v0, p2, 0x2

    new-array v1, v0, [C

    .line 98
    nop

    .line 99
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_11
    if-ge v3, p2, :cond_2e

    .line 100
    add-int v5, v3, p1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 101
    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/h;->a:[C

    shr-int/lit8 v8, v5, 0x4

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    .line 102
    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v1, v6

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 104
    :cond_2e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 94
    :cond_34
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 91
    :cond_3a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bytes is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    const-string v0, "md5 check failed:"

    if-eqz p1, :cond_ad

    .line 20
    :try_start_4
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_91

    .line 23
    nop

    .line 27
    const/16 v2, 0x1000

    :try_start_d
    new-array v3, v2, [B

    .line 29
    :goto_f
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1b

    .line 30
    invoke-virtual {v1, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1a} :catch_71
    .catchall {:try_start_d .. :try_end_1a} :catchall_6f

    goto :goto_f

    .line 35
    :cond_1b
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/b;->a(Ljava/io/Closeable;)Z

    .line 36
    nop

    .line 39
    :try_start_1f
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 40
    array-length v1, p0

    invoke-static {p0, v4, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/h;->a([BII)Ljava/lang/String;

    move-result-object p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_28} :catch_53

    .line 43
    nop

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 48
    return-void

    .line 45
    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "md5 check failed file: local md5:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " expect md5:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :catch_53
    move-exception p0

    .line 42
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 35
    :catchall_6f
    move-exception p1

    goto :goto_8d

    .line 32
    :catch_71
    move-exception p1

    .line 33
    :try_start_72
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8d
    .catchall {:try_start_72 .. :try_end_8d} :catchall_6f

    .line 35
    :goto_8d
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/b;->a(Ljava/io/Closeable;)Z

    .line 36
    throw p1

    .line 21
    :catch_91
    move-exception p0

    .line 22
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 16
    :cond_ad
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "md5 check failed: md5 == null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
