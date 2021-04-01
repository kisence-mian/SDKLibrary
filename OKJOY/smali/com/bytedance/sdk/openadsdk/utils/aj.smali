.class public Lcom/bytedance/sdk/openadsdk/utils/aj;
.super Ljava/lang/Object;
.source "VerifyCertsChain.java"


# direct methods
.method public static a([Ljavax/security/cert/Certificate;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 19
    if-eqz p0, :cond_15

    .line 20
    array-length v2, p0

    move v1, v0

    .line 22
    :goto_5
    if-ge v1, v2, :cond_15

    .line 23
    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a([Ljavax/security/cert/Certificate;I)[Ljavax/security/cert/X509Certificate;

    move-result-object v3

    .line 24
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a([Ljavax/security/cert/X509Certificate;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 31
    :goto_11
    return v0

    .line 27
    :cond_12
    array-length v3, v3

    add-int/2addr v1, v3

    .line 28
    goto :goto_5

    .line 31
    :cond_15
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private static a([Ljavax/security/cert/X509Certificate;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 52
    array-length v2, p0

    move v0, v1

    .line 53
    :goto_3
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_1d

    .line 54
    aget-object v3, p0, v0

    .line 55
    add-int/lit8 v4, v0, 0x1

    aget-object v4, p0, v4

    .line 58
    :try_start_d
    invoke-virtual {v4}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_14
    .catch Ljavax/security/cert/CertificateException; {:try_start_d .. :try_end_14} :catch_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_14} :catch_1f
    .catch Ljava/security/InvalidKeyException; {:try_start_d .. :try_end_14} :catch_21
    .catch Ljava/security/NoSuchProviderException; {:try_start_d .. :try_end_14} :catch_17
    .catch Ljava/security/SignatureException; {:try_start_d .. :try_end_14} :catch_23

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 59
    :catch_17
    move-exception v0

    .line 62
    :goto_18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 66
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x1

    goto :goto_1c

    .line 59
    :catch_1f
    move-exception v0

    goto :goto_18

    :catch_21
    move-exception v0

    goto :goto_18

    :catch_23
    move-exception v0

    goto :goto_18

    :catch_25
    move-exception v0

    goto :goto_18
.end method

.method private static a([Ljavax/security/cert/Certificate;I)[Ljavax/security/cert/X509Certificate;
    .registers 6

    .prologue
    .line 36
    move v1, p1

    :goto_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_1e

    .line 37
    aget-object v0, p0, v1

    check-cast v0, Ljavax/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    aget-object v0, p0, v0

    check-cast v0, Ljavax/security/cert/X509Certificate;

    .line 38
    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    .line 37
    invoke-interface {v2, v0}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 43
    :cond_1e
    sub-int v0, v1, p1

    add-int/lit8 v2, v0, 0x1

    .line 44
    new-array v3, v2, [Ljavax/security/cert/X509Certificate;

    .line 45
    const/4 v0, 0x0

    move v1, v0

    :goto_26
    if-ge v1, v2, :cond_38

    .line 46
    add-int v0, p1, v1

    aget-object v0, p0, v0

    check-cast v0, Ljavax/security/cert/X509Certificate;

    aput-object v0, v3, v1

    .line 45
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    .line 36
    :cond_34
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 48
    :cond_38
    return-object v3
.end method
