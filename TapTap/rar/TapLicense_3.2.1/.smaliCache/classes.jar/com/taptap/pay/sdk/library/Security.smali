.class public Lcom/taptap/pay/sdk/library/Security;
.super Ljava/lang/Object;
.source "Security.java"


# static fields
.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "IABUtil/Security"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 75
    .local v0, "decodedKey":[B
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 76
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_14} :catch_23
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v2

    .line 79
    .end local v0    # "decodedKey":[B
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    :catch_15
    move-exception v0

    .line 80
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v1, "IABUtil/Security"

    const-string v2, "Invalid key specification."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 77
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_23
    move-exception v0

    .line 78
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .line 97
    const-string v0, "IABUtil/Security"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_7} :catch_3c

    .line 101
    .local v2, "signatureBytes":[B
    nop

    .line 103
    :try_start_8
    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 104
    .local v3, "sig":Ljava/security/Signature;
    invoke-virtual {v3, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/Signature;->update([B)V

    .line 106
    invoke-virtual {v3, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v4

    if-nez v4, :cond_24

    .line 107
    const-string v4, "Signature verification failed."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_23} :catch_34
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_23} :catch_2d
    .catch Ljava/security/SignatureException; {:try_start_8 .. :try_end_23} :catch_26

    .line 108
    return v1

    .line 110
    :cond_24
    const/4 v0, 0x1

    return v0

    .line 115
    .end local v3    # "sig":Ljava/security/Signature;
    :catch_26
    move-exception v3

    .line 116
    .local v3, "e":Ljava/security/SignatureException;
    const-string v4, "Signature exception."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 113
    .end local v3    # "e":Ljava/security/SignatureException;
    :catch_2d
    move-exception v3

    .line 114
    .local v3, "e":Ljava/security/InvalidKeyException;
    const-string v4, "Invalid key specification."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/security/InvalidKeyException;
    goto :goto_3a

    .line 111
    :catch_34
    move-exception v3

    .line 112
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "NoSuchAlgorithmException."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_3a
    nop

    .line 118
    :goto_3b
    return v1

    .line 98
    .end local v2    # "signatureBytes":[B
    :catch_3c
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Base64 decoding failed."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v1
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "base64PublicKey"    # Ljava/lang/String;
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 56
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1c

    .line 61
    :cond_13
    invoke-static {p0}, Lcom/taptap/pay/sdk/library/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 62
    .local v0, "key":Ljava/security/PublicKey;
    invoke-static {v0, p1, p2}, Lcom/taptap/pay/sdk/library/Security;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 57
    .end local v0    # "key":Ljava/security/PublicKey;
    :cond_1c
    :goto_1c
    const-string v0, "IABUtil/Security"

    const-string v1, "Purchase verification failed: missing data."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    return v0
.end method
