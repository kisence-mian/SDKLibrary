.class public Lcom/facebook/bidding/a/h/a/h;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljavax/net/ssl/HttpsURLConnection;Ljava/util/Set;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/HttpsURLConnection;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SHA-1"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_13

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "4.0.3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    return-void

    :cond_13
    :try_start_13
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_48

    aget-object v3, p0, v2

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-static {v4, v0}, Lcom/facebook/bidding/a/h/a/h;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_30

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    return-void

    :cond_30
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v3, v0}, Lcom/facebook/bidding/a/h/a/h;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_45

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    return-void

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_48
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "Unable to find valid certificate or public key."

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_50} :catch_50

    :catch_50
    move-exception p0

    goto :goto_53

    :goto_52
    throw p0

    :goto_53
    goto :goto_52
.end method
