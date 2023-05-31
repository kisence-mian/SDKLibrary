.class public final Lokhttp3/internal/tls/BasicTrustRootIndex;
.super Ljava/lang/Object;
.source "BasicTrustRootIndex.java"

# interfaces
.implements Lokhttp3/internal/tls/TrustRootIndex;


# instance fields
.field private final subjectToCaCerts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Ljava/security/cert/X509Certificate;)V
    .registers 8
    .param p1, "caCerts"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    .line 32
    array-length v4, p1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v4, :cond_2f

    aget-object v0, p1, v3

    .line 33
    .local v0, "caCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 34
    .local v1, "subject":Ljavax/security/auth/x500/X500Principal;
    iget-object v5, p0, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 35
    .local v2, "subjectCaCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    if-nez v2, :cond_29

    .line 36
    new-instance v2, Ljava/util/LinkedHashSet;

    .end local v2    # "subjectCaCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    const/4 v5, 0x1

    invoke-direct {v2, v5}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 37
    .restart local v2    # "subjectCaCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    iget-object v5, p0, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_29
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 41
    .end local v0    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v1    # "subject":Ljavax/security/auth/x500/X500Principal;
    .end local v2    # "subjectCaCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :cond_2f
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 61
    if-ne p1, p0, :cond_4

    .line 62
    .end local p1    # "other":Ljava/lang/Object;
    :cond_3
    :goto_3
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_4
    instance-of v1, p1, Lokhttp3/internal/tls/BasicTrustRootIndex;

    if-eqz v1, :cond_14

    check-cast p1, Lokhttp3/internal/tls/BasicTrustRootIndex;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    iget-object v2, p0, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    .line 63
    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_14
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 9
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v4, 0x0

    .line 44
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 45
    .local v1, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v5, p0, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 46
    .local v3, "subjectCaCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    if-nez v3, :cond_11

    move-object v0, v4

    .line 57
    :goto_10
    return-object v0

    .line 48
    :cond_11
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 49
    .local v0, "caCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 51
    .local v2, "publicKey":Ljava/security/PublicKey;
    :try_start_25
    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_10

    .line 53
    :catch_29
    move-exception v6

    goto :goto_15

    .end local v0    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v2    # "publicKey":Ljava/security/PublicKey;
    :cond_2b
    move-object v0, v4

    .line 57
    goto :goto_10
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lokhttp3/internal/tls/BasicTrustRootIndex;->subjectToCaCerts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method
