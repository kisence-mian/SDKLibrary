.class public final Lcom/bytedance/sdk/a/b/a/i/b;
.super Ljava/lang/Object;
.source "BasicTrustRootIndex.java"

# interfaces
.implements Lcom/bytedance/sdk/a/b/a/i/f;


# instance fields
.field private final a:Ljava/util/Map;
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

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/b;->a:Ljava/util/Map;

    .line 35
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, v2, :cond_31

    aget-object v3, p1, v1

    .line 36
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/b;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 38
    if-nez v0, :cond_2a

    .line 39
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 40
    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/i/b;->a:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_2a
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 44
    :cond_31
    return-void
.end method


# virtual methods
.method public a(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 49
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/i/b;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 50
    if-nez v0, :cond_11

    move-object v0, v1

    .line 61
    :goto_10
    return-object v0

    .line 52
    :cond_11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 53
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 55
    :try_start_25
    invoke-virtual {p1, v3}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_10

    .line 57
    :catch_29
    move-exception v0

    goto :goto_15

    :cond_2b
    move-object v0, v1

    .line 61
    goto :goto_10
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 66
    if-ne p1, p0, :cond_4

    .line 67
    :cond_3
    :goto_3
    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/sdk/a/b/a/i/b;

    if-eqz v1, :cond_14

    check-cast p1, Lcom/bytedance/sdk/a/b/a/i/b;

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a/i/b;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/i/b;->a:Ljava/util/Map;

    .line 68
    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_14
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method
