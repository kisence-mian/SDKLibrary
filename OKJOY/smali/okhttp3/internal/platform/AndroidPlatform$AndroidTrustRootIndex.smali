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

    .prologue
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

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 416
    if-ne p1, p0, :cond_5

    .line 423
    :cond_4
    :goto_4
    return v1

    .line 419
    :cond_5
    instance-of v3, p1, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;

    if-nez v3, :cond_b

    move v1, v2

    .line 420
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 422
    check-cast v0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;

    .line 423
    .local v0, "that":Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;
    iget-object v3, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    iget-object v4, v0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    iget-object v4, v0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    .line 424
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_22
    move v1, v2

    goto :goto_4
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 9
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 402
    :try_start_1
    iget-object v3, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lokhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;

    .line 404
    .local v1, "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v1, :cond_17

    .line 405
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_16} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_16} :catch_20

    move-result-object v2

    .line 410
    .end local v1    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :cond_17
    :goto_17
    return-object v2

    .line 407
    :catch_18
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "unable to get issues and signature"

    invoke-static {v2, v0}, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2

    .line 409
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_20
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_17
.end method

.method public hashCode()I
    .registers 3

    .prologue
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
