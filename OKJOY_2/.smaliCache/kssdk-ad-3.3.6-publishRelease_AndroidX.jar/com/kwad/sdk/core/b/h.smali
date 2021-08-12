.class public Lcom/kwad/sdk/core/b/h;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/security/KeyFactory;Ljava/security/Key;)I
    .registers 3

    :try_start_0
    const-class v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p0

    check-cast p0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {p0}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    div-int/lit8 p0, p0, 0x8
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_15

    add-int/lit8 p0, p0, -0xb

    goto :goto_18

    :catch_15
    move-exception p0

    const/16 p0, 0x75

    :goto_18
    return p0
.end method

.method public static a([BLjava/lang/String;)[B
    .registers 3

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {p0, p1, v0}, Lcom/kwad/sdk/core/b/h;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BLjava/lang/String;Ljava/lang/String;)[B
    .registers 8

    invoke-static {}, Lcom/kwad/sdk/core/b/c;->b()Lcom/kwad/sdk/core/b/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/b/c$a;->a(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p1, "RSA"

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/b/h;->a(Ljava/security/KeyFactory;Ljava/security/Key;)I

    move-result p1

    const/4 v0, 0x0

    :try_start_24
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_4e
    .catchall {:try_start_24 .. :try_end_29} :catchall_4c

    :try_start_29
    array-length v2, p0

    const/4 v3, 0x0

    :goto_2b
    array-length v4, p0

    if-ge v3, v4, :cond_3d

    sub-int v4, v2, v3

    if-ge v4, p1, :cond_33

    goto :goto_34

    :cond_33
    move v4, p1

    :goto_34
    invoke-virtual {p2, p0, v3, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/2addr v3, p1

    goto :goto_2b

    :cond_3d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_41} :catch_4a
    .catchall {:try_start_29 .. :try_end_41} :catchall_59

    :try_start_41
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_58

    :catch_45
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_58

    :catch_4a
    move-exception p0

    goto :goto_50

    :catchall_4c
    move-exception p0

    goto :goto_5b

    :catch_4e
    move-exception p0

    move-object v1, v0

    :goto_50
    :try_start_50
    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_59

    if-eqz v1, :cond_58

    :try_start_55
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_45

    :cond_58
    :goto_58
    return-object v0

    :catchall_59
    move-exception p0

    move-object v0, v1

    :goto_5b
    if-eqz v0, :cond_65

    :try_start_5d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_65

    :catch_61
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_65
    :goto_65
    throw p0
.end method

.method private static b(Ljava/security/KeyFactory;Ljava/security/Key;)I
    .registers 3

    :try_start_0
    const-class v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p0

    check-cast p0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-virtual {p0}, Ljava/security/spec/RSAPrivateKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    div-int/lit8 p0, p0, 0x8
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_16

    :catch_13
    move-exception p0

    const/16 p0, 0x80

    :goto_16
    return p0
.end method

.method public static b([BLjava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {p0, p1, v1}, Lcom/kwad/sdk/core/b/h;->b([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static b([BLjava/lang/String;Ljava/lang/String;)[B
    .registers 8

    invoke-static {}, Lcom/kwad/sdk/core/b/c;->b()Lcom/kwad/sdk/core/b/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/b/c$a;->a(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p1, "RSA"

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/b/h;->b(Ljava/security/KeyFactory;Ljava/security/Key;)I

    move-result p1

    const/4 v0, 0x0

    :try_start_24
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_5a
    .catchall {:try_start_24 .. :try_end_29} :catchall_4e

    :try_start_29
    array-length v2, p0

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v2, :cond_3c

    sub-int v4, v2, v3

    if-ge v4, p1, :cond_32

    goto :goto_33

    :cond_32
    move v4, p1

    :goto_33
    invoke-virtual {p2, p0, v3, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/2addr v3, p1

    goto :goto_2b

    :cond_3c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_40} :catch_4c
    .catchall {:try_start_29 .. :try_end_40} :catchall_49

    :try_start_40
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_61

    :catch_44
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_61

    :catchall_49
    move-exception p0

    move-object v0, v1

    goto :goto_4f

    :catch_4c
    move-exception p0

    goto :goto_5c

    :catchall_4e
    move-exception p0

    :goto_4f
    if-eqz v0, :cond_59

    :try_start_51
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_59

    :catch_55
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_59
    :goto_59
    throw p0

    :catch_5a
    move-exception p0

    move-object v1, v0

    :goto_5c
    if-eqz v1, :cond_61

    :try_start_5e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_44

    :cond_61
    :goto_61
    return-object v0
.end method
