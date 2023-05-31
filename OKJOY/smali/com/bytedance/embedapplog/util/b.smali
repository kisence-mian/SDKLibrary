.class public Lcom/bytedance/embedapplog/util/b;
.super Ljava/lang/Object;
.source "SourceFile"


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

    sput-object v0, Lcom/bytedance/embedapplog/util/b;->a:[C

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

    .line 27
    :cond_a
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/bytedance/embedapplog/util/b;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 34
    if-nez p0, :cond_b

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_b
    if-ltz p1, :cond_12

    add-int v0, p1, p2

    array-length v2, p0

    if-le v0, v2, :cond_18

    .line 38
    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 40
    :cond_18
    mul-int/lit8 v0, p2, 0x2

    new-array v3, v0, [C

    move v0, v1

    move v2, v1

    .line 43
    :goto_1e
    if-ge v0, p2, :cond_3d

    .line 44
    add-int v4, v0, p1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 45
    add-int/lit8 v5, v2, 0x1

    sget-object v6, Lcom/bytedance/embedapplog/util/b;->a:[C

    shr-int/lit8 v7, v4, 0x4

    aget-char v6, v6, v7

    aput-char v6, v3, v2

    .line 46
    add-int/lit8 v2, v5, 0x1

    sget-object v6, Lcom/bytedance/embedapplog/util/b;->a:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 48
    :cond_3d
    new-instance v0, Ljava/lang/String;

    mul-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 105
    if-eqz p0, :cond_6

    :try_start_3
    array-length v1, p0

    if-nez v1, :cond_7

    .line 112
    :cond_6
    :goto_6
    return-object v0

    .line 108
    :cond_7
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 109
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 110
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/embedapplog/util/b;->a([B)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_19

    move-result-object v0

    goto :goto_6

    .line 111
    :catch_19
    move-exception v1

    goto :goto_6
.end method
