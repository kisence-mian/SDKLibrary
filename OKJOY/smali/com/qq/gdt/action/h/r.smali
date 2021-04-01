.class public Lcom/qq/gdt/action/h/r;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/qq/gdt/action/h/r;->a:[C

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
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/h/r;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/qq/gdt/action/h/r;->b([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/h/r;->c([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLjava/lang/String;)[B
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    if-gtz v1, :cond_7

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_11} :catch_13

    move-result-object v0

    goto :goto_6

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static b([B)[B
    .registers 2

    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/qq/gdt/action/h/r;->a([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static c([B)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    array-length v2, p0

    if-lez v2, :cond_4

    shl-int/lit8 v0, v2, 0x1

    new-array v3, v0, [C

    move v0, v1

    :goto_d
    if-ge v1, v2, :cond_2c

    add-int/lit8 v4, v0, 0x1

    sget-object v5, Lcom/qq/gdt/action/h/r;->a:[C

    aget-byte v6, p0, v1

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v0

    add-int/lit8 v0, v4, 0x1

    sget-object v5, Lcom/qq/gdt/action/h/r;->a:[C

    aget-byte v6, p0, v1

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_4
.end method
