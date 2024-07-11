.class public Lcom/ta/utdid2/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 13
    nop

    .line 15
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Lcom/ta/utdid2/a/a/a;->a()[B

    move-result-object v1

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ta/utdid2/a/a/a;->a([B[B)[B

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    .line 19
    goto :goto_11

    .line 17
    :catch_f
    move-exception p0

    move-object p0, v0

    .line 20
    :goto_11
    if-eqz p0, :cond_18

    .line 21
    invoke-static {p0}, Lcom/ta/utdid2/a/a/a;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_18
    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 4

    .line 68
    if-nez p0, :cond_5

    .line 69
    const-string p0, ""

    return-object p0

    .line 71
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 72
    const/4 v1, 0x0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 73
    aget-byte v2, p0, v1

    invoke-static {v0, v2}, Lcom/ta/utdid2/a/a/a;->a(Ljava/lang/StringBuffer;B)V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 75
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/StringBuffer;B)V
    .registers 4

    .line 79
    nop

    .line 80
    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p0

    and-int/lit8 p1, p1, 0xf

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    return-void
.end method

.method private static a()[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    .line 40
    invoke-static {v0}, Lcom/ta/utdid2/a/a/e;->a([B)[B

    move-result-object v0

    return-object v0

    :array_c
    .array-data 1
        0x21t
        0x53t
        -0x32t
        -0x59t
        -0x54t
        -0x72t
        0x50t
        0x63t
        0xat
        0x3ft
        0x16t
        -0x41t
        -0xbt
        0x1et
        0x65t
        -0x76t
    .end array-data
.end method

.method private static a(Ljava/lang/String;)[B
    .registers 6

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 60
    new-array v1, v0, [B

    .line 61
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_22

    .line 62
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 64
    :cond_22
    return-object v1
.end method

.method private static a([B[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 45
    const-string p0, "AES/CBC/PKCS5Padding"

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 46
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/ta/utdid2/a/a/a;->b()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 47
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 29
    :try_start_0
    invoke-static {}, Lcom/ta/utdid2/a/a/a;->a()[B

    move-result-object v0

    .line 30
    invoke-static {p0}, Lcom/ta/utdid2/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object p0

    .line 31
    invoke-static {v0, p0}, Lcom/ta/utdid2/a/a/a;->b([B[B)[B

    move-result-object p0

    .line 32
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 33
    :catch_12
    move-exception p0

    .line 34
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b()[B
    .registers 2

    .line 85
    :try_start_0
    const-string v0, "IUQSvE6r1TfFPdPEjfklLw=="

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ta/utdid2/a/a/b;->decode([BI)[B

    move-result-object v0

    .line 86
    if-eqz v0, :cond_14

    .line 87
    invoke-static {v0}, Lcom/ta/utdid2/a/a/e;->a([B)[B

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    return-object v0

    .line 91
    :cond_14
    goto :goto_16

    .line 89
    :catch_15
    move-exception v0

    .line 92
    :goto_16
    const/16 v0, 0x10

    new-array v0, v0, [B

    return-object v0
.end method

.method private static b([B[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 53
    const-string p0, "AES/CBC/PKCS5Padding"

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 54
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/ta/utdid2/a/a/a;->b()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 55
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method
