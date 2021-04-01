.class public final Lcom/bytedance/sdk/a/b/a/c/a;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/a/b/t;


# instance fields
.field private final a:Lcom/bytedance/sdk/a/b/m;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/b/m;)V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/c/a;->a:Lcom/bytedance/sdk/a/b/m;

    .line 46
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/l;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_33

    .line 124
    if-lez v1, :cond_14

    .line 125
    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/l;

    .line 128
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 130
    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/t$a;)Lcom/bytedance/sdk/a/b/aa;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x0

    .line 50
    invoke-interface {p1}, Lcom/bytedance/sdk/a/b/t$a;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/y;->e()Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v2

    .line 53
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/y;->d()Lcom/bytedance/sdk/a/b/z;

    move-result-object v3

    .line 54
    if-eqz v3, :cond_36

    .line 55
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/z;->a()Lcom/bytedance/sdk/a/b/u;

    move-result-object v4

    .line 56
    if-eqz v4, :cond_20

    .line 57
    const-string v5, "Content-Type"

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/u;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 60
    :cond_20
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/z;->b()J

    move-result-wide v4

    .line 61
    cmp-long v3, v4, v6

    if-eqz v3, :cond_10e

    .line 62
    const-string v3, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 63
    const-string v3, "Transfer-Encoding"

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 70
    :cond_36
    :goto_36
    const-string v3, "Host"

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/a/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4b

    .line 71
    const-string v3, "Host"

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Lcom/bytedance/sdk/a/b/s;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 74
    :cond_4b
    const-string v3, "Connection"

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/a/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5a

    .line 75
    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 81
    :cond_5a
    const-string v3, "Accept-Encoding"

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/a/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_72

    const-string v3, "Range"

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/a/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_72

    .line 82
    const/4 v0, 0x1

    .line 83
    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 86
    :cond_72
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/c/a;->a:Lcom/bytedance/sdk/a/b/m;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/a/b/m;->a(Lcom/bytedance/sdk/a/b/s;)Ljava/util/List;

    move-result-object v3

    .line 87
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8b

    .line 88
    const-string v4, "Cookie"

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/a/b/a/c/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 91
    :cond_8b
    const-string v3, "User-Agent"

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/a/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9c

    .line 92
    const-string v3, "User-Agent"

    invoke-static {}, Lcom/bytedance/sdk/a/b/a/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 95
    :cond_9c
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/y$a;->d()Lcom/bytedance/sdk/a/b/y;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/a/b/t$a;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object v2

    .line 97
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/c/a;->a:Lcom/bytedance/sdk/a/b/m;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/aa;->f()Lcom/bytedance/sdk/a/b/r;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Lcom/bytedance/sdk/a/b/m;Lcom/bytedance/sdk/a/b/s;Lcom/bytedance/sdk/a/b/r;)V

    .line 99
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v3

    .line 100
    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v1

    .line 102
    if-eqz v0, :cond_109

    const-string v0, "gzip"

    const-string v3, "Content-Encoding"

    .line 103
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 104
    invoke-static {v2}, Lcom/bytedance/sdk/a/b/a/c/e;->b(Lcom/bytedance/sdk/a/b/aa;)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 105
    new-instance v0, Lcom/bytedance/sdk/a/a/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/ab;->c()Lcom/bytedance/sdk/a/a/e;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/a/a/j;-><init>(Lcom/bytedance/sdk/a/a/s;)V

    .line 106
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/aa;->f()Lcom/bytedance/sdk/a/b/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/r;->b()Lcom/bytedance/sdk/a/b/r$a;

    move-result-object v3

    const-string v4, "Content-Encoding"

    .line 107
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/a/b/r$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    move-result-object v3

    const-string v4, "Content-Length"

    .line 108
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/a/b/r$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    move-result-object v3

    .line 109
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/r$a;->a()Lcom/bytedance/sdk/a/b/r;

    move-result-object v3

    .line 110
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/r;)Lcom/bytedance/sdk/a/b/aa$a;

    .line 111
    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    new-instance v3, Lcom/bytedance/sdk/a/b/a/c/h;

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object v0

    invoke-direct {v3, v2, v6, v7, v0}, Lcom/bytedance/sdk/a/b/a/c/h;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/a/a/e;)V

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/ab;)Lcom/bytedance/sdk/a/b/aa$a;

    .line 115
    :cond_109
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    return-object v0

    .line 65
    :cond_10e
    const-string v3, "Transfer-Encoding"

    const-string v4, "chunked"

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 66
    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    goto/16 :goto_36
.end method
