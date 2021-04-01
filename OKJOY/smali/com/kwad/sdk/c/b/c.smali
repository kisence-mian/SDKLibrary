.class public Lcom/kwad/sdk/c/b/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static a(Ljava/security/KeyFactory;Ljava/security/Key;)I
    .registers 4

    const/16 v1, 0x80

    :try_start_2
    const-class v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-virtual {v0}, Ljava/security/spec/RSAPrivateKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_15

    :goto_14
    return v0

    :catch_15
    move-exception v0

    move v0, v1

    goto :goto_14
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {p0, p1, v1}, Lcom/kwad/sdk/c/b/c;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static a([BLjava/lang/String;Ljava/lang/String;)[B
    .registers 11

    const/4 v0, 0x0

    invoke-static {}, Lcom/kwad/sdk/c/b/a;->b()Lcom/kwad/sdk/c/b/a$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kwad/sdk/c/b/a$a;->a(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v3, 0x2

    invoke-virtual {v5, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-static {v1, v2}, Lcom/kwad/sdk/c/b/c;->a(Ljava/security/KeyFactory;Ljava/security/Key;)I

    move-result v3

    :try_start_24
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_59
    .catchall {:try_start_24 .. :try_end_29} :catchall_6f

    :try_start_29
    array-length v6, p0

    const/4 v1, 0x0

    move v4, v1

    :goto_2c
    if-ge v4, v6, :cond_3f

    sub-int v1, v6, v4

    if-ge v1, v3, :cond_3d

    :goto_32
    invoke-virtual {v5, p0, v4, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int v1, v4, v3

    move v4, v1

    goto :goto_2c

    :cond_3d
    move v1, v3

    goto :goto_32

    :cond_3f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_42} :catch_4c
    .catchall {:try_start_29 .. :try_end_42} :catchall_5d

    move-result-object v0

    :try_start_43
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    :cond_46
    :goto_46
    return-object v0

    :catch_47
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46

    :catch_4c
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    :goto_50
    :try_start_50
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_6d

    if-eqz v1, :cond_46

    :try_start_55
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_47

    goto :goto_46

    :catch_59
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_50

    :catchall_5d
    move-exception v0

    move-object v1, v2

    :goto_5f
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_62
    if-eqz v0, :cond_67

    :try_start_64
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_68

    :cond_67
    :goto_67
    throw v1

    :catch_68
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_67

    :catchall_6d
    move-exception v0

    goto :goto_5f

    :catchall_6f
    move-exception v1

    goto :goto_62
.end method

.method private static b(Ljava/security/KeyFactory;Ljava/security/Key;)I
    .registers 4

    const/16 v1, 0x75

    :try_start_2
    const-class v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v0}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_17

    add-int/lit8 v0, v0, -0xb

    :goto_16
    return v0

    :catch_17
    move-exception v0

    move v0, v1

    goto :goto_16
.end method

.method public static b([BLjava/lang/String;)[B
    .registers 3

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {p0, p1, v0}, Lcom/kwad/sdk/c/b/c;->b([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static b([BLjava/lang/String;Ljava/lang/String;)[B
    .registers 11

    const/4 v0, 0x0

    invoke-static {}, Lcom/kwad/sdk/c/b/a;->b()Lcom/kwad/sdk/c/b/a$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kwad/sdk/c/b/a$a;->a(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v3, 0x1

    invoke-virtual {v5, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-static {v1, v2}, Lcom/kwad/sdk/c/b/c;->b(Ljava/security/KeyFactory;Ljava/security/Key;)I

    move-result v3

    :try_start_24
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_5a
    .catchall {:try_start_24 .. :try_end_29} :catchall_70

    :try_start_29
    array-length v6, p0

    const/4 v1, 0x0

    move v4, v1

    :goto_2c
    array-length v1, p0

    if-ge v4, v1, :cond_40

    sub-int v1, v6, v4

    if-ge v1, v3, :cond_3e

    :goto_33
    invoke-virtual {v5, p0, v4, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int v1, v4, v3

    move v4, v1

    goto :goto_2c

    :cond_3e
    move v1, v3

    goto :goto_33

    :cond_40
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_43} :catch_4d
    .catchall {:try_start_29 .. :try_end_43} :catchall_5e

    move-result-object v0

    :try_start_44
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    :cond_47
    :goto_47
    return-object v0

    :catch_48
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47

    :catch_4d
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    :goto_51
    :try_start_51
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_6e

    if-eqz v1, :cond_47

    :try_start_56
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_48

    goto :goto_47

    :catch_5a
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_51

    :catchall_5e
    move-exception v0

    move-object v1, v2

    :goto_60
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_63
    if-eqz v0, :cond_68

    :try_start_65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_69

    :cond_68
    :goto_68
    throw v1

    :catch_69
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_68

    :catchall_6e
    move-exception v0

    goto :goto_60

    :catchall_70
    move-exception v1

    goto :goto_63
.end method
