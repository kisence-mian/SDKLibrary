.class public final Lcom/bytedance/sdk/a/b/a/b/b;
.super Ljava/lang/Object;
.source "ConnectionSpecSelector.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/k;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/b/b;->b:I

    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/b;->a:Ljava/util/List;

    .line 49
    return-void
.end method

.method private b(Ljavax/net/ssl/SSLSocket;)Z
    .registers 4

    .line 137
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/b/b;->b:I

    :goto_2
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 138
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/a/b/k;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/a/b/k;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 139
    const/4 p1, 0x1

    return p1

    .line 137
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 142
    :cond_1d
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Lcom/bytedance/sdk/a/b/k;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    nop

    .line 59
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/b/b;->b:I

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_9
    if-ge v0, v1, :cond_22

    .line 60
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/b;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/a/b/k;

    .line 61
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/a/b/k;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 62
    nop

    .line 63
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/b/b;->b:I

    .line 64
    goto :goto_23

    .line 59
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_22
    const/4 v2, 0x0

    .line 68
    :goto_23
    if-eqz v2, :cond_33

    .line 78
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/b/b;->b(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/b/b;->c:Z

    .line 80
    sget-object v0, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/b/b;->d:Z

    invoke-virtual {v0, v2, p1, v1}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/k;Ljavax/net/ssl/SSLSocket;Z)V

    .line 82
    return-object v2

    .line 72
    :cond_33
    new-instance v0, Ljava/net/UnknownServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find acceptable protocols. isFallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/a/b/b;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", modes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/b;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", supported protocols="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/io/IOException;)Z
    .registers 6

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/b/b;->d:Z

    .line 96
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/b/b;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_9

    .line 97
    return v2

    .line 101
    :cond_9
    instance-of v1, p1, Ljava/net/ProtocolException;

    if-eqz v1, :cond_e

    .line 102
    return v2

    .line 108
    :cond_e
    instance-of v1, p1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_13

    .line 109
    return v2

    .line 114
    :cond_13
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_20

    .line 117
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/security/cert/CertificateException;

    if-eqz v3, :cond_20

    .line 118
    return v2

    .line 121
    :cond_20
    instance-of v3, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v3, :cond_25

    .line 123
    return v2

    .line 128
    :cond_25
    if-nez v1, :cond_2d

    instance-of p1, p1, Ljavax/net/ssl/SSLProtocolException;

    if-eqz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    :cond_2d
    :goto_2d
    return v0
.end method
