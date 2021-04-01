.class public final Lcom/bytedance/sdk/a/b/a/b/b;
.super Ljava/lang/Object;
.source "ConnectionSpecSelector.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/k;",
            ">;)V"
        }
    .end annotation

    .prologue
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

    .prologue
    .line 137
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/b/b;->b:I

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/k;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/k;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 139
    const/4 v0, 0x1

    .line 142
    :goto_1a
    return v0

    .line 137
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 142
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Lcom/bytedance/sdk/a/b/k;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 59
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/b/b;->b:I

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_a
    if-ge v2, v3, :cond_6b

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/b;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/k;

    .line 61
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/k;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 63
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/bytedance/sdk/a/b/a/b/b;->b:I

    .line 68
    :goto_1e
    if-nez v0, :cond_5d

    .line 72
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

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_59
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    .line 78
    :cond_5d
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/b/b;->b(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/b/b;->c:Z

    .line 80
    sget-object v1, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/a/b/b;->d:Z

    invoke-virtual {v1, v0, p1, v2}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/k;Ljavax/net/ssl/SSLSocket;Z)V

    .line 82
    return-object v0

    :cond_6b
    move-object v0, v1

    goto :goto_1e
.end method

.method public a(Ljava/io/IOException;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 94
    iput-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/b/b;->d:Z

    .line 96
    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/a/b/b;->c:Z

    if-nez v2, :cond_9

    .line 128
    :cond_8
    :goto_8
    return v0

    .line 101
    :cond_9
    instance-of v2, p1, Ljava/net/ProtocolException;

    if-nez v2, :cond_8

    .line 108
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-nez v2, :cond_8

    .line 114
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_1d

    .line 117
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_8

    .line 121
    :cond_1d
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_8

    .line 128
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v2, :cond_29

    instance-of v2, p1, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v2, :cond_8

    :cond_29
    move v0, v1

    goto :goto_8
.end method
