.class public final Lcom/bytedance/sdk/a/b/q;
.super Ljava/lang/Object;
.source "Handshake.java"


# instance fields
.field private final a:Lcom/bytedance/sdk/a/b/ad;

.field private final b:Lcom/bytedance/sdk/a/b/h;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

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
    .registers 5

    .line 51
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_43

    .line 53
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/h;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/h;

    move-result-object v0

    .line 55
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_3b

    .line 57
    invoke-static {v1}, Lcom/bytedance/sdk/a/b/ad;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/ad;

    move-result-object v1

    .line 61
    :try_start_14
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2
    :try_end_18
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_14 .. :try_end_18} :catch_19

    .line 64
    goto :goto_1b

    .line 62
    :catch_19
    move-exception v2

    .line 63
    const/4 v2, 0x0

    .line 65
    :goto_1b
    if-eqz v2, :cond_22

    .line 66
    invoke-static {v2}, Lcom/bytedance/sdk/a/b/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_26

    .line 67
    :cond_22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 69
    :goto_26
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    .line 70
    if-eqz p0, :cond_31

    .line 71
    invoke-static {p0}, Lcom/bytedance/sdk/a/b/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_35

    .line 72
    :cond_31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 74
    :goto_35
    new-instance v3, Lcom/bytedance/sdk/a/b/q;

    invoke-direct {v3, v1, v0, v2, p0}, Lcom/bytedance/sdk/a/b/q;-><init>(Lcom/bytedance/sdk/a/b/ad;Lcom/bytedance/sdk/a/b/h;Ljava/util/List;Ljava/util/List;)V

    return-object v3

    .line 56
    :cond_3b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "tlsVersion == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_43
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cipherSuite == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/b/h;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/q;->b:Lcom/bytedance/sdk/a/b/h;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/q;->c:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 134
    instance-of v0, p1, Lcom/bytedance/sdk/a/b/q;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 135
    :cond_6
    check-cast p1, Lcom/bytedance/sdk/a/b/q;

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/q;->a:Lcom/bytedance/sdk/a/b/ad;

    iget-object v2, p1, Lcom/bytedance/sdk/a/b/q;->a:Lcom/bytedance/sdk/a/b/ad;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/a/b/ad;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/q;->b:Lcom/bytedance/sdk/a/b/h;

    iget-object v2, p1, Lcom/bytedance/sdk/a/b/q;->b:Lcom/bytedance/sdk/a/b/h;

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/q;->c:Ljava/util/List;

    iget-object v2, p1, Lcom/bytedance/sdk/a/b/q;->c:Ljava/util/List;

    .line 138
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/q;->d:Ljava/util/List;

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/q;->d:Ljava/util/List;

    .line 139
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    nop

    .line 136
    :goto_33
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 144
    nop

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/q;->a:Lcom/bytedance/sdk/a/b/ad;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ad;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 146
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/q;->b:Lcom/bytedance/sdk/a/b/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 147
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/q;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 148
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/q;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 149
    return v1
.end method
