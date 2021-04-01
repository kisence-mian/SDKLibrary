.class final Lcom/mintegral/msdk/f/i;
.super Ljava/net/ProxySelector;
.source "IgnoreHostProxySelector.java"


# static fields
.field private static final a:Ljava/util/List;
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
.field private final b:Ljava/net/ProxySelector;

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/Proxy;

    const/4 v1, 0x0

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/f/i;->a:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/net/ProxySelector;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/mintegral/msdk/f/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/mintegral/msdk/f/i;->b:Ljava/net/ProxySelector;

    .line 24
    invoke-static {p2}, Lcom/mintegral/msdk/f/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/f/i;->c:Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/mintegral/msdk/f/i;->d:I

    .line 26
    return-void
.end method

.method static a(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 29
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/mintegral/msdk/f/i;

    invoke-direct {v1, v0, p0, p1}, Lcom/mintegral/msdk/f/i;-><init>(Ljava/net/ProxySelector;Ljava/lang/String;I)V

    .line 31
    invoke-static {v1}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .registers 5

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mintegral/msdk/f/i;->b:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 43
    return-void
.end method

.method public final select(Ljava/net/URI;)Ljava/util/List;
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

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mintegral/msdk/f/i;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/mintegral/msdk/f/i;->d:I

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    .line 37
    :goto_15
    if-eqz v0, :cond_1c

    sget-object v0, Lcom/mintegral/msdk/f/i;->a:Ljava/util/List;

    :goto_19
    return-object v0

    .line 36
    :cond_1a
    const/4 v0, 0x0

    goto :goto_15

    .line 37
    :cond_1c
    iget-object v0, p0, Lcom/mintegral/msdk/f/i;->b:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    goto :goto_19
.end method
