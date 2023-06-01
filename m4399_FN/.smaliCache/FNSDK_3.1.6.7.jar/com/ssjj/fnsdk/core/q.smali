.class final Lcom/ssjj/fnsdk/core/q;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "RSA"

    sput-object v0, Lcom/ssjj/fnsdk/core/q;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/q;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/q;->a([B)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ssjj/fnsdk/core/q;->a([BLjava/security/Key;)[B

    move-result-object p0

    array-length p1, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_17
    if-lt v1, p1, :cond_1a

    goto :goto_25

    :cond_1a
    aget-byte v3, p0, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2d

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2d

    if-nez v3, :cond_25

    goto :goto_2d

    :cond_25
    :goto_25
    new-instance p1, Ljava/lang/String;

    array-length v1, p0

    sub-int/2addr v1, v2

    invoke-direct {p1, p0, v2, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2c} :catch_32

    return-object p1

    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :catch_32
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/q;->a([B)[B

    move-result-object p0

    sget-object v0, Lcom/ssjj/fnsdk/core/q;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_19} :catch_2c
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_19} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    new-instance p0, Ljava/lang/Exception;

    const-string v0, "\u516c\u94a5\u6570\u636e\u4e3a\u7a7a"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_23
    move-exception p0

    new-instance p0, Ljava/lang/Exception;

    const-string v0, "\u516c\u94a5\u975e\u6cd5"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2c
    move-exception p0

    new-instance p0, Ljava/lang/Exception;

    const-string v0, "\u65e0\u6b64\u7b97\u6cd5"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([B)[B
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BLjava/security/Key;)[B
    .registers 4

    :try_start_0
    sget-object v0, Lcom/ssjj/fnsdk/core/q;->a:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method
