.class Lcom/bytedance/sdk/openadsdk/h/g;
.super Lcom/bytedance/sdk/openadsdk/h/a;
.source "ProxyTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/g$a;,
        Lcom/bytedance/sdk/openadsdk/h/g$b;,
        Lcom/bytedance/sdk/openadsdk/h/g$c;
    }
.end annotation


# instance fields
.field private final m:Ljava/net/Socket;

.field private final n:Lcom/bytedance/sdk/openadsdk/h/g$c;

.field private final o:Lcom/bytedance/sdk/openadsdk/h/d;

.field private volatile p:Lcom/bytedance/sdk/openadsdk/h/b;

.field private volatile q:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/g$a;)V
    .registers 4

    .prologue
    .line 41
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/g$a;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/h/g$a;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/h/a;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/a;Lcom/bytedance/sdk/openadsdk/h/b/c;)V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->q:Z

    .line 43
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/g$a;->c:Ljava/net/Socket;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->m:Ljava/net/Socket;

    .line 44
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/g$a;->d:Lcom/bytedance/sdk/openadsdk/h/g$c;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->n:Lcom/bytedance/sdk/openadsdk/h/g$c;

    .line 45
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->o:Lcom/bytedance/sdk/openadsdk/h/d;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/g;)Lcom/bytedance/sdk/openadsdk/h/d;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->o:Lcom/bytedance/sdk/openadsdk/h/d;

    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/h/b/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/h/g$b;Lcom/bytedance/sdk/openadsdk/h/l$a;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/h/c/d;,
            Lcom/bytedance/sdk/openadsdk/h/h$a;,
            Lcom/bytedance/sdk/openadsdk/h/c/a;,
            Lcom/bytedance/sdk/openadsdk/h/c/b;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 291
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/h/g$b;->a()Z

    move-result v0

    if-nez v0, :cond_16

    .line 292
    invoke-direct {p0, p1, p3, p4}, Lcom/bytedance/sdk/openadsdk/h/g;->a(Lcom/bytedance/sdk/openadsdk/h/b/a;Lcom/bytedance/sdk/openadsdk/h/g$b;Lcom/bytedance/sdk/openadsdk/h/l$a;)[B

    move-result-object v0

    .line 293
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->e()V

    .line 294
    if-nez v0, :cond_12

    .line 428
    :cond_11
    :goto_11
    return-void

    .line 296
    :cond_12
    array-length v2, v0

    invoke-virtual {p3, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/h/g$b;->a([BII)V

    .line 299
    :cond_16
    if-nez p1, :cond_6b

    .line 300
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/h/i;->c:Lcom/bytedance/sdk/openadsdk/h/i$a;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/h/i$a;->a:I

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/h/b/a;

    move-result-object p1

    .line 301
    if-nez p1, :cond_6b

    .line 302
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_33

    .line 303
    const-string v0, "TAG_PROXY_ProxyTask"

    const-string v2, "failed to get video header info from db"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_33
    invoke-direct {p0, v1, p3, p4}, Lcom/bytedance/sdk/openadsdk/h/g;->a(Lcom/bytedance/sdk/openadsdk/h/b/a;Lcom/bytedance/sdk/openadsdk/h/g$b;Lcom/bytedance/sdk/openadsdk/h/l$a;)[B

    .line 307
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/h/i;->c:Lcom/bytedance/sdk/openadsdk/h/i$a;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/h/i$a;->a:I

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/h/b/a;

    move-result-object p1

    .line 309
    if-nez p1, :cond_6b

    .line 310
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/c/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get header, rawKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_6b
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1e8

    .line 318
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->p:Lcom/bytedance/sdk/openadsdk/h/b;

    .line 319
    if-eqz v0, :cond_86

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/b;->b()Z

    move-result v2

    if-nez v2, :cond_86

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 320
    :cond_86
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/b$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/h/b$a;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    .line 322
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Lcom/bytedance/sdk/openadsdk/h/a/a;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Lcom/bytedance/sdk/openadsdk/h/b/c;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/b$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/h/l;

    iget-object v3, p4, Lcom/bytedance/sdk/openadsdk/h/l$a;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/l;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Lcom/bytedance/sdk/openadsdk/h/l;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->f:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Lcom/bytedance/sdk/openadsdk/h/i;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/h/g$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/h/g$1;-><init>(Lcom/bytedance/sdk/openadsdk/h/g;)V

    .line 324
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Lcom/bytedance/sdk/openadsdk/h/b$b;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a()Lcom/bytedance/sdk/openadsdk/h/b;

    move-result-object v2

    .line 340
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->p:Lcom/bytedance/sdk/openadsdk/h/b;

    .line 342
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/b;

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/i/b;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;II)V

    .line 343
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/h/g$2;

    invoke-direct {v3, p0, v0}, Lcom/bytedance/sdk/openadsdk/h/g$2;-><init>(Lcom/bytedance/sdk/openadsdk/h/g;Lcom/bytedance/sdk/openadsdk/i/b;)V

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Lcom/bytedance/sdk/openadsdk/i/c;)V

    .line 351
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v2, :cond_e8

    .line 352
    const-string v2, "TAG_PROXY_ProxyTask"

    const-string v3, "fire download in process cache task"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_e8
    :goto_e8
    const/16 v2, 0x2000

    new-array v4, v2, [B

    .line 363
    :try_start_ec
    new-instance v3, Lcom/bytedance/sdk/openadsdk/h/h;

    const-string v2, "r"

    invoke-direct {v3, p2, v2}, Lcom/bytedance/sdk/openadsdk/h/h;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_ec .. :try_end_f3} :catchall_1e2

    .line 364
    :try_start_f3
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/h/g$b;->b()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v3, v6, v7}, Lcom/bytedance/sdk/openadsdk/h/h;->a(J)V

    .line 365
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/h/i;->c:Lcom/bytedance/sdk/openadsdk/h/i$a;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/h/i$a;->e:I

    if-lez v1, :cond_136

    iget v1, p1, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/h/i;->c:Lcom/bytedance/sdk/openadsdk/h/i$a;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/h/i$a;->e:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 367
    :goto_10f
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/h/g$b;->b()I

    move-result v2

    if-ge v2, v1, :cond_19d

    .line 368
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->e()V

    .line 370
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/h/h;->a([B)I

    move-result v2

    .line 372
    if-gtz v2, :cond_198

    .line 373
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->p:Lcom/bytedance/sdk/openadsdk/h/b;

    .line 374
    if-eqz v2, :cond_140

    .line 375
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/b;->i()Lcom/bytedance/sdk/openadsdk/h/c/b;

    move-result-object v5

    .line 376
    if-eqz v5, :cond_139

    .line 377
    throw v5
    :try_end_129
    .catchall {:try_start_f3 .. :try_end_129} :catchall_129

    .line 416
    :catchall_129
    move-exception v1

    move-object v2, v3

    :goto_12b
    if-eqz v2, :cond_130

    .line 417
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/h;->a()V

    .line 420
    :cond_130
    if-eqz v0, :cond_135

    .line 422
    :try_start_132
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/b;->get()Ljava/lang/Object;
    :try_end_135
    .catch Ljava/lang/Throwable; {:try_start_132 .. :try_end_135} :catch_1dc

    .line 425
    :cond_135
    :goto_135
    throw v1

    .line 365
    :cond_136
    :try_start_136
    iget v1, p1, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    goto :goto_10f

    .line 380
    :cond_139
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/b;->h()Lcom/bytedance/sdk/openadsdk/h/h$a;

    move-result-object v5

    .line 381
    if-eqz v5, :cond_140

    .line 383
    throw v5

    .line 387
    :cond_140
    if-eqz v2, :cond_14e

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/b;->b()Z

    move-result v5

    if-nez v5, :cond_14e

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/b;->d()Z

    move-result v5

    if-eqz v5, :cond_17e

    .line 388
    :cond_14e
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v1, :cond_159

    .line 389
    const-string v1, "TAG_PROXY_ProxyTask"

    const-string v2, "download task has finished!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_159
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/c/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal state download task has finished, rawKey: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/h/g;->g:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", url: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/c/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    :cond_17e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->e()V

    .line 396
    iget-object v5, v2, Lcom/bytedance/sdk/openadsdk/h/b;->m:Ljava/lang/Object;

    monitor-enter v5
    :try_end_184
    .catchall {:try_start_136 .. :try_end_184} :catchall_129

    .line 398
    :try_start_184
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/h/b;->m:Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v2, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_18b
    .catch Ljava/lang/InterruptedException; {:try_start_184 .. :try_end_18b} :catch_190
    .catchall {:try_start_184 .. :try_end_18b} :catchall_195

    .line 402
    :goto_18b
    :try_start_18b
    monitor-exit v5
    :try_end_18c
    .catchall {:try_start_18b .. :try_end_18c} :catchall_195

    .line 407
    :goto_18c
    :try_start_18c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->e()V
    :try_end_18f
    .catchall {:try_start_18c .. :try_end_18f} :catchall_129

    goto :goto_10f

    .line 399
    :catch_190
    move-exception v2

    .line 400
    :try_start_191
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_18b

    .line 402
    :catchall_195
    move-exception v1

    monitor-exit v5
    :try_end_197
    .catchall {:try_start_191 .. :try_end_197} :catchall_195

    :try_start_197
    throw v1

    .line 404
    :cond_198
    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5, v2}, Lcom/bytedance/sdk/openadsdk/h/g$b;->b([BII)V

    goto :goto_18c

    .line 410
    :cond_19d
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v2, :cond_1c7

    .line 411
    const-string v2, "TAG_PROXY_ProxyTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read cache file complete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/h/g$b;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1c7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->c()V
    :try_end_1ca
    .catchall {:try_start_197 .. :try_end_1ca} :catchall_129

    .line 416
    if-eqz v3, :cond_1cf

    .line 417
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/h/h;->a()V

    .line 420
    :cond_1cf
    if-eqz v0, :cond_11

    .line 422
    :try_start_1d1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/b;->get()Ljava/lang/Object;
    :try_end_1d4
    .catch Ljava/lang/Throwable; {:try_start_1d1 .. :try_end_1d4} :catch_1d6

    goto/16 :goto_11

    .line 423
    :catch_1d6
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_11

    .line 423
    :catch_1dc
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_135

    .line 416
    :catchall_1e2
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_12b

    :cond_1e8
    move-object v0, v1

    goto/16 :goto_e8
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/h/g$b;Lcom/bytedance/sdk/openadsdk/h/l$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/h/c/d;,
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/h/h$a;,
            Lcom/bytedance/sdk/openadsdk/h/c/a;,
            Lcom/bytedance/sdk/openadsdk/h/c/b;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .prologue
    .line 214
    const-string v0, "HEAD"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/h/i;->a:Lcom/bytedance/sdk/openadsdk/h/i$c;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/h/i$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/h/g;->b(Lcom/bytedance/sdk/openadsdk/h/g$b;Lcom/bytedance/sdk/openadsdk/h/l$a;)V

    .line 219
    :goto_11
    return-void

    .line 217
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/h/g;->c(Lcom/bytedance/sdk/openadsdk/h/g$b;Lcom/bytedance/sdk/openadsdk/h/l$a;)V

    goto :goto_11
.end method

.method private a(ZIIII)V
    .registers 6

    .prologue
    .line 260
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/h/g$b;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/h/c/a;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->j:Lcom/bytedance/sdk/openadsdk/h/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/l;->a()Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 146
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->e()V

    .line 148
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->j:Lcom/bytedance/sdk/openadsdk/h/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/l;->b()Lcom/bytedance/sdk/openadsdk/h/l$a;

    move-result-object v2

    .line 150
    :try_start_13
    invoke-direct {p0, p1, v2}, Lcom/bytedance/sdk/openadsdk/h/g;->a(Lcom/bytedance/sdk/openadsdk/h/g$b;Lcom/bytedance/sdk/openadsdk/h/l$a;)V
    :try_end_16
    .catch Lcom/bytedance/sdk/openadsdk/h/c/c; {:try_start_13 .. :try_end_16} :catch_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_29
    .catch Lcom/bytedance/sdk/openadsdk/h/c/d; {:try_start_13 .. :try_end_16} :catch_67
    .catch Lcom/bytedance/sdk/openadsdk/h/h$a; {:try_start_13 .. :try_end_16} :catch_76
    .catch Lcom/bytedance/sdk/openadsdk/h/c/b; {:try_start_13 .. :try_end_16} :catch_95
    .catch Lcom/bytedance/sdk/adnet/err/a; {:try_start_13 .. :try_end_16} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_b6

    .line 200
    :cond_16
    :goto_16
    return v0

    .line 152
    :catch_17
    move-exception v3

    .line 153
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/l$a;->a()V

    .line 154
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/h/g;->g:Ljava/lang/String;

    invoke-virtual {p0, v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/h/g;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 155
    :catch_29
    move-exception v3

    .line 156
    instance-of v4, v3, Ljava/net/SocketTimeoutException;

    if-eqz v4, :cond_31

    .line 157
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/l$a;->b()V

    .line 160
    :cond_31
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->b()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 161
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v2, :cond_2

    .line 162
    const-string v2, "Canceled"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 163
    const-string v2, "TAG_PROXY_ProxyTask"

    const-string v3, "okhttp call canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 165
    :cond_4f
    const-string v2, "TAG_PROXY_ProxyTask"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 169
    :cond_59
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/h/g;->g:Ljava/lang/String;

    invoke-virtual {p0, v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/h/g;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 171
    :catch_67
    move-exception v1

    .line 172
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v2, :cond_16

    .line 173
    const-string v2, "TAG_PROXY_ProxyTask"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 177
    :catch_76
    move-exception v2

    .line 178
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v3, :cond_84

    .line 179
    const-string v3, "TAG_PROXY_ProxyTask"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_84
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->q:Z

    .line 182
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->g()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/h/g;->g:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/h/g;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 183
    :catch_95
    move-exception v0

    .line 184
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v2, :cond_a3

    .line 185
    const-string v2, "TAG_PROXY_ProxyTask"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3
    move v0, v1

    .line 189
    goto/16 :goto_16

    .line 190
    :catch_a6
    move-exception v2

    .line 191
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v3, :cond_2

    .line 192
    const-string v3, "TAG_PROXY_ProxyTask"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 194
    :catch_b6
    move-exception v2

    .line 195
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v3, :cond_2

    .line 196
    const-string v3, "TAG_PROXY_ProxyTask"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c6
    move v0, v1

    .line 200
    goto/16 :goto_16
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/h/b/a;Lcom/bytedance/sdk/openadsdk/h/g$b;Lcom/bytedance/sdk/openadsdk/h/l$a;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 264
    if-eqz p1, :cond_1d

    .line 265
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_e

    .line 266
    const-string v0, "TAG_PROXY_ProxyTask"

    const-string v1, "get header from db"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_e
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/h/g$b;->b()I

    move-result v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Lcom/bytedance/sdk/openadsdk/h/b/a;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/g/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 281
    :goto_1c
    return-object v0

    .line 270
    :cond_1d
    const/4 v0, -0x1

    const-string v1, "HEAD"

    invoke-virtual {p0, p3, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/h/g;->a(Lcom/bytedance/sdk/openadsdk/h/l$a;IILjava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/e/a;

    move-result-object v1

    .line 271
    if-nez v1, :cond_28

    const/4 v0, 0x0

    goto :goto_1c

    .line 273
    :cond_28
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_2a
    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Lcom/bytedance/sdk/openadsdk/h/e/a;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_62

    .line 275
    new-instance v2, Lcom/bytedance/sdk/openadsdk/h/c/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", rawKey: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", url: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/h/c/c;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_59
    .catchall {:try_start_2a .. :try_end_59} :catchall_59

    .line 283
    :catchall_59
    move-exception v0

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/e/a;->d()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/io/Closeable;)V

    throw v0

    .line 277
    :cond_62
    :try_start_62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/h/i;->c:Lcom/bytedance/sdk/openadsdk/h/i$a;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/h/i$a;->a:I

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Lcom/bytedance/sdk/openadsdk/h/e/a;Lcom/bytedance/sdk/openadsdk/h/b/c;Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/h/b/a;

    move-result-object v0

    .line 278
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v2, :cond_7b

    .line 279
    const-string v2, "TAG_PROXY_ProxyTask"

    const-string v3, "get header from network"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_7b
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/h/g$b;->b()I

    move-result v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Lcom/bytedance/sdk/openadsdk/h/b/a;I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/bytedance/sdk/openadsdk/h/g/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_88
    .catchall {:try_start_62 .. :try_end_88} :catchall_59

    move-result-object v0

    .line 283
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/e/a;->d()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/io/Closeable;)V

    goto :goto_1c
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/h/g$b;Lcom/bytedance/sdk/openadsdk/h/l$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/h/c/d;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/h/i;->c:Lcom/bytedance/sdk/openadsdk/h/i$a;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/h/i$a;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/h/b/a;

    move-result-object v0

    .line 224
    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/h/g;->a(Lcom/bytedance/sdk/openadsdk/h/b/a;Lcom/bytedance/sdk/openadsdk/h/g$b;Lcom/bytedance/sdk/openadsdk/h/l$a;)[B

    move-result-object v0

    .line 225
    if-nez v0, :cond_15

    .line 227
    :goto_14
    return-void

    .line 226
    :cond_15
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/g$b;->a([BII)V

    goto :goto_14
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/h/g$b;Lcom/bytedance/sdk/openadsdk/h/l$a;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/h/h$a;,
            Lcom/bytedance/sdk/openadsdk/h/c/d;,
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/h/c/a;,
            Lcom/bytedance/sdk/openadsdk/h/c/b;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 231
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->q:Z

    if-eqz v0, :cond_68

    .line 233
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 234
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/h/i;->c:Lcom/bytedance/sdk/openadsdk/h/i$a;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/h/i$a;->a:I

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/h/b/a;

    move-result-object v7

    .line 236
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/h/g$b;->b()I

    move-result v5

    .line 237
    int-to-long v2, v5

    sub-long v2, v8, v2

    long-to-int v2, v2

    .line 238
    if-nez v7, :cond_5c

    const/4 v3, -0x1

    .line 239
    :goto_2a
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/h/g$b;->b()I

    move-result v0

    int-to-long v10, v0

    cmp-long v0, v8, v10

    if-lez v0, :cond_5f

    .line 241
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_52

    .line 242
    const-string v0, "TAG_PROXY_ProxyTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache hit, remainSize: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v10, v5

    sub-long v10, v8, v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_52
    const/4 v1, 0x1

    long-to-int v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/h/g;->a(ZIIII)V

    .line 246
    invoke-direct {p0, v7, v6, p1, p2}, Lcom/bytedance/sdk/openadsdk/h/g;->a(Lcom/bytedance/sdk/openadsdk/h/b/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/h/g$b;Lcom/bytedance/sdk/openadsdk/h/l$a;)V

    .line 256
    :goto_5b
    return-void

    .line 238
    :cond_5c
    iget v3, v7, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    goto :goto_2a

    .line 250
    :cond_5f
    long-to-int v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/h/g;->a(ZIIII)V

    .line 255
    :goto_64
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/h/g;->d(Lcom/bytedance/sdk/openadsdk/h/g$b;Lcom/bytedance/sdk/openadsdk/h/l$a;)V

    goto :goto_5b

    .line 252
    :cond_68
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/h/g$b;->b()I

    move-result v5

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/h/g;->a(ZIIII)V

    goto :goto_64
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/h/g$b;Lcom/bytedance/sdk/openadsdk/h/l$a;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/h/c/d;,
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/h/c/a;,
            Lcom/bytedance/sdk/openadsdk/h/c/b;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 431
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->i()V

    .line 432
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 433
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/h/g$b;->b()I

    move-result v0

    .line 434
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/h/i;->c:Lcom/bytedance/sdk/openadsdk/h/i$a;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/h/i$a;->e:I

    const-string v6, "GET"

    invoke-virtual {p0, p2, v0, v1, v6}, Lcom/bytedance/sdk/openadsdk/h/g;->a(Lcom/bytedance/sdk/openadsdk/h/l$a;IILjava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/e/a;

    move-result-object v6

    .line 435
    if-nez v6, :cond_1c

    .line 531
    :goto_1b
    return-void

    .line 440
    :cond_1c
    const/4 v1, 0x0

    const/4 v7, 0x1

    :try_start_1e
    invoke-static {v6, v1, v7}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Lcom/bytedance/sdk/openadsdk/h/e/a;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 441
    if-eqz v1, :cond_6b

    .line 442
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/c/c;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", rawKey: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/h/g;->g:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", url: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/c/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catchall {:try_start_1e .. :try_end_4d} :catchall_4d

    .line 522
    :catchall_4d
    move-exception v0

    move v1, v3

    :goto_4f
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/h/e/a;->d()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/io/Closeable;)V

    .line 524
    if-eqz v2, :cond_5b

    .line 525
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/h;->a()V

    .line 528
    :cond_5b
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 529
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    throw v0

    .line 445
    :cond_6b
    :try_start_6b
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->f()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/h/b/a;

    move-result-object v1

    .line 446
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Lcom/bytedance/sdk/openadsdk/h/e/a;)I

    move-result v7

    .line 447
    if-eqz v1, :cond_fc

    iget v8, v1, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    if-eq v8, v7, :cond_fc

    .line 448
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_b5

    .line 449
    const-string v0, "TAG_PROXY_ProxyTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Content-Length not match, old: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_b5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/c/b;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Content-Length not match, old length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", new length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rawKey: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/h/g;->g:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", currentUrl: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", previousInfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/h/b/a;->e:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/c/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_fc
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/h/g$b;->a()Z

    move-result v1

    if-nez v1, :cond_114

    .line 457
    invoke-static {v6, v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Lcom/bytedance/sdk/openadsdk/h/e/a;I)Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->e()V

    .line 459
    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/g/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 460
    const/4 v1, 0x0

    array-length v7, v0

    invoke-virtual {p1, v0, v1, v7}, Lcom/bytedance/sdk/openadsdk/h/g$b;->a([BII)V

    .line 463
    :cond_114
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->e()V

    .line 465
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/a/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 466
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->q:Z

    if-eqz v0, :cond_1c2

    if-eqz v7, :cond_1c2

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/h/g$b;->b()I

    move-result v8

    int-to-long v8, v8

    cmp-long v0, v0, v8

    if-ltz v0, :cond_1c2

    .line 467
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v8, v8, Lcom/bytedance/sdk/openadsdk/h/i;->c:Lcom/bytedance/sdk/openadsdk/h/i$a;

    iget v8, v8, Lcom/bytedance/sdk/openadsdk/h/i$a;->a:I

    invoke-static {v6, v0, v1, v8}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Lcom/bytedance/sdk/openadsdk/h/e/a;Lcom/bytedance/sdk/openadsdk/h/b/c;Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/h/b/a;
    :try_end_13f
    .catchall {:try_start_6b .. :try_end_13f} :catchall_4d

    .line 471
    :try_start_13f
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/h;

    const-string v0, "rwd"

    invoke-direct {v1, v7, v0}, Lcom/bytedance/sdk/openadsdk/h/h;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_146
    .catch Lcom/bytedance/sdk/openadsdk/h/h$a; {:try_start_13f .. :try_end_146} :catch_1bb
    .catchall {:try_start_13f .. :try_end_146} :catchall_4d

    .line 472
    :try_start_146
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/h/g$b;->b()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Lcom/bytedance/sdk/openadsdk/h/h;->a(J)V
    :try_end_14e
    .catch Lcom/bytedance/sdk/openadsdk/h/h$a; {:try_start_146 .. :try_end_14e} :catch_24e
    .catchall {:try_start_146 .. :try_end_14e} :catchall_246

    .line 478
    :goto_14e
    :try_start_14e
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_17c

    .line 479
    const-string v0, "TAG_PROXY_ProxyTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can write to cache file in network task, cache file size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/h/g$b;->b()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_17c
    :goto_17c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->f()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/h/b/a;

    move-result-object v0

    .line 486
    if-nez v0, :cond_1f2

    move v0, v3

    .line 488
    :goto_18b
    const/16 v7, 0x2000

    new-array v7, v7, [B

    .line 490
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/h/e/a;->d()Ljava/io/InputStream;
    :try_end_192
    .catchall {:try_start_14e .. :try_end_192} :catchall_246

    move-result-object v8

    move v12, v3

    move-object v3, v1

    move v1, v12

    .line 492
    :goto_196
    :try_start_196
    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-ltz v9, :cond_21b

    .line 493
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->e()V

    .line 494
    if-lez v9, :cond_1b3

    .line 495
    const/4 v10, 0x0

    invoke-virtual {p1, v7, v10, v9}, Lcom/bytedance/sdk/openadsdk/h/g$b;->b([BII)V
    :try_end_1a5
    .catchall {:try_start_196 .. :try_end_1a5} :catchall_1b7

    .line 496
    add-int/2addr v1, v9

    .line 497
    if-eqz v3, :cond_1ac

    .line 499
    const/4 v10, 0x0

    :try_start_1a9
    invoke-virtual {v3, v7, v10, v9}, Lcom/bytedance/sdk/openadsdk/h/h;->a([BII)V
    :try_end_1ac
    .catch Ljava/lang/Throwable; {:try_start_1a9 .. :try_end_1ac} :catch_1f5
    .catchall {:try_start_1a9 .. :try_end_1ac} :catchall_1b7

    .line 511
    :cond_1ac
    :goto_1ac
    :try_start_1ac
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/h/g$b;->b()I

    move-result v9

    invoke-virtual {p0, v0, v9}, Lcom/bytedance/sdk/openadsdk/h/g;->a(II)V

    .line 513
    :cond_1b3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->e()V
    :try_end_1b6
    .catchall {:try_start_1ac .. :try_end_1b6} :catchall_1b7

    goto :goto_196

    .line 522
    :catchall_1b7
    move-exception v0

    move-object v2, v3

    goto/16 :goto_4f

    .line 473
    :catch_1bb
    move-exception v0

    move-object v1, v2

    .line 474
    :goto_1bd
    :try_start_1bd
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/h$a;->printStackTrace()V
    :try_end_1c0
    .catchall {:try_start_1bd .. :try_end_1c0} :catchall_246

    move-object v1, v2

    .line 475
    goto :goto_14e

    .line 481
    :cond_1c2
    :try_start_1c2
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_1f0

    .line 482
    const-string v0, "TAG_PROXY_ProxyTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t write to cache file in network task, cache file size: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", from: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/h/g$b;->b()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f0
    .catchall {:try_start_1c2 .. :try_end_1f0} :catchall_4d

    :cond_1f0
    move-object v1, v2

    goto :goto_17c

    .line 486
    :cond_1f2
    :try_start_1f2
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I
    :try_end_1f4
    .catchall {:try_start_1f2 .. :try_end_1f4} :catchall_246

    goto :goto_18b

    .line 500
    :catch_1f5
    move-exception v9

    .line 501
    :try_start_1f6
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/h/h;->a()V
    :try_end_1f9
    .catchall {:try_start_1f6 .. :try_end_1f9} :catchall_1b7

    .line 504
    :try_start_1f9
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v3, :cond_219

    .line 505
    const-string v3, "TAG_PROXY_ProxyTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "append to cache file error in network task!!! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_219
    .catchall {:try_start_1f9 .. :try_end_219} :catchall_24b

    :cond_219
    move-object v3, v2

    goto :goto_1ac

    .line 516
    :cond_21b
    :try_start_21b
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_226

    .line 517
    const-string v0, "TAG_PROXY_ProxyTask"

    const-string v2, "read from net complete!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_226
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->c()V
    :try_end_229
    .catchall {:try_start_21b .. :try_end_229} :catchall_1b7

    .line 522
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/h/e/a;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/io/Closeable;)V

    .line 524
    if-eqz v3, :cond_235

    .line 525
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/h/h;->a()V

    .line 528
    :cond_235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 529
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto/16 :goto_1b

    .line 522
    :catchall_246
    move-exception v0

    move-object v2, v1

    move v1, v3

    goto/16 :goto_4f

    :catchall_24b
    move-exception v0

    goto/16 :goto_4f

    .line 473
    :catch_24e
    move-exception v0

    goto/16 :goto_1bd
.end method

.method private h()Lcom/bytedance/sdk/openadsdk/h/g$b;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 51
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->m:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/i;->a(Ljava/io/InputStream;)Lcom/bytedance/sdk/openadsdk/h/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->m:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i;->c:Lcom/bytedance/sdk/openadsdk/h/i$a;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/h/i$a;->a:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2c

    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->a:Lcom/bytedance/sdk/openadsdk/h/a/b;

    .line 55
    :goto_1e
    if-nez v0, :cond_2f

    .line 56
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_2b

    .line 57
    const-string v0, "TAG_PROXY_ProxyTask"

    const-string v2, "cache is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_2b
    :goto_2b
    return-object v1

    .line 54
    :cond_2c
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->b:Lcom/bytedance/sdk/openadsdk/h/a/c;

    goto :goto_1e

    .line 61
    :cond_2f
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i;->c:Lcom/bytedance/sdk/openadsdk/h/i$a;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->g:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i;->c:Lcom/bytedance/sdk/openadsdk/h/i$a;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/h/i;->c:Lcom/bytedance/sdk/openadsdk/h/i$a;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/h/i$a;->g:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/l;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->j:Lcom/bytedance/sdk/openadsdk/h/l;

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->f:Ljava/util/List;

    .line 68
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_76

    .line 69
    const-string v0, "TAG_PROXY_ProxyTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request from MediaPlayer:    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/h/i;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_76
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/g$b;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/h/i;->c:Lcom/bytedance/sdk/openadsdk/h/i$a;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/h/i$a;->d:I

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/g$b;-><init>(Ljava/io/OutputStream;I)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_81} :catch_83
    .catch Lcom/bytedance/sdk/openadsdk/h/i$d; {:try_start_1 .. :try_end_81} :catch_ab

    move-object v1, v0

    goto :goto_2b

    .line 73
    :catch_83
    move-exception v0

    move-object v2, v0

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->m:Ljava/net/Socket;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/net/Socket;)V

    .line 75
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_97

    .line 76
    const-string v0, "TAG_PROXY_ProxyTask"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    if-nez v0, :cond_a2

    move-object v0, v1

    .line 80
    :goto_9c
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/g;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/h/g;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b

    .line 79
    :cond_a2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9c

    .line 81
    :catch_ab
    move-exception v0

    move-object v2, v0

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->m:Ljava/net/Socket;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/net/Socket;)V

    .line 83
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_bf

    .line 84
    const-string v0, "TAG_PROXY_ProxyTask"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_bf
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    if-nez v0, :cond_cb

    move-object v0, v1

    .line 87
    :goto_c4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/g;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/h/g;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 86
    :cond_cb
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c4
.end method

.method private i()V
    .registers 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->p:Lcom/bytedance/sdk/openadsdk/h/b;

    .line 541
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->p:Lcom/bytedance/sdk/openadsdk/h/b;

    .line 542
    if-eqz v0, :cond_a

    .line 543
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/b;->a()V

    .line 545
    :cond_a
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 535
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->a()V

    .line 536
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->i()V

    .line 537
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->h()Lcom/bytedance/sdk/openadsdk/h/g$b;

    move-result-object v0

    .line 95
    if-nez v0, :cond_7

    .line 139
    :cond_6
    :goto_6
    return-void

    .line 99
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->n:Lcom/bytedance/sdk/openadsdk/h/g$c;

    if-eqz v1, :cond_10

    .line 100
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->n:Lcom/bytedance/sdk/openadsdk/h/g$c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/h/g$c;->a(Lcom/bytedance/sdk/openadsdk/h/g;)V

    .line 103
    :cond_10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a(Ljava/lang/String;)V

    .line 105
    sget v1, Lcom/bytedance/sdk/openadsdk/h/e;->h:I

    .line 106
    if-eqz v1, :cond_49

    .line 107
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/g;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/h/i;->c:Lcom/bytedance/sdk/openadsdk/h/i$a;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/h/i$a;->a:I

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/h/b/a;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_3e

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_49

    .line 110
    :cond_3e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->o:Lcom/bytedance/sdk/openadsdk/h/d;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->g()Z

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/d;->a(ZLjava/lang/String;)V

    .line 115
    :cond_49
    :try_start_49
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/h/g;->a(Lcom/bytedance/sdk/openadsdk/h/g$b;)Z
    :try_end_4c
    .catch Lcom/bytedance/sdk/openadsdk/h/c/a; {:try_start_49 .. :try_end_4c} :catch_6f
    .catch Lcom/bytedance/sdk/adnet/err/VAdError; {:try_start_49 .. :try_end_4c} :catch_7e
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4c} :catch_83

    .line 129
    :cond_4c
    :goto_4c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/a/a;->b(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->o:Lcom/bytedance/sdk/openadsdk/h/d;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->g()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(ZLjava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/g;->a()V

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->m:Ljava/net/Socket;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/net/Socket;)V

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->n:Lcom/bytedance/sdk/openadsdk/h/g$c;

    if-eqz v0, :cond_6

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g;->n:Lcom/bytedance/sdk/openadsdk/h/g$c;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/g$c;->b(Lcom/bytedance/sdk/openadsdk/h/g;)V

    goto :goto_6

    .line 116
    :catch_6f
    move-exception v0

    .line 118
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v1, :cond_4c

    .line 119
    const-string v1, "TAG_PROXY_ProxyTask"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 121
    :catch_7e
    move-exception v0

    .line 122
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/err/VAdError;->printStackTrace()V

    goto :goto_4c

    .line 123
    :catch_83
    move-exception v0

    .line 124
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v1, :cond_4c

    .line 125
    const-string v1, "TAG_PROXY_ProxyTask"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method
