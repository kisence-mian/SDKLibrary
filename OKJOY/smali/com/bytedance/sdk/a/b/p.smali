.class public abstract Lcom/bytedance/sdk/a/b/p;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/p$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/bytedance/sdk/a/b/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Lcom/bytedance/sdk/a/b/p$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/p$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/a/b/p;->a:Lcom/bytedance/sdk/a/b/p;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/bytedance/sdk/a/b/p;)Lcom/bytedance/sdk/a/b/p$a;
    .registers 2

    .prologue
    .line 62
    new-instance v0, Lcom/bytedance/sdk/a/b/p$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/p$2;-><init>(Lcom/bytedance/sdk/a/b/p;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/e;)V
    .registers 2

    .prologue
    .line 78
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/e;J)V
    .registers 4

    .prologue
    .line 220
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/aa;)V
    .registers 3

    .prologue
    .line 243
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/i;)V
    .registers 3

    .prologue
    .line 165
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/q;)V
    .registers 3

    .prologue
    .line 133
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/y;)V
    .registers 3

    .prologue
    .line 199
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/e;Ljava/io/IOException;)V
    .registers 3

    .prologue
    .line 283
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/e;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 90
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/e;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/a/b/e;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .registers 4

    .prologue
    .line 110
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/bytedance/sdk/a/b/w;)V
    .registers 5

    .prologue
    .line 144
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/bytedance/sdk/a/b/w;Ljava/io/IOException;)V
    .registers 6

    .prologue
    .line 156
    return-void
.end method

.method public b(Lcom/bytedance/sdk/a/b/e;)V
    .registers 2

    .prologue
    .line 125
    return-void
.end method

.method public b(Lcom/bytedance/sdk/a/b/e;J)V
    .registers 4

    .prologue
    .line 266
    return-void
.end method

.method public b(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/i;)V
    .registers 3

    .prologue
    .line 176
    return-void
.end method

.method public c(Lcom/bytedance/sdk/a/b/e;)V
    .registers 2

    .prologue
    .line 188
    return-void
.end method

.method public d(Lcom/bytedance/sdk/a/b/e;)V
    .registers 2

    .prologue
    .line 212
    return-void
.end method

.method public e(Lcom/bytedance/sdk/a/b/e;)V
    .registers 2

    .prologue
    .line 232
    return-void
.end method

.method public f(Lcom/bytedance/sdk/a/b/e;)V
    .registers 2

    .prologue
    .line 255
    return-void
.end method

.method public g(Lcom/bytedance/sdk/a/b/e;)V
    .registers 2

    .prologue
    .line 275
    return-void
.end method
