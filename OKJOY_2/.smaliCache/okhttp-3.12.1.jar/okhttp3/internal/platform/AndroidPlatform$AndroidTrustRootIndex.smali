.class final Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;
.super Ljava/lang/Object;
.source "AndroidPlatform.java"

# interfaces
.implements Lokhttp3/internal/tls/TrustRootIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/AndroidPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AndroidTrustRootIndex"
.end annotation


# instance fields
.field private final findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

.field private final trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    .registers 3
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;
    .param p2, "findByIssuerAndSignatureMethod"    # Ljava/lang/reflect/Method;

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-object p2, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    .line 397
    iput-object p1, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 398
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 416
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 417
    return v0

    .line 419
    :cond_4
    instance-of v1, p1, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 420
    return v2

    .line 422
    :cond_a
    move-object v1, p1

    check-cast v1, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;

    .line 423
    .local v1, "that":Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;
    iget-object v3, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    iget-object v4, v1, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    iget-object v4, v1, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    .line 424
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 423
    :goto_23
    return v0
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 7
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 402
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;

    .line 404
    .local v1, "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v1, :cond_18

    .line 405
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_17} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_17} :catch_1a

    goto :goto_19

    .line 406
    :cond_18
    nop

    .line 404
    :goto_19
    return-object v0

    .line 409
    .end local v1    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :catch_1a
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    return-object v0

    .line 407
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1c
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "unable to get issues and signature"

    invoke-static {v1, v0}, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method public hashCode()I
    .registers 3

    .line 429
    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
