.class public Lcom/bytedance/sdk/openadsdk/i/g/b;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field private static final a:Ljava/security/MessageDigest;

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/g/b;->a()Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/g/b;->a:Ljava/security/MessageDigest;

    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_10

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/g/b;->b:[C

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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 25
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/g/b;->a:Ljava/security/MessageDigest;

    .line 26
    if-eqz v0, :cond_21

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_21

    .line 30
    :cond_b
    sget-object v1, Lcom/bytedance/sdk/openadsdk/i/g/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 31
    const-class v1, Lcom/bytedance/sdk/openadsdk/i/g/b;

    monitor-enter v1

    .line 32
    :try_start_14
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 33
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1e

    .line 34
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/i/g/b;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 33
    :catchall_1e
    move-exception p0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0

    .line 27
    :cond_21
    :goto_21
    const-string p0, ""

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 9

    .line 40
    if-eqz p0, :cond_30

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_30

    .line 44
    :cond_6
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    .line 45
    nop

    .line 46
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v2, v1, :cond_2a

    aget-byte v4, p0, v2

    .line 47
    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/bytedance/sdk/openadsdk/i/g/b;->b:[C

    and-int/lit16 v7, v4, 0xf0

    shr-int/lit8 v7, v7, 0x4

    aget-char v7, v6, v7

    aput-char v7, v0, v3

    .line 48
    add-int/lit8 v3, v5, 0x1

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v0, v5

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 51
    :cond_2a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 41
    :cond_30
    :goto_30
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a()Ljava/security/MessageDigest;
    .registers 1

    .line 18
    :try_start_0
    const-string v0, "md5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 19
    :catch_7
    move-exception v0

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method
