.class public final Lokhttp3/ConnectionSpec;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/ConnectionSpec$Builder;
    }
.end annotation


# static fields
.field private static final APPROVED_CIPHER_SUITES:[Lokhttp3/CipherSuite;

.field public static final CLEARTEXT:Lokhttp3/ConnectionSpec;

.field public static final COMPATIBLE_TLS:Lokhttp3/ConnectionSpec;

.field public static final MODERN_TLS:Lokhttp3/ConnectionSpec;

.field private static final RESTRICTED_CIPHER_SUITES:[Lokhttp3/CipherSuite;

.field public static final RESTRICTED_TLS:Lokhttp3/ConnectionSpec;


# instance fields
.field final cipherSuites:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final supportsTlsExtensions:Z

.field final tls:Z

.field final tlsVersions:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 44
    const/16 v0, 0xb

    new-array v0, v0, [Lokhttp3/CipherSuite;

    sget-object v1, Lokhttp3/CipherSuite;->TLS_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/CipherSuite;->TLS_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/CipherSuite;->TLS_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/CipherSuite;->TLS_AES_128_CCM_SHA256:Lokhttp3/CipherSuite;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/CipherSuite;->TLS_AES_256_CCM_8_SHA256:Lokhttp3/CipherSuite;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    sput-object v0, Lokhttp3/ConnectionSpec;->RESTRICTED_CIPHER_SUITES:[Lokhttp3/CipherSuite;

    .line 63
    const/16 v0, 0x12

    new-array v0, v0, [Lokhttp3/CipherSuite;

    sget-object v1, Lokhttp3/CipherSuite;->TLS_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/CipherSuite;->TLS_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/CipherSuite;->TLS_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/CipherSuite;->TLS_AES_128_CCM_SHA256:Lokhttp3/CipherSuite;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/CipherSuite;->TLS_AES_256_CCM_8_SHA256:Lokhttp3/CipherSuite;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lokhttp3/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;

    aput-object v2, v0, v1

    sput-object v0, Lokhttp3/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lokhttp3/CipherSuite;

    .line 91
    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    invoke-direct {v0, v3}, Lokhttp3/ConnectionSpec$Builder;-><init>(Z)V

    sget-object v1, Lokhttp3/ConnectionSpec;->RESTRICTED_CIPHER_SUITES:[Lokhttp3/CipherSuite;

    .line 92
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    new-array v1, v5, [Lokhttp3/TlsVersion;

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;

    aput-object v2, v1, v4

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    aput-object v2, v1, v3

    .line 93
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v3}, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lokhttp3/ConnectionSpec;->RESTRICTED_TLS:Lokhttp3/ConnectionSpec;

    .line 98
    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    invoke-direct {v0, v3}, Lokhttp3/ConnectionSpec$Builder;-><init>(Z)V

    sget-object v1, Lokhttp3/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lokhttp3/CipherSuite;

    .line 99
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    new-array v1, v7, [Lokhttp3/TlsVersion;

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;

    aput-object v2, v1, v4

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    aput-object v2, v1, v5

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    aput-object v2, v1, v6

    .line 100
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v3}, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    .line 105
    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    invoke-direct {v0, v3}, Lokhttp3/ConnectionSpec$Builder;-><init>(Z)V

    sget-object v1, Lokhttp3/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lokhttp3/CipherSuite;

    .line 106
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    new-array v1, v3, [Lokhttp3/TlsVersion;

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    aput-object v2, v1, v4

    .line 107
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v3}, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lokhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lokhttp3/ConnectionSpec;

    .line 112
    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    invoke-direct {v0, v4}, Lokhttp3/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    return-void
.end method

.method constructor <init>(Lokhttp3/ConnectionSpec$Builder;)V
    .registers 3
    .param p1, "builder"    # Lokhttp3/ConnectionSpec$Builder;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iget-boolean v0, p1, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    iput-boolean v0, p0, Lokhttp3/ConnectionSpec;->tls:Z

    .line 121
    iget-object v0, p1, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 122
    iget-object v0, p1, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    .line 123
    iget-boolean v0, p1, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    iput-boolean v0, p0, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    .line 124
    return-void
.end method

.method private supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lokhttp3/ConnectionSpec;
    .registers 10
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    .prologue
    .line 167
    iget-object v4, p0, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v4, :cond_49

    .line 168
    sget-object v4, Lokhttp3/CipherSuite;->ORDER_BY_NAME:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lokhttp3/internal/Util;->intersect(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "cipherSuitesIntersection":[Ljava/lang/String;
    :goto_10
    iget-object v4, p0, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v4, :cond_4e

    .line 171
    sget-object v4, Lokhttp3/internal/Util;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lokhttp3/internal/Util;->intersect(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "tlsVersionsIntersection":[Ljava/lang/String;
    :goto_20
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "supportedCipherSuites":[Ljava/lang/String;
    sget-object v4, Lokhttp3/CipherSuite;->ORDER_BY_NAME:Ljava/util/Comparator;

    const-string v5, "TLS_FALLBACK_SCSV"

    invoke-static {v4, v2, v5}, Lokhttp3/internal/Util;->indexOf(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 179
    .local v1, "indexOfFallbackScsv":I
    if-eqz p2, :cond_37

    const/4 v4, -0x1

    if-eq v1, v4, :cond_37

    .line 180
    aget-object v4, v2, v1

    invoke-static {v0, v4}, Lokhttp3/internal/Util;->concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_37
    new-instance v4, Lokhttp3/ConnectionSpec$Builder;

    invoke-direct {v4, p0}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    .line 185
    invoke-virtual {v4, v0}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v4

    .line 186
    invoke-virtual {v4, v3}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v4

    .line 187
    invoke-virtual {v4}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v4

    .line 184
    return-object v4

    .line 169
    .end local v0    # "cipherSuitesIntersection":[Ljava/lang/String;
    .end local v1    # "indexOfFallbackScsv":I
    .end local v2    # "supportedCipherSuites":[Ljava/lang/String;
    .end local v3    # "tlsVersionsIntersection":[Ljava/lang/String;
    :cond_49
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 172
    .restart local v0    # "cipherSuitesIntersection":[Ljava/lang/String;
    :cond_4e
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    goto :goto_20
.end method


# virtual methods
.method apply(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 5
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lokhttp3/ConnectionSpec;->supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lokhttp3/ConnectionSpec;

    move-result-object v0

    .line 154
    .local v0, "specToApply":Lokhttp3/ConnectionSpec;
    iget-object v1, v0, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 155
    iget-object v1, v0, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 157
    :cond_d
    iget-object v1, v0, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 158
    iget-object v1, v0, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 160
    :cond_16
    return-void
.end method

.method public cipherSuites()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/CipherSuite;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/CipherSuite;->forJavaNames([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 220
    instance-of v3, p1, Lokhttp3/ConnectionSpec;

    if-nez v3, :cond_7

    .line 232
    :cond_6
    :goto_6
    return v1

    .line 221
    :cond_7
    if-ne p1, p0, :cond_b

    move v1, v2

    goto :goto_6

    :cond_b
    move-object v0, p1

    .line 223
    check-cast v0, Lokhttp3/ConnectionSpec;

    .line 224
    .local v0, "that":Lokhttp3/ConnectionSpec;
    iget-boolean v3, p0, Lokhttp3/ConnectionSpec;->tls:Z

    iget-boolean v4, v0, Lokhttp3/ConnectionSpec;->tls:Z

    if-ne v3, v4, :cond_6

    .line 226
    iget-boolean v3, p0, Lokhttp3/ConnectionSpec;->tls:Z

    if-eqz v3, :cond_32

    .line 227
    iget-object v3, p0, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iget-object v4, v0, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 228
    iget-object v3, p0, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iget-object v4, v0, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 229
    iget-boolean v3, p0, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    iget-boolean v4, v0, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    if-ne v3, v4, :cond_6

    :cond_32
    move v1, v2

    .line 232
    goto :goto_6
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 236
    const/16 v0, 0x11

    .line 237
    .local v0, "result":I
    iget-boolean v1, p0, Lokhttp3/ConnectionSpec;->tls:Z

    if-eqz v1, :cond_21

    .line 238
    iget-object v1, p0, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 239
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 240
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    :goto_1f
    add-int v0, v2, v1

    .line 242
    :cond_21
    return v0

    .line 240
    :cond_22
    const/4 v1, 0x1

    goto :goto_1f
.end method

.method public isCompatible(Ljavax/net/ssl/SSLSocket;)Z
    .registers 6
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    const/4 v0, 0x0

    .line 202
    iget-boolean v1, p0, Lokhttp3/ConnectionSpec;->tls:Z

    if-nez v1, :cond_6

    .line 216
    :cond_5
    :goto_5
    return v0

    .line 206
    :cond_6
    iget-object v1, p0, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_18

    sget-object v1, Lokhttp3/internal/Util;->NATURAL_ORDER:Ljava/util/Comparator;

    iget-object v2, p0, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-static {v1, v2, v3}, Lokhttp3/internal/Util;->nonEmptyIntersection(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 211
    :cond_18
    iget-object v1, p0, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v1, :cond_2a

    sget-object v1, Lokhttp3/CipherSuite;->ORDER_BY_NAME:Ljava/util/Comparator;

    iget-object v2, p0, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-static {v1, v2, v3}, Lokhttp3/internal/Util;->nonEmptyIntersection(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 216
    :cond_2a
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isTls()Z
    .registers 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec;->tls:Z

    return v0
.end method

.method public supportsTlsExtensions()Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    return v0
.end method

.method public tlsVersions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/TlsVersion;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/TlsVersion;->forJavaNames([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 246
    iget-boolean v2, p0, Lokhttp3/ConnectionSpec;->tls:Z

    if-nez v2, :cond_7

    .line 247
    const-string v2, "ConnectionSpec()"

    .line 252
    :goto_6
    return-object v2

    .line 250
    :cond_7
    iget-object v2, p0, Lokhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v2, :cond_4f

    invoke-virtual {p0}, Lokhttp3/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "cipherSuitesString":Ljava/lang/String;
    :goto_13
    iget-object v2, p0, Lokhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v2, :cond_52

    invoke-virtual {p0}, Lokhttp3/ConnectionSpec;->tlsVersions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "tlsVersionsString":Ljava/lang/String;
    :goto_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tlsVersions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", supportsTlsExtensions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lokhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 250
    .end local v0    # "cipherSuitesString":Ljava/lang/String;
    .end local v1    # "tlsVersionsString":Ljava/lang/String;
    :cond_4f
    const-string v0, "[all enabled]"

    goto :goto_13

    .line 251
    .restart local v0    # "cipherSuitesString":Ljava/lang/String;
    :cond_52
    const-string v1, "[all enabled]"

    goto :goto_1f
.end method
