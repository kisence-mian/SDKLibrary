.class Lcom/kwad/sdk/core/videocache/i;
.super Ljava/net/ProxySelector;
.source ""


# static fields
.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/net/ProxySelector;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/core/videocache/i;->d:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/net/ProxySelector;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    invoke-static {p1}, Lcom/kwad/sdk/core/videocache/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/i;->a:Ljava/net/ProxySelector;

    invoke-static {p2}, Lcom/kwad/sdk/core/videocache/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/i;->b:Ljava/lang/String;

    iput p3, p0, Lcom/kwad/sdk/core/videocache/i;->c:I

    return-void
.end method

.method static a(Ljava/lang/String;I)V
    .registers 4

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/videocache/i;

    invoke-direct {v1, v0, p0, p1}, Lcom/kwad/sdk/core/videocache/i;-><init>(Ljava/net/ProxySelector;Ljava/lang/String;I)V

    invoke-static {v1}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    return-void
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/i;->a:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/i;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/kwad/sdk/core/videocache/i;->c:I

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_15
    if-eqz v0, :cond_1c

    sget-object v0, Lcom/kwad/sdk/core/videocache/i;->d:Ljava/util/List;

    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_15

    :cond_1c
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/i;->a:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    goto :goto_19
.end method
