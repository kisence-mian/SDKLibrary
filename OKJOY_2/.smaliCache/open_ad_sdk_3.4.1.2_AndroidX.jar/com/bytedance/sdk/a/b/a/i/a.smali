.class public final Lcom/bytedance/sdk/a/b/a/i/a;
.super Lcom/bytedance/sdk/a/b/a/i/c;
.source "BasicCertificateChainCleaner.java"


# instance fields
.field private final a:Lcom/bytedance/sdk/a/b/a/i/f;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/b/a/i/f;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/i/c;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/i/a;->a:Lcom/bytedance/sdk/a/b/a/i/f;

    .line 48
    return-void
.end method

.method private a(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .registers 5

    .line 112
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 114
    :cond_10
    :try_start_10
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_17
    .catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_17} :catch_19

    .line 115
    const/4 p1, 0x1

    return p1

    .line 116
    :catch_19
    move-exception p1

    .line 117
    return v1
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 60
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {p2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    nop

    .line 66
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    const/16 v2, 0x9

    if-ge v0, v2, :cond_82

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 72
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/i/a;->a:Lcom/bytedance/sdk/a/b/a/i/f;

    invoke-interface {v4, v2}, Lcom/bytedance/sdk/a/b/a/i/f;->a(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 73
    if-eqz v4, :cond_45

    .line 74
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_38

    invoke-virtual {v2, v4}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 75
    :cond_38
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_3b
    invoke-direct {p0, v4, v4}, Lcom/bytedance/sdk/a/b/a/i/a;->a(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 78
    return-object p1

    .line 80
    :cond_42
    nop

    .line 81
    move v1, v3

    goto :goto_62

    .line 86
    :cond_45
    invoke-interface {p2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 87
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 88
    invoke-direct {p0, v2, v4}, Lcom/bytedance/sdk/a/b/a/i/a;->a(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 89
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 90
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    nop

    .line 66
    :goto_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 93
    :cond_65
    goto :goto_49

    .line 96
    :cond_66
    if-eqz v1, :cond_69

    .line 97
    return-object p1

    .line 101
    :cond_69
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to find a trusted cert that signed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_82
    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate chain too long: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 128
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 129
    :cond_4
    instance-of v1, p1, Lcom/bytedance/sdk/a/b/a/i/a;

    if-eqz v1, :cond_15

    check-cast p1, Lcom/bytedance/sdk/a/b/a/i/a;

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/i/a;->a:Lcom/bytedance/sdk/a/b/a/i/f;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/i/a;->a:Lcom/bytedance/sdk/a/b/a/i/f;

    .line 130
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 129
    :goto_16
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/i/a;->a:Lcom/bytedance/sdk/a/b/a/i/f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
