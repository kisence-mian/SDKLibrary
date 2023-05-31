.class public final Lcom/bytedance/sdk/a/b/a/i/a;
.super Lcom/bytedance/sdk/a/b/a/i/c;
.source "BasicCertificateChainCleaner.java"


# instance fields
.field private final a:Lcom/bytedance/sdk/a/b/a/i/f;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/b/a/i/f;)V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/i/c;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/i/a;->a:Lcom/bytedance/sdk/a/b/a/i/f;

    .line 48
    return-void
.end method

.method private a(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 117
    :goto_f
    return v0

    .line 114
    :cond_10
    :try_start_10
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_17
    .catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_17} :catch_19

    .line 115
    const/4 v0, 0x1

    goto :goto_f

    .line 116
    :catch_19
    move-exception v1

    goto :goto_f
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 60
    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {v6}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v0

    move v3, v0

    .line 66
    :goto_15
    const/16 v0, 0x9

    if-ge v5, v0, :cond_85

    .line 67
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 72
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/a;->a:Lcom/bytedance/sdk/a/b/a/i/f;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/a/b/a/i/f;->a(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_4a

    .line 74
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v2, :cond_39

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 75
    :cond_39
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_3c
    invoke-direct {p0, v1, v1}, Lcom/bytedance/sdk/a/b/a/i/a;->a(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_44

    move-object v0, v4

    .line 97
    :goto_43
    return-object v0

    :cond_44
    move v0, v2

    .line 66
    :goto_45
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v3, v0

    goto :goto_15

    .line 86
    :cond_4a
    invoke-interface {v6}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 87
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 88
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/i/a;->a(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 89
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 90
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    .line 91
    goto :goto_45

    .line 96
    :cond_68
    if-eqz v3, :cond_6c

    move-object v0, v4

    .line 97
    goto :goto_43

    .line 101
    :cond_6c
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find a trusted cert that signed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_85
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate chain too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 128
    if-ne p1, p0, :cond_4

    .line 129
    :cond_3
    :goto_3
    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/sdk/a/b/a/i/a;

    if-eqz v1, :cond_14

    check-cast p1, Lcom/bytedance/sdk/a/b/a/i/a;

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a/i/a;->a:Lcom/bytedance/sdk/a/b/a/i/f;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/i/a;->a:Lcom/bytedance/sdk/a/b/a/i/f;

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_14
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/a;->a:Lcom/bytedance/sdk/a/b/a/i/f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
