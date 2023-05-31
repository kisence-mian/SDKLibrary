.class public final Lokhttp3/Handshake;
.super Ljava/lang/Object;
.source "Handshake.java"


# instance fields
.field private final cipherSuite:Lokhttp3/CipherSuite;

.field private final localCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final peerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final tlsVersion:Lokhttp3/TlsVersion;


# direct methods
.method private constructor <init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .param p1, "tlsVersion"    # Lokhttp3/TlsVersion;
    .param p2, "cipherSuite"    # Lokhttp3/CipherSuite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/TlsVersion;",
            "Lokhttp3/CipherSuite;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .local p4, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;

    .line 45
    iput-object p2, p0, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    .line 46
    iput-object p3, p0, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;

    .line 47
    iput-object p4, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    .line 48
    return-void
.end method

.method public static get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;
    .registers 12
    .param p0, "session"    # Ljavax/net/ssl/SSLSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "cipherSuiteString":Ljava/lang/String;
    if-nez v1, :cond_e

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "cipherSuite == null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 53
    :cond_e
    const-string v9, "SSL_NULL_WITH_NULL_NULL"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 54
    new-instance v9, Ljava/io/IOException;

    const-string v10, "cipherSuite == SSL_NULL_WITH_NULL_NULL"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 56
    :cond_1e
    invoke-static {v1}, Lokhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v0

    .line 58
    .local v0, "cipherSuite":Lokhttp3/CipherSuite;
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, "tlsVersionString":Ljava/lang/String;
    if-nez v8, :cond_30

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "tlsVersion == null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 60
    :cond_30
    const-string v9, "NONE"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_40

    new-instance v9, Ljava/io/IOException;

    const-string v10, "tlsVersion == NONE"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 61
    :cond_40
    invoke-static {v8}, Lokhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v7

    .line 65
    .local v7, "tlsVersion":Lokhttp3/TlsVersion;
    :try_start_44
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_47
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_44 .. :try_end_47} :catch_5e

    move-result-object v5

    .line 69
    .local v5, "peerCertificates":[Ljava/security/cert/Certificate;
    :goto_48
    if-eqz v5, :cond_61

    .line 70
    invoke-static {v5}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 73
    .local v6, "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_4e
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 74
    .local v3, "localCertificates":[Ljava/security/cert/Certificate;
    if-eqz v3, :cond_66

    .line 75
    invoke-static {v3}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 78
    .local v4, "localCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_58
    new-instance v9, Lokhttp3/Handshake;

    invoke-direct {v9, v7, v0, v6, v4}, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    return-object v9

    .line 66
    .end local v3    # "localCertificates":[Ljava/security/cert/Certificate;
    .end local v4    # "localCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v5    # "peerCertificates":[Ljava/security/cert/Certificate;
    .end local v6    # "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catch_5e
    move-exception v2

    .line 67
    .local v2, "ignored":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v5, 0x0

    .restart local v5    # "peerCertificates":[Ljava/security/cert/Certificate;
    goto :goto_48

    .line 71
    .end local v2    # "ignored":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :cond_61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_4e

    .line 76
    .restart local v3    # "localCertificates":[Ljava/security/cert/Certificate;
    .restart local v6    # "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_58
.end method

.method public static get(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp3/Handshake;
    .registers 7
    .param p0, "tlsVersion"    # Lokhttp3/TlsVersion;
    .param p1, "cipherSuite"    # Lokhttp3/CipherSuite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/TlsVersion;",
            "Lokhttp3/CipherSuite;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Lokhttp3/Handshake;"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .local p3, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tlsVersion == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_a
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_14
    new-instance v0, Lokhttp3/Handshake;

    invoke-static {p2}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 86
    invoke-static {p3}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    .line 85
    return-object v0
.end method


# virtual methods
.method public cipherSuite()Lokhttp3/CipherSuite;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 127
    instance-of v2, p1, Lokhttp3/Handshake;

    if-nez v2, :cond_6

    .line 129
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 128
    check-cast v0, Lokhttp3/Handshake;

    .line 129
    .local v0, "that":Lokhttp3/Handshake;
    iget-object v2, p0, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;

    iget-object v3, v0, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;

    invoke-virtual {v2, v3}, Lokhttp3/TlsVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    iget-object v3, v0, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;

    iget-object v3, v0, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;

    .line 131
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    iget-object v3, v0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    .line 132
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 136
    const/16 v0, 0x11

    .line 137
    .local v0, "result":I
    iget-object v1, p0, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;

    invoke-virtual {v1}, Lokhttp3/TlsVersion;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 138
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 139
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 140
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 141
    return v0
.end method

.method public localCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    return-object v0
.end method

.method public localPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 122
    iget-object v0, p0, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 121
    :goto_15
    return-object v0

    .line 123
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public peerCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;

    return-object v0
.end method

.method public peerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 110
    iget-object v0, p0, Lokhttp3/Handshake;->peerCertificates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 109
    :goto_15
    return-object v0

    .line 111
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public tlsVersion()Lokhttp3/TlsVersion;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;

    return-object v0
.end method
