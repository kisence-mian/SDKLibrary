.class public Lcom/kwad/sdk/utils/p;
.super Ljava/lang/Object;


# static fields
.field static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/kwad/sdk/utils/p;->a:[C

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

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/kwad/sdk/utils/p;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 6

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_2f

    aget-byte v3, p0, v2

    if-gez v3, :cond_1c

    add-int/lit16 v3, v3, 0x100

    :cond_1c
    const/16 v4, 0x10

    if-ge v3, v4, :cond_25

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    return-object p0

    :catch_34
    move-exception p0

    const-string p0, ""

    return-object p0
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 12

    if-eqz p0, :cond_39

    if-ltz p1, :cond_33

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_33

    mul-int/lit8 v0, p2, 0x2

    new-array v1, v0, [C

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_10
    if-ge v3, p2, :cond_2d

    add-int v5, v3, p1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lcom/kwad/sdk/utils/p;->a:[C

    shr-int/lit8 v8, v5, 0x4

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_2d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_33
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_39
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bytes is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/kwad/sdk/utils/p;->a([BII)Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method
