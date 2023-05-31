.class public Lcom/kwad/sdk/e/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x10

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x32

    aput-char v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    aput-char v2, v0, v1

    sput-object v0, Lcom/kwad/sdk/e/h;->a:[C

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_19
    if-ge v1, v4, :cond_35

    aget-byte v0, v2, v1

    if-gez v0, :cond_21

    add-int/lit16 v0, v0, 0x100

    :cond_21
    const/16 v5, 0x10

    if-ge v0, v5, :cond_2a

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    :cond_35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_3a

    move-result-object v0

    :goto_39
    return-object v0

    :catch_3a
    move-exception v0

    const-string v0, ""

    goto :goto_39
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 12

    const/4 v1, 0x0

    if-eqz p0, :cond_39

    if-ltz p1, :cond_33

    add-int v0, p1, p2

    array-length v2, p0

    if-gt v0, v2, :cond_33

    mul-int/lit8 v3, p2, 0x2

    new-array v4, v3, [C

    move v0, v1

    move v2, v1

    :goto_10
    if-ge v0, p2, :cond_2d

    add-int v5, v0, p1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v2, 0x1

    sget-object v7, Lcom/kwad/sdk/e/h;->a:[C

    shr-int/lit8 v8, v5, 0x4

    aget-char v8, v7, v8

    aput-char v8, v4, v2

    add-int/lit8 v2, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_33
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/e/h;->a([BII)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v0

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_17
.end method
