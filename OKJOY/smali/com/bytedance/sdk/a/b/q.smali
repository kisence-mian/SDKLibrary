.class public final Lcom/bytedance/sdk/a/b/q;
.super Ljava/lang/Object;
.source "Handshake.java"


# instance fields
.field private final a:Lcom/bytedance/sdk/a/b/ad;

.field private final b:Lcom/bytedance/sdk/a/b/h;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/a/b/ad;Lcom/bytedance/sdk/a/b/h;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/a/b/ad;",
            "Lcom/bytedance/sdk/a/b/h;",
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/q;->a:Lcom/bytedance/sdk/a/b/ad;

    .line 45
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/q;->b:Lcom/bytedance/sdk/a/b/h;

    .line 46
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/q;->c:Ljava/util/List;

    .line 47
    iput-object p4, p0, Lcom/bytedance/sdk/a/b/q;->d:Ljava/util/List;

    .line 48
    return-void
.end method

.method public static a(Ljavax/net/ssl/SSLSession;)Lcom/bytedance/sdk/a/b/q;
    .registers 6

    .prologue
    .line 51
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 52
    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_e
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/h;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/h;

    move-result-object v2

    .line 55
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 56
    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tlsVersion == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_20
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/ad;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/ad;

    move-result-object v3

    .line 61
    :try_start_24
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_27
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_24 .. :try_end_27} :catch_3e

    move-result-object v0

    .line 65
    :goto_28
    if-eqz v0, :cond_41

    .line 66
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 69
    :goto_2e
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_46

    .line 71
    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 74
    :goto_38
    new-instance v4, Lcom/bytedance/sdk/a/b/q;

    invoke-direct {v4, v3, v2, v0, v1}, Lcom/bytedance/sdk/a/b/q;-><init>(Lcom/bytedance/sdk/a/b/ad;Lcom/bytedance/sdk/a/b/h;Ljava/util/List;Ljava/util/List;)V

    return-object v4

    .line 62
    :catch_3e
    move-exception v0

    .line 63
    const/4 v0, 0x0

    goto :goto_28

    .line 67
    :cond_41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2e

    .line 72
    :cond_46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_38
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/b/h;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/q;->b:Lcom/bytedance/sdk/a/b/h;

    return-object v0
.end method

.method public b()Ljava/util/List;
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
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/q;->c:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 134
    instance-of v1, p1, Lcom/bytedance/sdk/a/b/q;

    if-nez v1, :cond_6

    .line 136
    :cond_5
    :goto_5
    return v0

    .line 135
    :cond_6
    check-cast p1, Lcom/bytedance/sdk/a/b/q;

    .line 136
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/q;->a:Lcom/bytedance/sdk/a/b/ad;

    iget-object v2, p1, Lcom/bytedance/sdk/a/b/q;->a:Lcom/bytedance/sdk/a/b/ad;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/a/b/ad;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/q;->b:Lcom/bytedance/sdk/a/b/h;

    iget-object v2, p1, Lcom/bytedance/sdk/a/b/q;->b:Lcom/bytedance/sdk/a/b/h;

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/q;->c:Ljava/util/List;

    iget-object v2, p1, Lcom/bytedance/sdk/a/b/q;->c:Ljava/util/List;

    .line 138
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/q;->d:Ljava/util/List;

    iget-object v2, p1, Lcom/bytedance/sdk/a/b/q;->d:Ljava/util/List;

    .line 139
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 144
    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/q;->a:Lcom/bytedance/sdk/a/b/ad;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ad;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 146
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/q;->b:Lcom/bytedance/sdk/a/b/h;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 147
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/q;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/q;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    return v0
.end method
