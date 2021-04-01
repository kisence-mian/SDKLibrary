.class public final Lcom/bytedance/sdk/a/b/a/b/c;
.super Lcom/bytedance/sdk/a/b/a/e/g$b;
.source "RealConnection.java"

# interfaces
.implements Lcom/bytedance/sdk/a/b/i;


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lcom/bytedance/sdk/a/b/a/b/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:J

.field private final g:Lcom/bytedance/sdk/a/b/j;

.field private final h:Lcom/bytedance/sdk/a/b/ac;

.field private i:Ljava/net/Socket;

.field private j:Ljava/net/Socket;

.field private k:Lcom/bytedance/sdk/a/b/q;

.field private l:Lcom/bytedance/sdk/a/b/w;

.field private m:Lcom/bytedance/sdk/a/b/a/e/g;

.field private n:Lcom/bytedance/sdk/a/a/e;

.field private o:Lcom/bytedance/sdk/a/a/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/ac;)V
    .registers 5

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/g$b;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->c:I

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    .line 122
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->e:J

    .line 125
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/c;->g:Lcom/bytedance/sdk/a/b/j;

    .line 126
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    .line 127
    return-void
.end method

.method private a(IILcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/s;)Lcom/bytedance/sdk/a/b/y;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Lcom/bytedance/sdk/a/b/s;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    :cond_1f
    new-instance v4, Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->n:Lcom/bytedance/sdk/a/a/e;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/c;->o:Lcom/bytedance/sdk/a/a/d;

    invoke-direct {v4, v2, v2, v0, v1}, Lcom/bytedance/sdk/a/b/a/d/a;-><init>(Lcom/bytedance/sdk/a/b/v;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/a/e;Lcom/bytedance/sdk/a/a/d;)V

    .line 360
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->n:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    int-to-long v6, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, Lcom/bytedance/sdk/a/a/t;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/a/t;

    .line 361
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->o:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    int-to-long v6, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, Lcom/bytedance/sdk/a/a/t;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/a/t;

    .line 362
    invoke-virtual {p3}, Lcom/bytedance/sdk/a/b/y;->c()Lcom/bytedance/sdk/a/b/r;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/bytedance/sdk/a/b/a/d/a;->a(Lcom/bytedance/sdk/a/b/r;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/a/d/a;->b()V

    .line 364
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/a/b/a/d/a;->a(Z)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 365
    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v5

    .line 369
    invoke-static {v5}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Lcom/bytedance/sdk/a/b/aa;)J

    move-result-wide v0

    .line 370
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_63

    .line 371
    const-wide/16 v0, 0x0

    .line 373
    :cond_63
    invoke-virtual {v4, v0, v1}, Lcom/bytedance/sdk/a/b/a/d/a;->b(J)Lcom/bytedance/sdk/a/a/s;

    move-result-object v0

    .line 374
    const v1, 0x7fffffff

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v4}, Lcom/bytedance/sdk/a/b/a/c;->b(Lcom/bytedance/sdk/a/a/s;ILjava/util/concurrent/TimeUnit;)Z

    .line 375
    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/s;->close()V

    .line 377
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_e2

    .line 399
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected response code for CONNECT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 400
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :sswitch_96
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->n:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->o:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->c()Lcom/bytedance/sdk/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->e()Z

    move-result v0

    if-nez v0, :cond_b6

    .line 384
    :cond_ae
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b6
    move-object p3, v2

    .line 394
    :goto_b7
    return-object p3

    .line 389
    :sswitch_b8
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a;->d()Lcom/bytedance/sdk/a/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-interface {v0, v1, v5}, Lcom/bytedance/sdk/a/b/b;->a(Lcom/bytedance/sdk/a/b/ac;Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/y;

    move-result-object p3

    .line 390
    if-nez p3, :cond_d2

    .line 391
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_d2
    const-string v0, "close"

    const-string v1, "Connection"

    invoke-virtual {v5, v1}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_b7

    .line 377
    nop

    :sswitch_data_e2
    .sparse-switch
        0xc8 -> :sswitch_96
        0x197 -> :sswitch_b8
    .end sparse-switch
.end method

.method private a(IIILcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 215
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/b/c;->e()Lcom/bytedance/sdk/a/b/y;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v2

    .line 217
    const/4 v0, 0x0

    :goto_a
    const/16 v3, 0x15

    if-ge v0, v3, :cond_17

    .line 218
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/bytedance/sdk/a/b/a/b/c;->a(IILcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;)V

    .line 219
    invoke-direct {p0, p2, p3, v1, v2}, Lcom/bytedance/sdk/a/b/a/b/c;->a(IILcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/s;)Lcom/bytedance/sdk/a/b/y;

    move-result-object v1

    .line 221
    if-nez v1, :cond_18

    .line 231
    :cond_17
    return-void

    .line 225
    :cond_18
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/c;->i:Ljava/net/Socket;

    invoke-static {v3}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    .line 226
    iput-object v5, p0, Lcom/bytedance/sdk/a/b/a/b/c;->i:Ljava/net/Socket;

    .line 227
    iput-object v5, p0, Lcom/bytedance/sdk/a/b/a/b/c;->o:Lcom/bytedance/sdk/a/a/d;

    .line 228
    iput-object v5, p0, Lcom/bytedance/sdk/a/b/a/b/c;->n:Lcom/bytedance/sdk/a/a/e;

    .line 229
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/ac;->c()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/ac;->b()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {p5, p4, v3, v4, v5}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/bytedance/sdk/a/b/w;)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method private a(IILcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ac;->b()Ljava/net/Proxy;

    move-result-object v1

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v0

    .line 241
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_1c

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_5c

    .line 242
    :cond_1c
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a;->c()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_24
    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->i:Ljava/net/Socket;

    .line 245
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ac;->c()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p4, p3, v0, v1}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->i:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 248
    :try_start_34
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/e;->b()Lcom/bytedance/sdk/a/b/a/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/c;->i:Ljava/net/Socket;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/ac;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/bytedance/sdk/a/b/a/g/e;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_43
    .catch Ljava/net/ConnectException; {:try_start_34 .. :try_end_43} :catch_62

    .line 260
    :try_start_43
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->i:Ljava/net/Socket;

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/l;->b(Ljava/net/Socket;)Lcom/bytedance/sdk/a/a/s;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->n:Lcom/bytedance/sdk/a/a/e;

    .line 261
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->i:Ljava/net/Socket;

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/l;->a(Ljava/net/Socket;)Lcom/bytedance/sdk/a/a/r;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/r;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->o:Lcom/bytedance/sdk/a/a/d;
    :try_end_5b
    .catch Ljava/lang/NullPointerException; {:try_start_43 .. :try_end_5b} :catch_85

    .line 267
    :cond_5b
    return-void

    .line 242
    :cond_5c
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_24

    .line 249
    :catch_62
    move-exception v0

    .line 250
    new-instance v1, Ljava/net/ConnectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/ac;->c()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 252
    throw v1

    .line 262
    :catch_85
    move-exception v0

    .line 263
    const-string v1, "throw with null exception"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 264
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lcom/bytedance/sdk/a/b/a/b/b;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 292
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v2

    .line 293
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 298
    :try_start_b
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/c;->i:Ljava/net/Socket;

    .line 299
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/s;->g()I

    move-result v5

    const/4 v6, 0x1

    .line 298
    invoke-virtual {v0, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_24
    .catch Ljava/lang/AssertionError; {:try_start_b .. :try_end_24} :catch_132
    .catchall {:try_start_b .. :try_end_24} :catchall_cc

    .line 302
    :try_start_24
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/a/b/b;->a(Ljavax/net/ssl/SSLSocket;)Lcom/bytedance/sdk/a/b/k;

    move-result-object v3

    .line 303
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/k;->d()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 304
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/e;->b()Lcom/bytedance/sdk/a/b/a/g/e;

    move-result-object v4

    .line 305
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a;->e()Ljava/util/List;

    move-result-object v6

    .line 304
    invoke-virtual {v4, v0, v5, v6}, Lcom/bytedance/sdk/a/b/a/g/e;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 309
    :cond_41
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 310
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/a/b/q;->a(Ljavax/net/ssl/SSLSession;)Lcom/bytedance/sdk/a/b/q;

    move-result-object v4

    .line 313
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a;->j()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-nez v5, :cond_da

    .line 314
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/q;->b()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 315
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hostname "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " not verified:\n    certificate: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 316
    invoke-static {v1}, Lcom/bytedance/sdk/a/b/g;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n    DN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 317
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n    subjectAltNames: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 318
    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/i/e;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_bc
    .catch Ljava/lang/AssertionError; {:try_start_24 .. :try_end_bc} :catch_bc
    .catchall {:try_start_24 .. :try_end_bc} :catchall_12d

    .line 337
    :catch_bc
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 338
    :goto_c0
    :try_start_c0
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_12c

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_cc
    .catchall {:try_start_c0 .. :try_end_cc} :catchall_cc

    .line 341
    :catchall_cc
    move-exception v0

    :goto_cd
    if-eqz v1, :cond_d6

    .line 342
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/e;->b()Lcom/bytedance/sdk/a/b/a/g/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/a/b/a/g/e;->b(Ljavax/net/ssl/SSLSocket;)V

    .line 345
    :cond_d6
    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    .line 347
    throw v0

    .line 322
    :cond_da
    :try_start_da
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a;->k()Lcom/bytedance/sdk/a/b/g;

    move-result-object v5

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/q;->b()Ljava/util/List;

    move-result-object v6

    .line 322
    invoke-virtual {v5, v2, v6}, Lcom/bytedance/sdk/a/b/g;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 326
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/k;->d()Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 327
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/e;->b()Lcom/bytedance/sdk/a/b/a/g/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/b/a/g/e;->a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    .line 329
    :cond_fb
    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->j:Ljava/net/Socket;

    .line 330
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->j:Ljava/net/Socket;

    invoke-static {v2}, Lcom/bytedance/sdk/a/a/l;->b(Ljava/net/Socket;)Lcom/bytedance/sdk/a/a/s;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->n:Lcom/bytedance/sdk/a/a/e;

    .line 331
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->j:Ljava/net/Socket;

    invoke-static {v2}, Lcom/bytedance/sdk/a/a/l;->a(Ljava/net/Socket;)Lcom/bytedance/sdk/a/a/r;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/r;)Lcom/bytedance/sdk/a/a/d;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->o:Lcom/bytedance/sdk/a/a/d;

    .line 332
    iput-object v4, p0, Lcom/bytedance/sdk/a/b/a/b/c;->k:Lcom/bytedance/sdk/a/b/q;

    .line 333
    if-eqz v1, :cond_129

    .line 334
    invoke-static {v1}, Lcom/bytedance/sdk/a/b/w;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/w;

    move-result-object v1

    :goto_11d
    iput-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/c;->l:Lcom/bytedance/sdk/a/b/w;
    :try_end_11f
    .catch Ljava/lang/AssertionError; {:try_start_da .. :try_end_11f} :catch_bc
    .catchall {:try_start_da .. :try_end_11f} :catchall_12d

    .line 341
    if-eqz v0, :cond_128

    .line 342
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/e;->b()Lcom/bytedance/sdk/a/b/a/g/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/b/a/g/e;->b(Ljavax/net/ssl/SSLSocket;)V

    .line 348
    :cond_128
    return-void

    .line 334
    :cond_129
    :try_start_129
    sget-object v1, Lcom/bytedance/sdk/a/b/w;->b:Lcom/bytedance/sdk/a/b/w;
    :try_end_12b
    .catch Ljava/lang/AssertionError; {:try_start_129 .. :try_end_12b} :catch_bc
    .catchall {:try_start_129 .. :try_end_12b} :catchall_12d

    goto :goto_11d

    .line 339
    :cond_12c
    :try_start_12c
    throw v0
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_cc

    .line 341
    :catchall_12d
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_cd

    .line 337
    :catch_132
    move-exception v0

    goto :goto_c0
.end method

.method private a(Lcom/bytedance/sdk/a/b/a/b/b;Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_15

    .line 272
    sget-object v0, Lcom/bytedance/sdk/a/b/w;->b:Lcom/bytedance/sdk/a/b/w;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->l:Lcom/bytedance/sdk/a/b/w;

    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->i:Ljava/net/Socket;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->j:Ljava/net/Socket;

    .line 289
    :cond_14
    :goto_14
    return-void

    .line 277
    :cond_15
    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/a/b/p;->b(Lcom/bytedance/sdk/a/b/e;)V

    .line 278
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/b/c;->a(Lcom/bytedance/sdk/a/b/a/b/b;)V

    .line 279
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->k:Lcom/bytedance/sdk/a/b/q;

    invoke-virtual {p3, p2, v0}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/q;)V

    .line 281
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->l:Lcom/bytedance/sdk/a/b/w;

    sget-object v1, Lcom/bytedance/sdk/a/b/w;->d:Lcom/bytedance/sdk/a/b/w;

    if-ne v0, v1, :cond_14

    .line 282
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->j:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 283
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/g$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/g$a;-><init>(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/c;->j:Ljava/net/Socket;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    .line 284
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/c;->n:Lcom/bytedance/sdk/a/a/e;

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/b/c;->o:Lcom/bytedance/sdk/a/a/d;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/a/b/a/e/g$a;->a(Ljava/net/Socket;Ljava/lang/String;Lcom/bytedance/sdk/a/a/e;Lcom/bytedance/sdk/a/a/d;)Lcom/bytedance/sdk/a/b/a/e/g$a;

    move-result-object v0

    .line 285
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/a/b/a/e/g$a;->a(Lcom/bytedance/sdk/a/b/a/e/g$b;)Lcom/bytedance/sdk/a/b/a/e/g$a;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/g$a;->a()Lcom/bytedance/sdk/a/b/a/e/g;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->m:Lcom/bytedance/sdk/a/b/a/e/g;

    .line 287
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->m:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/g;->c()V

    goto :goto_14
.end method

.method private e()Lcom/bytedance/sdk/a/b/y;
    .registers 5

    .prologue
    .line 411
    new-instance v0, Lcom/bytedance/sdk/a/b/y$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/y$a;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    .line 412
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Lcom/bytedance/sdk/a/b/s;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    const-string v1, "Host"

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    .line 413
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bytedance/sdk/a/b/a/c;->a(Lcom/bytedance/sdk/a/b/s;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    .line 414
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    const-string v1, "User-Agent"

    .line 415
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y$a;->d()Lcom/bytedance/sdk/a/b/y;

    move-result-object v0

    .line 411
    return-object v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/v;Lcom/bytedance/sdk/a/b/t$a;Lcom/bytedance/sdk/a/b/a/b/g;)Lcom/bytedance/sdk/a/b/a/c/c;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->m:Lcom/bytedance/sdk/a/b/a/e/g;

    if-eqz v0, :cond_c

    .line 482
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/f;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/c;->m:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/bytedance/sdk/a/b/a/e/f;-><init>(Lcom/bytedance/sdk/a/b/v;Lcom/bytedance/sdk/a/b/t$a;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/a/e/g;)V

    .line 487
    :goto_b
    return-object v0

    .line 484
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->j:Ljava/net/Socket;

    invoke-interface {p2}, Lcom/bytedance/sdk/a/b/t$a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 485
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->n:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    invoke-interface {p2}, Lcom/bytedance/sdk/a/b/t$a;->c()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/a/t;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/a/t;

    .line 486
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->o:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    invoke-interface {p2}, Lcom/bytedance/sdk/a/b/t$a;->d()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/a/t;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/a/t;

    .line 487
    new-instance v0, Lcom/bytedance/sdk/a/b/a/d/a;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/c;->n:Lcom/bytedance/sdk/a/a/e;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->o:Lcom/bytedance/sdk/a/a/d;

    invoke-direct {v0, p1, p3, v1, v2}, Lcom/bytedance/sdk/a/b/a/d/a;-><init>(Lcom/bytedance/sdk/a/b/v;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/a/e;Lcom/bytedance/sdk/a/a/d;)V

    goto :goto_b
.end method

.method public a()Lcom/bytedance/sdk/a/b/ac;
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    return-object v0
.end method

.method public a(IIIZLcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;)V
    .registers 16

    .prologue
    const/4 v7, 0x0

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->l:Lcom/bytedance/sdk/a/b/w;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a;->f()Ljava/util/List;

    move-result-object v0

    .line 143
    new-instance v8, Lcom/bytedance/sdk/a/b/a/b/b;

    invoke-direct {v8, v0}, Lcom/bytedance/sdk/a/b/a/b/b;-><init>(Ljava/util/List;)V

    .line 145
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_114

    .line 146
    sget-object v1, Lcom/bytedance/sdk/a/b/k;->c:Lcom/bytedance/sdk/a/b/k;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 147
    new-instance v0, Lcom/bytedance/sdk/a/b/a/b/e;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/b/a/b/e;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 150
    :cond_3d
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/e;->b()Lcom/bytedance/sdk/a/b/a/g/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/b/a/g/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_114

    .line 152
    new-instance v1, Lcom/bytedance/sdk/a/b/a/b/e;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEARTEXT communication to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " not permitted by network security policy"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/a/b/a/b/e;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_79
    move-object v6, v0

    .line 159
    :goto_7a
    :try_start_7a
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ac;->d()Z

    move-result v0

    if-eqz v0, :cond_a8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/a/b/c;->a(IIILcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;)V

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->i:Ljava/net/Socket;
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_8d} :catch_c0

    if-nez v0, :cond_ab

    .line 196
    :goto_8f
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ac;->d()Z

    move-result v0

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->i:Ljava/net/Socket;

    if-nez v0, :cond_100

    .line 197
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/bytedance/sdk/a/b/a/b/e;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/a/b/a/b/e;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 166
    :cond_a8
    :try_start_a8
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/bytedance/sdk/a/b/a/b/c;->a(IILcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;)V

    .line 168
    :cond_ab
    invoke-direct {p0, v8, p5, p6}, Lcom/bytedance/sdk/a/b/a/b/c;->a(Lcom/bytedance/sdk/a/b/a/b/b;Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;)V

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ac;->c()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/ac;->b()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->l:Lcom/bytedance/sdk/a/b/w;

    invoke-virtual {p6, p5, v0, v1, v2}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/bytedance/sdk/a/b/w;)V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_bf} :catch_c0

    goto :goto_8f

    .line 171
    :catch_c0
    move-exception v5

    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->j:Ljava/net/Socket;

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->i:Ljava/net/Socket;

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    .line 174
    iput-object v7, p0, Lcom/bytedance/sdk/a/b/a/b/c;->j:Ljava/net/Socket;

    .line 175
    iput-object v7, p0, Lcom/bytedance/sdk/a/b/a/b/c;->i:Ljava/net/Socket;

    .line 176
    iput-object v7, p0, Lcom/bytedance/sdk/a/b/a/b/c;->n:Lcom/bytedance/sdk/a/a/e;

    .line 177
    iput-object v7, p0, Lcom/bytedance/sdk/a/b/a/b/c;->o:Lcom/bytedance/sdk/a/a/d;

    .line 178
    iput-object v7, p0, Lcom/bytedance/sdk/a/b/a/b/c;->k:Lcom/bytedance/sdk/a/b/q;

    .line 179
    iput-object v7, p0, Lcom/bytedance/sdk/a/b/a/b/c;->l:Lcom/bytedance/sdk/a/b/w;

    .line 180
    iput-object v7, p0, Lcom/bytedance/sdk/a/b/a/b/c;->m:Lcom/bytedance/sdk/a/b/a/e/g;

    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ac;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ac;->b()Ljava/net/Proxy;

    move-result-object v3

    move-object v0, p6

    move-object v1, p5

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/p;->a(Lcom/bytedance/sdk/a/b/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/bytedance/sdk/a/b/w;Ljava/io/IOException;)V

    .line 184
    if-nez v6, :cond_fb

    .line 185
    new-instance v0, Lcom/bytedance/sdk/a/b/a/b/e;

    invoke-direct {v0, v5}, Lcom/bytedance/sdk/a/b/a/b/e;-><init>(Ljava/io/IOException;)V

    .line 190
    :goto_f2
    if-eqz p4, :cond_fa

    invoke-virtual {v8, v5}, Lcom/bytedance/sdk/a/b/a/b/b;->a(Ljava/io/IOException;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 191
    :cond_fa
    throw v0

    .line 187
    :cond_fb
    invoke-virtual {v6, v5}, Lcom/bytedance/sdk/a/b/a/b/e;->a(Ljava/io/IOException;)V

    move-object v0, v6

    goto :goto_f2

    .line 202
    :cond_100
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->m:Lcom/bytedance/sdk/a/b/a/e/g;

    if-eqz v0, :cond_110

    .line 203
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/c;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v1

    .line 204
    :try_start_107
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->m:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/g;->a()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->c:I

    .line 205
    monitor-exit v1

    .line 207
    :cond_110
    return-void

    .line 205
    :catchall_111
    move-exception v0

    monitor-exit v1
    :try_end_113
    .catchall {:try_start_107 .. :try_end_113} :catchall_111

    throw v0

    :cond_114
    move-object v6, v7

    goto/16 :goto_7a
.end method

.method public a(Lcom/bytedance/sdk/a/b/a/e/g;)V
    .registers 4

    .prologue
    .line 562
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/c;->g:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v1

    .line 563
    :try_start_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/g;->a()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->c:I

    .line 564
    monitor-exit v1

    .line 565
    return-void

    .line 564
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public a(Lcom/bytedance/sdk/a/b/a/e/i;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/b;->e:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/a/e/i;->a(Lcom/bytedance/sdk/a/b/a/e/b;)V

    .line 555
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/ac;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 425
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/b/c;->c:I

    if-ge v2, v3, :cond_10

    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->a:Z

    if-eqz v2, :cond_11

    .line 462
    :cond_10
    :goto_10
    return v0

    .line 428
    :cond_11
    sget-object v2, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 431
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/b/c;->a()Lcom/bytedance/sdk/a/b/ac;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    move v0, v1

    .line 432
    goto :goto_10

    .line 441
    :cond_3f
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->m:Lcom/bytedance/sdk/a/b/a/e/g;

    if-eqz v2, :cond_10

    .line 446
    if-eqz p2, :cond_10

    .line 447
    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/ac;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_10

    .line 448
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/ac;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_10

    .line 449
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/ac;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/ac;->c()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 452
    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a;->j()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    sget-object v3, Lcom/bytedance/sdk/a/b/a/i/e;->a:Lcom/bytedance/sdk/a/b/a/i/e;

    if-ne v2, v3, :cond_10

    .line 453
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/a/b/a/b/c;->a(Lcom/bytedance/sdk/a/b/s;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 457
    :try_start_85
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a;->k()Lcom/bytedance/sdk/a/b/g;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/b/c;->c()Lcom/bytedance/sdk/a/b/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/q;->b()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/a/b/g;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_9c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_85 .. :try_end_9c} :catch_9f

    move v0, v1

    .line 462
    goto/16 :goto_10

    .line 458
    :catch_9f
    move-exception v1

    goto/16 :goto_10
.end method

.method public a(Lcom/bytedance/sdk/a/b/s;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 466
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/s;->g()I

    move-result v0

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/s;->g()I

    move-result v3

    if-eq v0, v3, :cond_17

    .line 476
    :goto_16
    return v2

    .line 470
    :cond_17
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 472
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->k:Lcom/bytedance/sdk/a/b/q;

    if-eqz v0, :cond_4e

    sget-object v3, Lcom/bytedance/sdk/a/b/a/i/e;->a:Lcom/bytedance/sdk/a/b/a/i/e;

    .line 473
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->k:Lcom/bytedance/sdk/a/b/q;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/q;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 472
    invoke-virtual {v3, v4, v0}, Lcom/bytedance/sdk/a/b/a/i/e;->a(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v1

    :goto_4c
    move v2, v0

    goto :goto_16

    :cond_4e
    move v0, v2

    goto :goto_4c

    :cond_50
    move v2, v1

    .line 476
    goto :goto_16
.end method

.method public a(Z)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 519
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1a
    move v0, v1

    .line 546
    :cond_1b
    :goto_1b
    return v0

    .line 523
    :cond_1c
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->m:Lcom/bytedance/sdk/a/b/a/e/g;

    if-eqz v2, :cond_2a

    .line 524
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->m:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a/e/g;->d()Z

    move-result v2

    if-eqz v2, :cond_1b

    move v0, v1

    goto :goto_1b

    .line 527
    :cond_2a
    if-eqz p1, :cond_1b

    .line 529
    :try_start_2c
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_31
    .catch Ljava/net/SocketTimeoutException; {:try_start_2c .. :try_end_31} :catch_4d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_56

    move-result v3

    .line 531
    :try_start_32
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->j:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 532
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->n:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v2}, Lcom/bytedance/sdk/a/a/e;->e()Z
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_4f

    move-result v2

    if-eqz v2, :cond_47

    .line 537
    :try_start_40
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    .line 533
    goto :goto_1b

    .line 537
    :cond_47
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_1b

    .line 539
    :catch_4d
    move-exception v1

    goto :goto_1b

    .line 537
    :catchall_4f
    move-exception v2

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/b/c;->j:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 538
    throw v2
    :try_end_56
    .catch Ljava/net/SocketTimeoutException; {:try_start_40 .. :try_end_56} :catch_4d
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_56} :catch_56

    .line 541
    :catch_56
    move-exception v0

    move v0, v1

    .line 542
    goto :goto_1b
.end method

.method public b()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->j:Ljava/net/Socket;

    return-object v0
.end method

.method public c()Lcom/bytedance/sdk/a/b/q;
    .registers 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->k:Lcom/bytedance/sdk/a/b/q;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->m:Lcom/bytedance/sdk/a/b/a/e/g;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    .line 588
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/s;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    .line 590
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/ac;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/c;->h:Lcom/bytedance/sdk/a/b/ac;

    .line 592
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/ac;->c()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->k:Lcom/bytedance/sdk/a/b/q;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/c;->k:Lcom/bytedance/sdk/a/b/q;

    .line 594
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/q;->a()Lcom/bytedance/sdk/a/b/h;

    move-result-object v0

    :goto_65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/c;->l:Lcom/bytedance/sdk/a/b/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    return-object v0

    .line 594
    :cond_80
    const-string v0, "none"

    goto :goto_65
.end method
