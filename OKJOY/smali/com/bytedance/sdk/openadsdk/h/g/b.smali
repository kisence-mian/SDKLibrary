.class public Lcom/bytedance/sdk/openadsdk/h/g/b;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field private static final a:Ljava/security/MessageDigest;

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/g/b;->a()Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/g/b;->a:Ljava/security/MessageDigest;

    .line 35
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_10

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/g/b;->b:[C

    return-void

    :array_10
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 23
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/g/b;->a:Ljava/security/MessageDigest;

    .line 24
    if-nez v0, :cond_7

    .line 25
    const-string v0, ""

    .line 32
    :goto_6
    return-object v0

    .line 28
    :cond_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/g/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 29
    const-class v2, Lcom/bytedance/sdk/openadsdk/h/g/b;

    monitor-enter v2

    .line 30
    :try_start_10
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 31
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 32
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/b;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 31
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 38
    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_8

    .line 39
    :cond_6
    const/4 v0, 0x0

    .line 49
    :goto_7
    return-object v0

    .line 42
    :cond_8
    array-length v1, p0

    shl-int/lit8 v1, v1, 0x1

    new-array v2, v1, [C

    .line 44
    array-length v3, p0

    move v1, v0

    :goto_f
    if-ge v0, v3, :cond_2c

    aget-byte v4, p0, v0

    .line 45
    add-int/lit8 v5, v1, 0x1

    sget-object v6, Lcom/bytedance/sdk/openadsdk/h/g/b;->b:[C

    and-int/lit16 v7, v4, 0xf0

    shr-int/lit8 v7, v7, 0x4

    aget-char v6, v6, v7

    aput-char v6, v2, v1

    .line 46
    add-int/lit8 v1, v5, 0x1

    sget-object v6, Lcom/bytedance/sdk/openadsdk/h/g/b;->b:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v2, v5

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 49
    :cond_2c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_7
.end method

.method private static a()Ljava/security/MessageDigest;
    .registers 1

    .prologue
    .line 16
    :try_start_0
    const-string v0, "md5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 18
    :goto_6
    return-object v0

    .line 17
    :catch_7
    move-exception v0

    .line 18
    const/4 v0, 0x0

    goto :goto_6
.end method
