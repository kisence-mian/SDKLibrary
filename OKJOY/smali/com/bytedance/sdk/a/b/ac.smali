.class public final Lcom/bytedance/sdk/a/b/ac;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field final a:Lcom/bytedance/sdk/a/b/a;

.field final b:Ljava/net/Proxy;

.field final c:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/b/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .registers 6

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_d

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "address == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_d
    if-nez p2, :cond_17

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_17
    if-nez p3, :cond_21

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inetSocketAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_21
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/ac;->a:Lcom/bytedance/sdk/a/b/a;

    .line 52
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/ac;->b:Ljava/net/Proxy;

    .line 53
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/ac;->c:Ljava/net/InetSocketAddress;

    .line 54
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/b/a;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/ac;->a:Lcom/bytedance/sdk/a/b/a;

    return-object v0
.end method

.method public b()Ljava/net/Proxy;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/ac;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public c()Ljava/net/InetSocketAddress;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/ac;->c:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/ac;->a:Lcom/bytedance/sdk/a/b/a;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/ac;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 84
    instance-of v0, p1, Lcom/bytedance/sdk/a/b/ac;

    if-eqz v0, :cond_2c

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/a/b/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/ac;->a:Lcom/bytedance/sdk/a/b/a;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/ac;->a:Lcom/bytedance/sdk/a/b/a;

    .line 85
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/a/b/ac;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/ac;->b:Ljava/net/Proxy;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/ac;->b:Ljava/net/Proxy;

    .line 86
    invoke-virtual {v0, v1}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    check-cast p1, Lcom/bytedance/sdk/a/b/ac;

    iget-object v0, p1, Lcom/bytedance/sdk/a/b/ac;->c:Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/ac;->c:Ljava/net/InetSocketAddress;

    .line 87
    invoke-virtual {v0, v1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    .line 84
    :goto_2b
    return v0

    .line 87
    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 92
    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/ac;->a:Lcom/bytedance/sdk/a/b/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 94
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/ac;->b:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/ac;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Route{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/ac;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
