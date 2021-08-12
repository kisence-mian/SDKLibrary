.class public final Lcom/bytedance/sdk/a/b/a/c/j;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/a/b/t;


# instance fields
.field private final a:Lcom/bytedance/sdk/a/b/v;

.field private final b:Z

.field private c:Lcom/bytedance/sdk/a/b/a/b/g;

.field private d:Ljava/lang/Object;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/b/v;Z)V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    .line 75
    iput-boolean p2, p0, Lcom/bytedance/sdk/a/b/a/c/j;->b:Z

    .line 76
    return-void
.end method

.method private a(Lcom/bytedance/sdk/a/b/s;)Lcom/bytedance/sdk/a/b/a;
    .registers 19

    .line 194
    move-object/from16 v0, p0

    .line 195
    nop

    .line 196
    nop

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/a/b/s;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 198
    iget-object v1, v0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 199
    iget-object v1, v0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->k()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 200
    iget-object v3, v0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/v;->l()Lcom/bytedance/sdk/a/b/g;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_24

    .line 197
    :cond_21
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    .line 203
    :goto_24
    new-instance v1, Lcom/bytedance/sdk/a/b/a;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/a/b/s;->g()I

    move-result v6

    iget-object v2, v0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/v;->h()Lcom/bytedance/sdk/a/b/o;

    move-result-object v7

    iget-object v2, v0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/v;->i()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    .line 204
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/v;->n()Lcom/bytedance/sdk/a/b/b;

    move-result-object v12

    iget-object v2, v0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    .line 205
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/v;->d()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/v;->t()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/v;->u()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/v;->e()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lcom/bytedance/sdk/a/b/a;-><init>(Ljava/lang/String;ILcom/bytedance/sdk/a/b/o;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/bytedance/sdk/a/b/g;Lcom/bytedance/sdk/a/b/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 203
    return-object v1
.end method

.method private a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/y;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    if-eqz p1, :cond_121

    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/g;->b()Lcom/bytedance/sdk/a/b/a/b/c;

    move-result-object v0

    .line 274
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 275
    invoke-interface {v0}, Lcom/bytedance/sdk/a/b/i;->a()Lcom/bytedance/sdk/a/b/ac;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    .line 277
    :goto_11
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v2

    .line 279
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/y;->b()Ljava/lang/String;

    move-result-object v3

    .line 280
    const-string v4, "GET"

    sparse-switch v2, :sswitch_data_128

    .line 367
    return-object v1

    .line 349
    :sswitch_23
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v;->r()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 351
    return-object v1

    .line 354
    :cond_2c
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y;->d()Lcom/bytedance/sdk/a/b/z;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/a/b/a/c/l;

    if-eqz v0, :cond_39

    .line 355
    return-object v1

    .line 358
    :cond_39
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->j()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 359
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->j()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v0

    const/16 v2, 0x198

    if-ne v0, v2, :cond_4c

    .line 361
    return-object v1

    .line 364
    :cond_4c
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object p1

    return-object p1

    .line 282
    :sswitch_51
    if-eqz v0, :cond_58

    .line 283
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ac;->b()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_5e

    :cond_58
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    .line 284
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->d()Ljava/net/Proxy;

    move-result-object v1

    .line 285
    :goto_5e
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_71

    .line 288
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->n()Lcom/bytedance/sdk/a/b/b;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/bytedance/sdk/a/b/b;->a(Lcom/bytedance/sdk/a/b/ac;Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/y;

    move-result-object p1

    return-object p1

    .line 286
    :cond_71
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 291
    :sswitch_79
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->m()Lcom/bytedance/sdk/a/b/b;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/bytedance/sdk/a/b/b;->a(Lcom/bytedance/sdk/a/b/ac;Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/y;

    move-result-object p1

    return-object p1

    .line 297
    :sswitch_84
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    const-string v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 298
    return-object v1

    .line 306
    :cond_93
    :sswitch_93
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v;->q()Z

    move-result v0

    if-nez v0, :cond_9c

    return-object v1

    .line 308
    :cond_9c
    const-string v0, "Location"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    if-nez v0, :cond_a5

    return-object v1

    .line 310
    :cond_a5
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/a/b/s;->c(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s;

    move-result-object v0

    .line 313
    if-nez v0, :cond_b4

    return-object v1

    .line 316
    :cond_b4
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/s;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 317
    if-nez v2, :cond_d3

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/v;->p()Z

    move-result v2

    if-nez v2, :cond_d3

    return-object v1

    .line 320
    :cond_d3
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/y;->e()Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v2

    .line 321
    invoke-static {v3}, Lcom/bytedance/sdk/a/b/a/c/f;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10d

    .line 322
    invoke-static {v3}, Lcom/bytedance/sdk/a/b/a/c/f;->d(Ljava/lang/String;)Z

    move-result v5

    .line 323
    invoke-static {v3}, Lcom/bytedance/sdk/a/b/a/c/f;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ef

    .line 324
    invoke-virtual {v2, v4, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    goto :goto_fc

    .line 326
    :cond_ef
    if-eqz v5, :cond_f9

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/y;->d()Lcom/bytedance/sdk/a/b/z;

    move-result-object v1

    .line 327
    :cond_f9
    invoke-virtual {v2, v3, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    .line 329
    :goto_fc
    if-nez v5, :cond_10d

    .line 330
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/a/b/y$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 331
    const-string v1, "Content-Length"

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/a/b/y$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 332
    const-string v1, "Content-Type"

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/a/b/y$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 339
    :cond_10d
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/a/b/a/c/j;->a(Lcom/bytedance/sdk/a/b/aa;Lcom/bytedance/sdk/a/b/s;)Z

    move-result p1

    if-nez p1, :cond_118

    .line 340
    const-string p1, "Authorization"

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/a/b/y$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 343
    :cond_118
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/a/b/y$a;->a(Lcom/bytedance/sdk/a/b/s;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/y$a;->d()Lcom/bytedance/sdk/a/b/y;

    move-result-object p1

    return-object p1

    .line 272
    :cond_121
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    nop

    :sswitch_data_128
    .sparse-switch
        0x12c -> :sswitch_93
        0x12d -> :sswitch_93
        0x12e -> :sswitch_93
        0x12f -> :sswitch_93
        0x133 -> :sswitch_84
        0x134 -> :sswitch_84
        0x191 -> :sswitch_79
        0x197 -> :sswitch_51
        0x198 -> :sswitch_23
    .end sparse-switch
.end method

.method private a(Lcom/bytedance/sdk/a/b/aa;Lcom/bytedance/sdk/a/b/s;)Z
    .registers 5

    .line 376
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object p1

    .line 377
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 378
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/s;->g()I

    move-result v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/s;->g()I

    move-result v1

    if-ne v0, v1, :cond_30

    .line 379
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/s;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/s;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    const/4 p1, 0x1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    .line 377
    :goto_31
    return p1
.end method

.method private a(Ljava/io/IOException;Z)Z
    .registers 6

    .line 236
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 237
    return v1

    .line 242
    :cond_6
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 243
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_12

    if-nez p2, :cond_12

    move v1, v2

    :cond_12
    return v1

    .line 248
    :cond_13
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_20

    .line 251
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_20

    .line 252
    return v1

    .line 255
    :cond_20
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_25

    .line 257
    return v1

    .line 263
    :cond_25
    return v2
.end method

.method private a(Ljava/io/IOException;ZLcom/bytedance/sdk/a/b/y;)Z
    .registers 6

    .line 215
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/a/b/g;->a(Ljava/io/IOException;)V

    .line 218
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    .line 221
    :cond_f
    if-eqz p2, :cond_1a

    invoke-virtual {p3}, Lcom/bytedance/sdk/a/b/y;->d()Lcom/bytedance/sdk/a/b/z;

    move-result-object p3

    instance-of p3, p3, Lcom/bytedance/sdk/a/b/a/c/l;

    if-eqz p3, :cond_1a

    .line 222
    return v1

    .line 225
    :cond_1a
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/c/j;->a(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_21

    return v1

    .line 228
    :cond_21
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/b/g;->e()Z

    move-result p1

    if-nez p1, :cond_2a

    return v1

    .line 231
    :cond_2a
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/t$a;)Lcom/bytedance/sdk/a/b/aa;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-interface {p1}, Lcom/bytedance/sdk/a/b/t$a;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v0

    .line 108
    check-cast p1, Lcom/bytedance/sdk/a/b/a/c/g;

    .line 109
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->h()Lcom/bytedance/sdk/a/b/e;

    move-result-object v7

    .line 110
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->i()Lcom/bytedance/sdk/a/b/p;

    move-result-object v8

    .line 112
    new-instance v9, Lcom/bytedance/sdk/a/b/a/b/g;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->o()Lcom/bytedance/sdk/a/b/j;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/a/b/a/c/j;->a(Lcom/bytedance/sdk/a/b/s;)Lcom/bytedance/sdk/a/b/a;

    move-result-object v3

    iget-object v6, p0, Lcom/bytedance/sdk/a/b/a/c/j;->d:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/a/b/a/b/g;-><init>(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;Ljava/lang/Object;)V

    iput-object v9, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    .line 115
    nop

    .line 116
    const/4 v9, 0x0

    const/4 v10, 0x0

    move v2, v9

    move-object v1, v10

    .line 118
    :goto_2d
    iget-boolean v3, p0, Lcom/bytedance/sdk/a/b/a/c/j;->e:Z

    if-nez v3, :cond_130

    .line 124
    nop

    .line 126
    :try_start_32
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {p1, v0, v3, v10, v10}, Lcom/bytedance/sdk/a/b/a/c/g;->a(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/a/c/c;Lcom/bytedance/sdk/a/b/a/b/c;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0
    :try_end_38
    .catch Lcom/bytedance/sdk/a/b/a/b/e; {:try_start_32 .. :try_end_38} :catch_112
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_38} :catch_102
    .catchall {:try_start_32 .. :try_end_38} :catchall_100

    .line 127
    nop

    .line 143
    nop

    .line 150
    if-eqz v1, :cond_54

    .line 151
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->i()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 152
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/aa;->i()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v1

    .line 153
    invoke-virtual {v1, v10}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/ab;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->c(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    .line 158
    :cond_54
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/c/j;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/y;

    move-result-object v11

    .line 160
    if-nez v11, :cond_64

    .line 161
    iget-boolean p1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->b:Z

    if-nez p1, :cond_63

    .line 162
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/b/g;->c()V

    .line 164
    :cond_63
    return-object v0

    .line 167
    :cond_64
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 169
    add-int/lit8 v12, v2, 0x1

    const/16 v1, 0x14

    if-gt v12, v1, :cond_e2

    .line 174
    invoke-virtual {v11}, Lcom/bytedance/sdk/a/b/y;->d()Lcom/bytedance/sdk/a/b/z;

    move-result-object v1

    instance-of v1, v1, Lcom/bytedance/sdk/a/b/a/c/l;

    if-nez v1, :cond_d1

    .line 179
    invoke-virtual {v11}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/c/j;->a(Lcom/bytedance/sdk/a/b/aa;Lcom/bytedance/sdk/a/b/s;)Z

    move-result v1

    if-nez v1, :cond_a3

    .line 180
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/b/g;->c()V

    .line 181
    new-instance v13, Lcom/bytedance/sdk/a/b/a/b/g;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->o()Lcom/bytedance/sdk/a/b/j;

    move-result-object v2

    .line 182
    invoke-virtual {v11}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/a/b/a/c/j;->a(Lcom/bytedance/sdk/a/b/s;)Lcom/bytedance/sdk/a/b/a;

    move-result-object v3

    iget-object v6, p0, Lcom/bytedance/sdk/a/b/a/c/j;->d:Ljava/lang/Object;

    move-object v1, v13

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/a/b/a/b/g;-><init>(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;Ljava/lang/Object;)V

    iput-object v13, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    goto :goto_ab

    .line 183
    :cond_a3
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/b/g;->a()Lcom/bytedance/sdk/a/b/a/c/c;

    move-result-object v1

    if-nez v1, :cond_b2

    .line 188
    :goto_ab
    nop

    .line 189
    nop

    .line 190
    move-object v1, v0

    move-object v0, v11

    move v2, v12

    goto/16 :goto_2d

    .line 184
    :cond_b2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_d1
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/b/g;->c()V

    .line 176
    new-instance p1, Ljava/net/HttpRetryException;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v0

    const-string v1, "Cannot retry streamed HTTP body"

    invoke-direct {p1, v1, v0}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 170
    :cond_e2
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/b/g;->c()V

    .line 171
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :catchall_100
    move-exception p1

    goto :goto_125

    .line 135
    :catch_102
    move-exception v3

    .line 137
    :try_start_103
    instance-of v4, v3, Lcom/bytedance/sdk/a/b/a/e/a;

    if-nez v4, :cond_109

    const/4 v4, 0x1

    goto :goto_10a

    :cond_109
    move v4, v9

    .line 138
    :goto_10a
    invoke-direct {p0, v3, v4, v0}, Lcom/bytedance/sdk/a/b/a/c/j;->a(Ljava/io/IOException;ZLcom/bytedance/sdk/a/b/y;)Z

    move-result v4

    if-eqz v4, :cond_111

    .line 139
    goto :goto_11e

    .line 138
    :cond_111
    throw v3

    .line 128
    :catch_112
    move-exception v3

    .line 130
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/b/e;->a()Ljava/io/IOException;

    move-result-object v4

    invoke-direct {p0, v4, v9, v0}, Lcom/bytedance/sdk/a/b/a/c/j;->a(Ljava/io/IOException;ZLcom/bytedance/sdk/a/b/y;)Z

    move-result v4

    if-eqz v4, :cond_120

    .line 133
    nop

    .line 143
    :goto_11e
    goto/16 :goto_2d

    .line 131
    :cond_120
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/b/e;->a()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_125
    .catchall {:try_start_103 .. :try_end_125} :catchall_100

    .line 144
    :goto_125
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v0, v10}, Lcom/bytedance/sdk/a/b/a/b/g;->a(Ljava/io/IOException;)V

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/g;->c()V

    .line 147
    throw p1

    .line 119
    :cond_130
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/b/g;->c()V

    .line 120
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->d:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public a()Z
    .registers 2

    .line 94
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->e:Z

    return v0
.end method
