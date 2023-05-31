.class public Lcom/qq/gdt/action/h/p;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-array v0, v4, [B

    :try_start_7
    const-string v2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDIxHA9yAi16YbRRJqi+UB5jhbb\ns3MlTsGxv0eFf3LSzPbIcbc0lIDzRIZQstKo/4oN/drDg5JWqShCmxERA+KM0D4h\npD6CFRNtN1DVvpw+H4tNkF5yB1TwAUlbNNhSuc7hi4YpttiZlSqEnl8UlX+9OWOi\n0L7IU9mCkDdQY4ErLwIDAQAB"

    invoke-static {v1, v2}, Lcom/qq/gdt/action/h/p;->a([BLjava/lang/String;)[B
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_12

    move-result-object v0

    :goto_d
    invoke-static {v0}, Lcom/qq/gdt/action/h/h;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_12
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rsa encrypt encounter error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static a([B)[B
    .registers 6

    const/4 v4, 0x0

    new-array v0, v4, [B

    :try_start_3
    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDIxHA9yAi16YbRRJqi+UB5jhbb\ns3MlTsGxv0eFf3LSzPbIcbc0lIDzRIZQstKo/4oN/drDg5JWqShCmxERA+KM0D4h\npD6CFRNtN1DVvpw+H4tNkF5yB1TwAUlbNNhSuc7hi4YpttiZlSqEnl8UlX+9OWOi\n0L7IU9mCkDdQY4ErLwIDAQAB"

    invoke-static {p0, v1}, Lcom/qq/gdt/action/h/p;->a([BLjava/lang/String;)[B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_a

    move-result-object v0

    :goto_9
    return-object v0

    :catch_a
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rsa encrypt encounter error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method private static a([BLjava/lang/String;)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0xf5

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/qq/gdt/action/h/h;->b(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v1, 0x1

    invoke-virtual {v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v4, p0

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v2

    move v0, v2

    :goto_28
    sub-int v6, v4, v0

    if-lez v6, :cond_47

    sub-int v6, v4, v0

    if-le v6, v7, :cond_40

    invoke-virtual {v3, p0, v0, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    :goto_34
    array-length v6, v0

    invoke-virtual {v5, v0, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v0, v1, 0x1

    mul-int/lit16 v1, v0, 0xf5

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_28

    :cond_40
    sub-int v6, v4, v0

    invoke-virtual {v3, p0, v0, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    goto :goto_34

    :cond_47
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v0
.end method

.method public static b([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    array-length v0, p0

    const/16 v1, 0x80

    if-le v0, v1, :cond_c

    const-string v0, ""

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDIxHA9yAi16YbRRJqi+UB5jhbb\ns3MlTsGxv0eFf3LSzPbIcbc0lIDzRIZQstKo/4oN/drDg5JWqShCmxERA+KM0D4h\npD6CFRNtN1DVvpw+H4tNkF5yB1TwAUlbNNhSuc7hi4YpttiZlSqEnl8UlX+9OWOi\n0L7IU9mCkDdQY4ErLwIDAQAB"

    invoke-static {v0}, Lcom/qq/gdt/action/h/h;->b(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    goto :goto_b
.end method
