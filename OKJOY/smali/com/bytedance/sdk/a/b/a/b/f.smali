.class public final Lcom/bytedance/sdk/a/b/a/b/f;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/a/b/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/a/b/a;

.field private final b:Lcom/bytedance/sdk/a/b/a/b/d;

.field private final c:Lcom/bytedance/sdk/a/b/e;

.field private final d:Lcom/bytedance/sdk/a/b/p;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/ac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/d;Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;)V
    .registers 7

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->e:Ljava/util/List;

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->g:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->h:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/f;->a:Lcom/bytedance/sdk/a/b/a;

    .line 60
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/b/f;->b:Lcom/bytedance/sdk/a/b/a/b/d;

    .line 61
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/a/b/f;->c:Lcom/bytedance/sdk/a/b/e;

    .line 62
    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a/b/f;->d:Lcom/bytedance/sdk/a/b/p;

    .line 64
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a;->h()Ljava/net/Proxy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/b/f;->a(Lcom/bytedance/sdk/a/b/s;Ljava/net/Proxy;)V

    .line 65
    return-void
.end method

.method static a(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 215
    if-nez v0, :cond_b

    .line 219
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private a(Lcom/bytedance/sdk/a/b/s;Ljava/net/Proxy;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 127
    if-eqz p2, :cond_c

    .line 129
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->e:Ljava/util/List;

    .line 137
    :goto_9
    iput v2, p0, Lcom/bytedance/sdk/a/b/a/b/f;->f:I

    .line 138
    return-void

    .line 132
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->a:Lcom/bytedance/sdk/a/b/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a;->g()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/s;->a()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 134
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 135
    :goto_26
    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->e:Ljava/util/List;

    goto :goto_9

    .line 134
    :cond_29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v1, v0, v2

    .line 135
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_26
.end method

.method private a(Ljava/net/Proxy;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->g:Ljava/util/List;

    .line 169
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_17

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_5e

    .line 170
    :cond_17
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->a:Lcom/bytedance/sdk/a/b/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v1

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->a:Lcom/bytedance/sdk/a/b/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s;->g()I

    move-result v0

    move v2, v0

    move-object v0, v1

    .line 183
    :goto_2d
    const/4 v1, 0x1

    if-lt v2, v1, :cond_35

    const v1, 0xffff

    if-le v2, v1, :cond_90

    .line 184
    :cond_35
    new-instance v1, Ljava/net/SocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No route to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; port is out of range"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_5e
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 174
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_83

    .line 175
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_83
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 179
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/b/f;->a(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    move v2, v0

    move-object v0, v1

    goto :goto_2d

    .line 188
    :cond_90
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v3, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v1, v3, :cond_a2

    .line 189
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/f;->g:Ljava/util/List;

    invoke-static {v0, v2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_a1
    return-void

    .line 191
    :cond_a2
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/f;->d:Lcom/bytedance/sdk/a/b/p;

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/f;->c:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v1, v3, v0}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/f;->a:Lcom/bytedance/sdk/a/b/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a;->b()Lcom/bytedance/sdk/a/b/o;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/a/b/o;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 195
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 196
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/f;->a:Lcom/bytedance/sdk/a/b/a;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a;->b()Lcom/bytedance/sdk/a/b/o;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned no addresses for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_dc
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/f;->d:Lcom/bytedance/sdk/a/b/p;

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/b/f;->c:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v1, v4, v0, v3}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Ljava/lang/String;Ljava/util/List;)V

    .line 201
    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    :goto_e9
    if-ge v1, v4, :cond_a1

    .line 202
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 203
    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/b/f;->g:Ljava/util/List;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e9
.end method

.method private c()Z
    .registers 3

    .prologue
    .line 144
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->f:I

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/f;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private d()Ljava/net/Proxy;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/b/f;->c()Z

    move-result v0

    if-nez v0, :cond_35

    .line 152
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/f;->a:Lcom/bytedance/sdk/a/b/a;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/f;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_35
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->e:Ljava/util/List;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/b/f;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/b/f;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 156
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/b/f;->a(Ljava/net/Proxy;)V

    .line 157
    return-object v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/ac;Ljava/io/IOException;)V
    .registers 6

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/ac;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_2f

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->a:Lcom/bytedance/sdk/a/b/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a;->g()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->a:Lcom/bytedance/sdk/a/b/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a;->g()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/f;->a:Lcom/bytedance/sdk/a/b/a;

    .line 117
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/s;->a()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/ac;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 116
    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 120
    :cond_2f
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->b:Lcom/bytedance/sdk/a/b/a/b/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/a/b/d;->a(Lcom/bytedance/sdk/a/b/ac;)V

    .line 121
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/b/f;->c()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public b()Lcom/bytedance/sdk/a/b/a/b/f$a;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/b/f;->a()Z

    move-result v0

    if-nez v0, :cond_c

    .line 76
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 80
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    :cond_11
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/b/f;->c()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 85
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/b/f;->d()Ljava/net/Proxy;

    move-result-object v3

    .line 86
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/f;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    :goto_23
    if-ge v1, v4, :cond_49

    .line 87
    new-instance v5, Lcom/bytedance/sdk/a/b/ac;

    iget-object v6, p0, Lcom/bytedance/sdk/a/b/a/b/f;->a:Lcom/bytedance/sdk/a/b/a;

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v6, v3, v0}, Lcom/bytedance/sdk/a/b/ac;-><init>(Lcom/bytedance/sdk/a/b/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->b:Lcom/bytedance/sdk/a/b/a/b/d;

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/a/b/a/b/d;->c(Lcom/bytedance/sdk/a/b/ac;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->h:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23

    .line 91
    :cond_45
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 95
    :cond_49
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 100
    :cond_4f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    :cond_5f
    new-instance v0, Lcom/bytedance/sdk/a/b/a/b/f$a;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/a/b/a/b/f$a;-><init>(Ljava/util/List;)V

    return-object v0
.end method
