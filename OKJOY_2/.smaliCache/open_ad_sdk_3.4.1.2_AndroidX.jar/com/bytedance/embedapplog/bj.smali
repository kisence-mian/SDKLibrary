.class public Lcom/bytedance/embedapplog/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/bytedance/embedapplog/bj;->a:[C

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

    .line 24
    if-eqz p0, :cond_9

    .line 27
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/bytedance/embedapplog/bj;->a([BII)Ljava/lang/String;

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

    .line 34
    if-eqz p0, :cond_3a

    .line 37
    if-ltz p1, :cond_34

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_34

    .line 40
    mul-int/lit8 v0, p2, 0x2

    new-array v1, v0, [C

    .line 42
    nop

    .line 43
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_11
    if-ge v3, p2, :cond_2e

    .line 44
    add-int v5, v3, p1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 45
    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lcom/bytedance/embedapplog/bj;->a:[C

    shr-int/lit8 v8, v5, 0x4

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    .line 46
    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v1, v6

    .line 43
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 48
    :cond_2e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 38
    :cond_34
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 35
    :cond_3a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bytes is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 3

    .line 105
    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    :try_start_3
    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_1b

    .line 108
    :cond_7
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 109
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 110
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/embedapplog/bj;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_19

    return-object p0

    .line 111
    :catch_19
    move-exception p0

    .line 112
    return-object v0

    .line 106
    :cond_1b
    :goto_1b
    return-object v0
.end method
