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

    .prologue
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
    .registers 15

    .prologue
    const/4 v7, 0x0

    .line 194
    .line 197
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/s;->c()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v;->k()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v;->l()Lcom/bytedance/sdk/a/b/g;

    move-result-object v7

    .line 203
    :goto_19
    new-instance v0, Lcom/bytedance/sdk/a/b/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/s;->g()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/v;->h()Lcom/bytedance/sdk/a/b/o;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/v;->i()Ljavax/net/SocketFactory;

    move-result-object v4

    iget-object v8, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    .line 204
    invoke-virtual {v8}, Lcom/bytedance/sdk/a/b/v;->n()Lcom/bytedance/sdk/a/b/b;

    move-result-object v8

    iget-object v9, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    .line 205
    invoke-virtual {v9}, Lcom/bytedance/sdk/a/b/v;->d()Ljava/net/Proxy;

    move-result-object v9

    iget-object v10, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v10}, Lcom/bytedance/sdk/a/b/v;->t()Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v11}, Lcom/bytedance/sdk/a/b/v;->u()Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v12}, Lcom/bytedance/sdk/a/b/v;->e()Ljava/net/ProxySelector;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lcom/bytedance/sdk/a/b/a;-><init>(Ljava/lang/String;ILcom/bytedance/sdk/a/b/o;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/bytedance/sdk/a/b/g;Lcom/bytedance/sdk/a/b/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 203
    return-object v0

    :cond_51
    move-object v6, v7

    move-object v5, v7

    goto :goto_19
.end method

.method private a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/y;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 272
    if-nez p1, :cond_9

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 273
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/g;->b()Lcom/bytedance/sdk/a/b/a/b/c;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_25

    .line 275
    invoke-interface {v0}, Lcom/bytedance/sdk/a/b/i;->a()Lcom/bytedance/sdk/a/b/ac;

    move-result-object v0

    .line 277
    :goto_15
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v2

    .line 279
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/y;->b()Ljava/lang/String;

    move-result-object v3

    .line 280
    sparse-switch v2, :sswitch_data_124

    .line 367
    :cond_24
    :goto_24
    return-object v1

    :cond_25
    move-object v0, v1

    .line 275
    goto :goto_15

    .line 282
    :sswitch_27
    if-eqz v0, :cond_3d

    .line 283
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/ac;->b()Ljava/net/Proxy;

    move-result-object v1

    .line 285
    :goto_2d
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_44

    .line 286
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_3d
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    .line 284
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->d()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_2d

    .line 288
    :cond_44
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->n()Lcom/bytedance/sdk/a/b/b;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/bytedance/sdk/a/b/b;->a(Lcom/bytedance/sdk/a/b/ac;Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/y;

    move-result-object v1

    goto :goto_24

    .line 291
    :sswitch_4f
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->m()Lcom/bytedance/sdk/a/b/b;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/bytedance/sdk/a/b/b;->a(Lcom/bytedance/sdk/a/b/ac;Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/y;

    move-result-object v1

    goto :goto_24

    .line 297
    :sswitch_5a
    const-string v0, "GET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 306
    :cond_6a
    :sswitch_6a
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v;->q()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 308
    const-string v0, "Location"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_24

    .line 310
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/a/b/s;->c(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_24

    .line 316
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 317
    if-nez v2, :cond_a6

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/v;->p()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 320
    :cond_a6
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/y;->e()Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v2

    .line 321
    invoke-static {v3}, Lcom/bytedance/sdk/a/b/a/c/f;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 322
    invoke-static {v3}, Lcom/bytedance/sdk/a/b/a/c/f;->d(Ljava/lang/String;)Z

    move-result v4

    .line 323
    invoke-static {v3}, Lcom/bytedance/sdk/a/b/a/c/f;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e9

    .line 324
    const-string v3, "GET"

    invoke-virtual {v2, v3, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    .line 329
    :goto_c3
    if-nez v4, :cond_d4

    .line 330
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 331
    const-string v1, "Content-Length"

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 332
    const-string v1, "Content-Type"

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 339
    :cond_d4
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/a/b/a/c/j;->a(Lcom/bytedance/sdk/a/b/aa;Lcom/bytedance/sdk/a/b/s;)Z

    move-result v1

    if-nez v1, :cond_df

    .line 340
    const-string v1, "Authorization"

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 343
    :cond_df
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/a/b/y$a;->a(Lcom/bytedance/sdk/a/b/s;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y$a;->d()Lcom/bytedance/sdk/a/b/y;

    move-result-object v1

    goto/16 :goto_24

    .line 326
    :cond_e9
    if-eqz v4, :cond_f3

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/y;->d()Lcom/bytedance/sdk/a/b/z;

    move-result-object v1

    .line 327
    :cond_f3
    invoke-virtual {v2, v3, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    goto :goto_c3

    .line 349
    :sswitch_f7
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v;->r()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 354
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y;->d()Lcom/bytedance/sdk/a/b/z;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/a/b/a/c/l;

    if-nez v0, :cond_24

    .line 358
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->i()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    if-eqz v0, :cond_11d

    .line 359
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->i()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v0

    const/16 v2, 0x198

    if-eq v0, v2, :cond_24

    .line 364
    :cond_11d
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v1

    goto/16 :goto_24

    .line 280
    nop

    :sswitch_data_124
    .sparse-switch
        0x12c -> :sswitch_6a
        0x12d -> :sswitch_6a
        0x12e -> :sswitch_6a
        0x12f -> :sswitch_6a
        0x133 -> :sswitch_5a
        0x134 -> :sswitch_5a
        0x191 -> :sswitch_4f
        0x197 -> :sswitch_27
        0x198 -> :sswitch_f7
    .end sparse-switch
.end method

.method private a(Lcom/bytedance/sdk/a/b/aa;Lcom/bytedance/sdk/a/b/s;)Z
    .registers 6

    .prologue
    .line 376
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/aa;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 378
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s;->g()I

    move-result v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/s;->g()I

    move-result v2

    if-ne v1, v2, :cond_30

    .line 379
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    .line 377
    :goto_2f
    return v0

    .line 379
    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private a(Ljava/io/IOException;Z)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 236
    instance-of v2, p1, Ljava/net/ProtocolException;

    if-eqz v2, :cond_7

    .line 263
    :cond_6
    :goto_6
    return v1

    .line 242
    :cond_7
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_15

    .line 243
    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_13

    if-nez p2, :cond_13

    :goto_11
    move v1, v0

    goto :goto_6

    :cond_13
    move v0, v1

    goto :goto_11

    .line 248
    :cond_15
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_21

    .line 251
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_6

    .line 255
    :cond_21
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_6

    move v1, v0

    .line 263
    goto :goto_6
.end method

.method private a(Ljava/io/IOException;ZLcom/bytedance/sdk/a/b/y;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 215
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/a/b/a/b/g;->a(Ljava/io/IOException;)V

    .line 218
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->r()Z

    move-result v1

    if-nez v1, :cond_f

    .line 231
    :cond_e
    :goto_e
    return v0

    .line 221
    :cond_f
    if-eqz p2, :cond_19

    invoke-virtual {p3}, Lcom/bytedance/sdk/a/b/y;->d()Lcom/bytedance/sdk/a/b/z;

    move-result-object v1

    instance-of v1, v1, Lcom/bytedance/sdk/a/b/a/c/l;

    if-nez v1, :cond_e

    .line 225
    :cond_19
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/c/j;->a(Ljava/io/IOException;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 228
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/b/g;->e()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 231
    const/4 v0, 0x1

    goto :goto_e
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/t$a;)Lcom/bytedance/sdk/a/b/aa;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 107
    invoke-interface {p1}, Lcom/bytedance/sdk/a/b/t$a;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v7

    .line 108
    check-cast p1, Lcom/bytedance/sdk/a/b/a/c/g;

    .line 109
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->h()Lcom/bytedance/sdk/a/b/e;

    move-result-object v3

    .line 110
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/c/g;->i()Lcom/bytedance/sdk/a/b/p;

    move-result-object v4

    .line 112
    new-instance v0, Lcom/bytedance/sdk/a/b/a/b/g;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->o()Lcom/bytedance/sdk/a/b/j;

    move-result-object v1

    invoke-virtual {v7}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/a/b/a/c/j;->a(Lcom/bytedance/sdk/a/b/s;)Lcom/bytedance/sdk/a/b/a;

    move-result-object v2

    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/c/j;->d:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/a/b/g;-><init>(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    move-object v0, v6

    move v1, v8

    move-object v2, v7

    .line 118
    :cond_2a
    :goto_2a
    iget-boolean v5, p0, Lcom/bytedance/sdk/a/b/a/c/j;->e:Z

    if-eqz v5, :cond_3b

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/g;->c()V

    .line 120
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_3b
    :try_start_3b
    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v2, v5, v7, v9}, Lcom/bytedance/sdk/a/b/a/c/g;->a(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/a/c/c;Lcom/bytedance/sdk/a/b/a/b/c;)Lcom/bytedance/sdk/a/b/aa;
    :try_end_42
    .catch Lcom/bytedance/sdk/a/b/a/b/e; {:try_start_3b .. :try_end_42} :catch_6d
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_42} :catch_8a
    .catchall {:try_start_3b .. :try_end_42} :catchall_7e

    move-result-object v7

    .line 150
    if-eqz v0, :cond_5d

    .line 151
    invoke-virtual {v7}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v2

    .line 152
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/ab;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v0

    .line 152
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/a/b/aa$a;->c(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/aa$a;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object v7

    .line 158
    :cond_5d
    invoke-direct {p0, v7}, Lcom/bytedance/sdk/a/b/a/c/j;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/y;

    move-result-object v10

    .line 160
    if-nez v10, :cond_99

    .line 161
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->b:Z

    if-nez v0, :cond_6c

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/g;->c()V

    .line 164
    :cond_6c
    return-object v7

    .line 128
    :catch_6d
    move-exception v5

    .line 130
    :try_start_6e
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/a/b/e;->a()Ljava/io/IOException;

    move-result-object v7

    const/4 v9, 0x0

    invoke-direct {p0, v7, v9, v2}, Lcom/bytedance/sdk/a/b/a/c/j;->a(Ljava/io/IOException;ZLcom/bytedance/sdk/a/b/y;)Z

    move-result v7

    if-nez v7, :cond_2a

    .line 131
    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/a/b/e;->a()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_7e
    .catchall {:try_start_6e .. :try_end_7e} :catchall_7e

    .line 143
    :catchall_7e
    move-exception v0

    .line 144
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/a/b/a/b/g;->a(Ljava/io/IOException;)V

    .line 145
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/b/g;->c()V

    .line 147
    throw v0

    .line 135
    :catch_8a
    move-exception v5

    .line 137
    :try_start_8b
    instance-of v7, v5, Lcom/bytedance/sdk/a/b/a/e/a;

    if-nez v7, :cond_97

    const/4 v7, 0x1

    .line 138
    :goto_90
    invoke-direct {p0, v5, v7, v2}, Lcom/bytedance/sdk/a/b/a/c/j;->a(Ljava/io/IOException;ZLcom/bytedance/sdk/a/b/y;)Z

    move-result v7

    if-nez v7, :cond_2a

    throw v5
    :try_end_97
    .catchall {:try_start_8b .. :try_end_97} :catchall_7e

    :cond_97
    move v7, v8

    .line 137
    goto :goto_90

    .line 167
    :cond_99
    invoke-virtual {v7}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 169
    add-int/lit8 v9, v1, 0x1

    const/16 v0, 0x14

    if-le v9, v0, :cond_c4

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/g;->c()V

    .line 171
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many follow-up requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_c4
    invoke-virtual {v10}, Lcom/bytedance/sdk/a/b/y;->d()Lcom/bytedance/sdk/a/b/z;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/a/b/a/c/l;

    if-eqz v0, :cond_dd

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/g;->c()V

    .line 176
    new-instance v0, Ljava/net/HttpRetryException;

    const-string v1, "Cannot retry streamed HTTP body"

    invoke-virtual {v7}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 179
    :cond_dd
    invoke-virtual {v10}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lcom/bytedance/sdk/a/b/a/c/j;->a(Lcom/bytedance/sdk/a/b/aa;Lcom/bytedance/sdk/a/b/s;)Z

    move-result v0

    if-nez v0, :cond_108

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/g;->c()V

    .line 181
    new-instance v0, Lcom/bytedance/sdk/a/b/a/b/g;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->o()Lcom/bytedance/sdk/a/b/j;

    move-result-object v1

    .line 182
    invoke-virtual {v10}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/a/b/a/c/j;->a(Lcom/bytedance/sdk/a/b/s;)Lcom/bytedance/sdk/a/b/a;

    move-result-object v2

    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/c/j;->d:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/a/b/g;-><init>(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/e;Lcom/bytedance/sdk/a/b/p;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    :cond_103
    move-object v0, v7

    move v1, v9

    move-object v2, v10

    .line 190
    goto/16 :goto_2a

    .line 183
    :cond_108
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->c:Lcom/bytedance/sdk/a/b/a/b/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/g;->a()Lcom/bytedance/sdk/a/b/a/c/c;

    move-result-object v0

    if-eqz v0, :cond_103

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/c/j;->d:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/c/j;->e:Z

    return v0
.end method
