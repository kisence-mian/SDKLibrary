.class Lcom/bytedance/sdk/openadsdk/i/g;
.super Lcom/bytedance/sdk/openadsdk/i/a;
.source "ProxyTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/i/g$a;,
        Lcom/bytedance/sdk/openadsdk/i/g$b;,
        Lcom/bytedance/sdk/openadsdk/i/g$c;
    }
.end annotation


# instance fields
.field private final m:Ljava/net/Socket;

.field private final n:Lcom/bytedance/sdk/openadsdk/i/g$c;

.field private final o:Lcom/bytedance/sdk/openadsdk/i/d;

.field private volatile p:Lcom/bytedance/sdk/openadsdk/i/b;

.field private volatile q:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/g$a;)V
    .registers 4

    .line 42
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/i/g$a;->a:Lcom/bytedance/sdk/openadsdk/i/a/a;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/i/g$a;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/i/a;-><init>(Lcom/bytedance/sdk/openadsdk/i/a/a;Lcom/bytedance/sdk/openadsdk/i/b/c;)V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/i/g;->q:Z

    .line 44
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/i/g$a;->c:Ljava/net/Socket;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g;->m:Ljava/net/Socket;

    .line 45
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/i/g$a;->d:Lcom/bytedance/sdk/openadsdk/i/g$c;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/g;->n:Lcom/bytedance/sdk/openadsdk/i/g$c;

    .line 46
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/d;->c()Lcom/bytedance/sdk/openadsdk/i/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/g;->o:Lcom/bytedance/sdk/openadsdk/i/d;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/i/g;)Lcom/bytedance/sdk/openadsdk/i/d;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/i/g;->o:Lcom/bytedance/sdk/openadsdk/i/d;

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/i/b/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/i/g$b;Lcom/bytedance/sdk/openadsdk/i/l$a;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/i/c/d;,
            Lcom/bytedance/sdk/openadsdk/i/h$a;,
            Lcom/bytedance/sdk/openadsdk/i/c/a;,
            Lcom/bytedance/sdk/openadsdk/i/c/b;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 292
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/i/g$b;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 293
    invoke-direct {p0, p1, p3, p4}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Lcom/bytedance/sdk/openadsdk/i/b/a;Lcom/bytedance/sdk/openadsdk/i/g$b;Lcom/bytedance/sdk/openadsdk/i/l$a;)[B

    move-result-object v0

    .line 294
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->e()V

    .line 295
    if-nez v0, :cond_11

    return-void

    .line 297
    :cond_11
    array-length v2, v0

    invoke-virtual {p3, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/g$b;->a([BII)V

    .line 300
    :cond_15
    const/4 v0, 0x0

    if-nez p1, :cond_6c

    .line 301
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/g;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/i/i;->c:Lcom/bytedance/sdk/openadsdk/i/i$a;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/i/i$a;->a:I

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/i/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object p1

    .line 302
    if-nez p1, :cond_6c

    .line 303
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz p1, :cond_33

    .line 304
    const-string p1, "TAG_PROXY_ProxyTask"

    const-string v2, "failed to get video header info from db"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_33
    invoke-direct {p0, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Lcom/bytedance/sdk/openadsdk/i/b/a;Lcom/bytedance/sdk/openadsdk/i/g$b;Lcom/bytedance/sdk/openadsdk/i/l$a;)[B

    .line 308
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/g;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/i/i;->c:Lcom/bytedance/sdk/openadsdk/i/i$a;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/i/i$a;->a:I

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/i/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object p1

    .line 310
    if-eqz p1, :cond_47

    goto :goto_6c

    .line 311
    :cond_47
    new-instance p1, Lcom/bytedance/sdk/openadsdk/i/c/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "failed to get header, rawKey: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->g:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", url: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/c/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_6c
    :goto_6c
    nop

    .line 317
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget v4, p1, Lcom/bytedance/sdk/openadsdk/i/b/a;->c:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_ec

    .line 319
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->p:Lcom/bytedance/sdk/openadsdk/i/b;

    .line 320
    if-eqz v2, :cond_88

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/i/b;->b()Z

    move-result v3

    if-nez v3, :cond_88

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/i/b;->d()Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 321
    :cond_88
    new-instance v2, Lcom/bytedance/sdk/openadsdk/i/b$a;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/i/b$a;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->a:Lcom/bytedance/sdk/openadsdk/i/a/a;

    .line 323
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/i/b$a;->a(Lcom/bytedance/sdk/openadsdk/i/a/a;)Lcom/bytedance/sdk/openadsdk/i/b$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/i/b$a;->a(Lcom/bytedance/sdk/openadsdk/i/b/c;)Lcom/bytedance/sdk/openadsdk/i/b$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/i/b$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/b$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/i/b$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/b$a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/i/l;

    iget-object v4, p4, Lcom/bytedance/sdk/openadsdk/i/l$a;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/i/l;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/i/b$a;->a(Lcom/bytedance/sdk/openadsdk/i/l;)Lcom/bytedance/sdk/openadsdk/i/b$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->f:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/i/b$a;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/i/b$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/i/b$a;->a(Lcom/bytedance/sdk/openadsdk/i/i;)Lcom/bytedance/sdk/openadsdk/i/b$a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/i/g$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/i/g$1;-><init>(Lcom/bytedance/sdk/openadsdk/i/g;)V

    .line 325
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/i/b$a;->a(Lcom/bytedance/sdk/openadsdk/i/b$b;)Lcom/bytedance/sdk/openadsdk/i/b$a;

    move-result-object v2

    .line 340
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/i/b$a;->a()Lcom/bytedance/sdk/openadsdk/i/b;

    move-result-object v2

    .line 341
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->p:Lcom/bytedance/sdk/openadsdk/i/b;

    .line 343
    new-instance v3, Lcom/bytedance/sdk/openadsdk/j/f;

    const/16 v4, 0xa

    const/4 v5, 0x1

    invoke-direct {v3, v2, v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/j/f;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;II)V

    .line 344
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v4, Lcom/bytedance/sdk/openadsdk/i/g$2;

    invoke-direct {v4, p0, v3}, Lcom/bytedance/sdk/openadsdk/i/g$2;-><init>(Lcom/bytedance/sdk/openadsdk/i/g;Lcom/bytedance/sdk/openadsdk/j/f;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 350
    nop

    .line 351
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v2, :cond_ed

    .line 352
    const-string v2, "TAG_PROXY_ProxyTask"

    const-string v4, "fire download in process cache task"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    .line 357
    :cond_ec
    move-object v3, v0

    :cond_ed
    :goto_ed
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 361
    nop

    .line 363
    :try_start_f2
    new-instance v4, Lcom/bytedance/sdk/openadsdk/i/h;

    const-string v5, "r"

    invoke-direct {v4, p2, v5}, Lcom/bytedance/sdk/openadsdk/i/h;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_f9
    .catchall {:try_start_f2 .. :try_end_f9} :catchall_1d8

    .line 364
    :try_start_f9
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/i/g$b;->b()I

    move-result p2

    int-to-long v5, p2

    invoke-virtual {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/i/h;->a(J)V

    .line 365
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/i/i;->c:Lcom/bytedance/sdk/openadsdk/i/i$a;

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/i/i$a;->e:I

    if-lez p2, :cond_116

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/i/b/a;->c:I

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/i/i;->c:Lcom/bytedance/sdk/openadsdk/i/i$a;

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/i/i$a;->e:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_118

    :cond_116
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/i/b/a;->c:I

    .line 367
    :goto_118
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/i/g$b;->b()I

    move-result p2

    if-ge p2, p1, :cond_198

    .line 368
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->e()V

    .line 370
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/i/h;->a([B)I

    move-result p2

    .line 372
    if-gtz p2, :cond_191

    .line 373
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->p:Lcom/bytedance/sdk/openadsdk/i/b;

    .line 374
    if-eqz p2, :cond_13a

    .line 375
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/i/b;->i()Lcom/bytedance/sdk/openadsdk/i/c/b;

    move-result-object v0

    .line 376
    if-nez v0, :cond_139

    .line 380
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/i/b;->h()Lcom/bytedance/sdk/openadsdk/i/h$a;

    move-result-object v0

    .line 381
    if-nez v0, :cond_138

    goto :goto_13a

    .line 383
    :cond_138
    throw v0

    .line 377
    :cond_139
    throw v0

    .line 387
    :cond_13a
    :goto_13a
    if-eqz p2, :cond_161

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/i/b;->b()Z

    move-result v0

    if-nez v0, :cond_161

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/i/b;->d()Z

    move-result v0

    if-eqz v0, :cond_149

    goto :goto_161

    .line 394
    :cond_149
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->e()V

    .line 396
    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/i/b;->m:Ljava/lang/Object;

    monitor-enter v0
    :try_end_14f
    .catchall {:try_start_f9 .. :try_end_14f} :catchall_1d5

    .line 398
    :try_start_14f
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/i/b;->m:Ljava/lang/Object;

    const-wide/16 v5, 0x3e8

    invoke-virtual {p2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_156
    .catch Ljava/lang/InterruptedException; {:try_start_14f .. :try_end_156} :catch_159
    .catchall {:try_start_14f .. :try_end_156} :catchall_157

    .line 401
    goto :goto_15d

    .line 402
    :catchall_157
    move-exception p1

    goto :goto_15f

    .line 399
    :catch_159
    move-exception p2

    .line 400
    :try_start_15a
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 402
    :goto_15d
    monitor-exit v0

    .line 403
    goto :goto_194

    .line 402
    :goto_15f
    monitor-exit v0
    :try_end_160
    .catchall {:try_start_15a .. :try_end_160} :catchall_157

    :try_start_160
    throw p1

    .line 388
    :cond_161
    :goto_161
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz p1, :cond_16c

    .line 389
    const-string p1, "TAG_PROXY_ProxyTask"

    const-string p2, "download task has finished!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_16c
    new-instance p1, Lcom/bytedance/sdk/openadsdk/i/c/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "illegal state download task has finished, rawKey: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->g:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", url: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/c/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 404
    :cond_191
    invoke-virtual {p3, v2, v1, p2}, Lcom/bytedance/sdk/openadsdk/i/g$b;->b([BII)V

    .line 407
    :goto_194
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->e()V

    goto :goto_118

    .line 410
    :cond_198
    sget-boolean p2, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz p2, :cond_1c2

    .line 411
    const-string p2, "TAG_PROXY_ProxyTask"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "read cache file complete: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/i/g$b;->b()I

    move-result p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1c2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->c()V
    :try_end_1c5
    .catchall {:try_start_160 .. :try_end_1c5} :catchall_1d5

    .line 416
    nop

    .line 417
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/i/h;->a()V

    .line 420
    if-eqz v3, :cond_1d4

    .line 422
    :try_start_1cb
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/j/f;->get()Ljava/lang/Object;
    :try_end_1ce
    .catchall {:try_start_1cb .. :try_end_1ce} :catchall_1cf

    .line 425
    :goto_1ce
    goto :goto_1d4

    .line 423
    :catchall_1cf
    move-exception p1

    .line 424
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1ce

    .line 428
    :cond_1d4
    :goto_1d4
    return-void

    .line 416
    :catchall_1d5
    move-exception p1

    move-object v0, v4

    goto :goto_1d9

    :catchall_1d8
    move-exception p1

    :goto_1d9
    if-eqz v0, :cond_1de

    .line 417
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/h;->a()V

    .line 420
    :cond_1de
    if-eqz v3, :cond_1e8

    .line 422
    :try_start_1e0
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/j/f;->get()Ljava/lang/Object;
    :try_end_1e3
    .catchall {:try_start_1e0 .. :try_end_1e3} :catchall_1e4

    .line 425
    goto :goto_1e8

    .line 423
    :catchall_1e4
    move-exception p2

    .line 424
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 427
    :cond_1e8
    :goto_1e8
    throw p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/i/g$b;Lcom/bytedance/sdk/openadsdk/i/l$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/i/c/d;,
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/i/h$a;,
            Lcom/bytedance/sdk/openadsdk/i/c/a;,
            Lcom/bytedance/sdk/openadsdk/i/c/b;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/i/i;->a:Lcom/bytedance/sdk/openadsdk/i/i$c;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/i/i$c;->a:Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/i/g;->b(Lcom/bytedance/sdk/openadsdk/i/g$b;Lcom/bytedance/sdk/openadsdk/i/l$a;)V

    goto :goto_15

    .line 218
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/i/g;->c(Lcom/bytedance/sdk/openadsdk/i/g$b;Lcom/bytedance/sdk/openadsdk/i/l$a;)V

    .line 220
    :goto_15
    return-void
.end method

.method private a(ZIIII)V
    .registers 6

    .line 261
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/i/g$b;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/i/c/a;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 146
    const-string v0, "TAG_PROXY_ProxyTask"

    :goto_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/g;->j:Lcom/bytedance/sdk/openadsdk/i/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/i/l;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b9

    .line 147
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->e()V

    .line 149
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/g;->j:Lcom/bytedance/sdk/openadsdk/i/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/i/l;->b()Lcom/bytedance/sdk/openadsdk/i/l$a;

    move-result-object v1

    .line 151
    const/4 v3, 0x1

    :try_start_15
    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Lcom/bytedance/sdk/openadsdk/i/g$b;Lcom/bytedance/sdk/openadsdk/i/l$a;)V
    :try_end_18
    .catch Lcom/bytedance/sdk/openadsdk/i/c/c; {:try_start_15 .. :try_end_18} :catch_a5
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_6b
    .catch Lcom/bytedance/sdk/openadsdk/i/c/d; {:try_start_15 .. :try_end_18} :catch_5e
    .catch Lcom/bytedance/sdk/openadsdk/i/h$a; {:try_start_15 .. :try_end_18} :catch_42
    .catch Lcom/bytedance/sdk/openadsdk/i/c/b; {:try_start_15 .. :try_end_18} :catch_35
    .catch Lcom/bytedance/sdk/adnet/err/a; {:try_start_15 .. :try_end_18} :catch_27
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    .line 152
    return v3

    .line 195
    :catch_19
    move-exception v1

    .line 196
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v2, :cond_b7

    .line 197
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b7

    .line 191
    :catch_27
    move-exception v1

    .line 192
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v2, :cond_b6

    .line 193
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b6

    .line 184
    :catch_35
    move-exception p1

    .line 185
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v1, :cond_41

    .line 186
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_41
    return v2

    .line 178
    :catch_42
    move-exception v1

    .line 179
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v3, :cond_4e

    .line 180
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_4e
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->q:Z

    .line 183
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->g:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b6

    .line 172
    :catch_5e
    move-exception p1

    .line 173
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v1, :cond_6a

    .line 174
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_6a
    return v3

    .line 156
    :catch_6b
    move-exception v2

    .line 157
    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_73

    .line 158
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/i/l$a;->b()V

    .line 161
    :cond_73
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->b()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 162
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v1, :cond_b6

    .line 163
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Canceled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 164
    const-string v1, "okhttp call canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    .line 166
    :cond_8f
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    .line 170
    :cond_97
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b6

    .line 153
    :catch_a5
    move-exception v2

    .line 154
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/i/l$a;->a()V

    .line 155
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    :cond_b6
    :goto_b6
    nop

    .line 200
    :cond_b7
    :goto_b7
    goto/16 :goto_2

    .line 201
    :cond_b9
    return v2
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/i/b/a;Lcom/bytedance/sdk/openadsdk/i/g$b;Lcom/bytedance/sdk/openadsdk/i/l$a;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 265
    const-string v0, "TAG_PROXY_ProxyTask"

    if-eqz p1, :cond_1c

    .line 266
    sget-boolean p3, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz p3, :cond_d

    .line 267
    const-string p3, "get header from db"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_d
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/i/g$b;->b()I

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Lcom/bytedance/sdk/openadsdk/i/b/a;I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/bytedance/sdk/openadsdk/i/g/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1

    .line 271
    :cond_1c
    const/4 p1, -0x1

    const/4 v1, 0x0

    const-string v2, "HEAD"

    invoke-virtual {p0, p3, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Lcom/bytedance/sdk/openadsdk/i/l$a;IILjava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/e/a;

    move-result-object p1

    .line 272
    if-nez p1, :cond_28

    const/4 p1, 0x0

    return-object p1

    .line 274
    :cond_28
    :try_start_28
    invoke-static {p1, v1, v1}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Lcom/bytedance/sdk/openadsdk/i/e/a;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 275
    if-nez v1, :cond_5b

    .line 278
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/i/i;->c:Lcom/bytedance/sdk/openadsdk/i/i$a;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/i/i$a;->a:I

    invoke-static {p1, p3, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Lcom/bytedance/sdk/openadsdk/i/e/a;Lcom/bytedance/sdk/openadsdk/i/b/c;Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object p3

    .line 279
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v1, :cond_45

    .line 280
    const-string v1, "get header from network"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_45
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/i/g$b;->b()I

    move-result p2

    invoke-static {p3, p2}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Lcom/bytedance/sdk/openadsdk/i/b/a;I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/bytedance/sdk/openadsdk/i/g/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2
    :try_end_53
    .catchall {:try_start_28 .. :try_end_53} :catchall_84

    .line 284
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/e/a;->d()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/io/Closeable;)V

    .line 282
    return-object p2

    .line 276
    :cond_5b
    :try_start_5b
    new-instance p2, Lcom/bytedance/sdk/openadsdk/i/c/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/bytedance/sdk/openadsdk/i/c/c;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_84
    .catchall {:try_start_5b .. :try_end_84} :catchall_84

    .line 284
    :catchall_84
    move-exception p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/e/a;->d()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/io/Closeable;)V

    .line 285
    throw p2
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/i/g$b;Lcom/bytedance/sdk/openadsdk/i/l$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/i/c/d;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/i/i;->c:Lcom/bytedance/sdk/openadsdk/i/i$a;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/i/i$a;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object v0

    .line 225
    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Lcom/bytedance/sdk/openadsdk/i/b/a;Lcom/bytedance/sdk/openadsdk/i/g$b;Lcom/bytedance/sdk/openadsdk/i/l$a;)[B

    move-result-object p2

    .line 226
    if-nez p2, :cond_15

    return-void

    .line 227
    :cond_15
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/i/g$b;->a([BII)V

    .line 228
    return-void
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/i/g$b;Lcom/bytedance/sdk/openadsdk/i/l$a;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/i/h$a;,
            Lcom/bytedance/sdk/openadsdk/i/c/d;,
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/i/c/a;,
            Lcom/bytedance/sdk/openadsdk/i/c/b;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 232
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/i/g;->q:Z

    if-eqz v0, :cond_6a

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g;->a:Lcom/bytedance/sdk/openadsdk/i/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/i/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 235
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 236
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/i/i;->c:Lcom/bytedance/sdk/openadsdk/i/i$a;

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/i/i$a;->a:I

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/i/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object v7

    .line 237
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/g$b;->b()I

    move-result v5

    .line 238
    int-to-long v2, v5

    sub-long v2, v0, v2

    long-to-int v4, v2

    .line 239
    if-nez v7, :cond_2a

    const/4 v8, -0x1

    goto :goto_2c

    :cond_2a
    iget v8, v7, Lcom/bytedance/sdk/openadsdk/i/b/a;->c:I

    .line 240
    :goto_2c
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/g$b;->b()I

    move-result v9

    int-to-long v9, v9

    cmp-long v9, v0, v9

    if-lez v9, :cond_5f

    .line 242
    sget-boolean v9, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v9, :cond_51

    .line 243
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cache hit, remainSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TAG_PROXY_ProxyTask"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_51
    const/4 v2, 0x1

    long-to-int v9, v0

    move-object v0, p0

    move v1, v2

    move v2, v4

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/i/g;->a(ZIIII)V

    .line 247
    invoke-direct {p0, v7, v6, p1, p2}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Lcom/bytedance/sdk/openadsdk/i/b/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/i/g$b;Lcom/bytedance/sdk/openadsdk/i/l$a;)V

    .line 248
    return-void

    .line 251
    :cond_5f
    const/4 v2, 0x0

    long-to-int v6, v0

    move-object v0, p0

    move v1, v2

    move v2, v4

    move v3, v8

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/i/g;->a(ZIIII)V

    .line 252
    goto :goto_76

    .line 253
    :cond_6a
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/g$b;->b()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/i/g;->a(ZIIII)V

    .line 256
    :goto_76
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/i/g;->d(Lcom/bytedance/sdk/openadsdk/i/g$b;Lcom/bytedance/sdk/openadsdk/i/l$a;)V

    .line 257
    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/i/g$b;Lcom/bytedance/sdk/openadsdk/i/l$a;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/i/c/d;,
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/openadsdk/i/c/a;,
            Lcom/bytedance/sdk/openadsdk/i/c/b;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 431
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->i()V

    .line 432
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 433
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/g$b;->b()I

    move-result v2

    .line 434
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/i/i;->c:Lcom/bytedance/sdk/openadsdk/i/i$a;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/i/i$a;->e:I

    const-string v4, "GET"

    invoke-virtual {p0, p2, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Lcom/bytedance/sdk/openadsdk/i/l$a;IILjava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/e/a;

    move-result-object v3

    .line 435
    if-nez v3, :cond_1a

    return-void

    .line 437
    :cond_1a
    nop

    .line 438
    nop

    .line 440
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1f
    invoke-static {v3, v6, v4}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Lcom/bytedance/sdk/openadsdk/i/e/a;ZZ)Ljava/lang/String;

    move-result-object v4
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_221

    .line 441
    const-string v7, ", rawKey: "

    if-nez v4, :cond_1fa

    .line 445
    :try_start_27
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/i/g;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->f()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/bytedance/sdk/openadsdk/i/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object v4

    .line 446
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Lcom/bytedance/sdk/openadsdk/i/e/a;)I

    move-result v8
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_221

    .line 447
    const-string v9, "TAG_PROXY_ProxyTask"

    if-eqz v4, :cond_b6

    :try_start_3b
    iget v10, v4, Lcom/bytedance/sdk/openadsdk/i/b/a;->c:I

    if-eq v10, v8, :cond_b6

    .line 448
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz p1, :cond_71

    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Length not match, old: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v2, v4, Lcom/bytedance/sdk/openadsdk/i/b/a;->c:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", key: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_71
    new-instance p1, Lcom/bytedance/sdk/openadsdk/i/c/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Content-Length not match, old length: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v9, v4, Lcom/bytedance/sdk/openadsdk/i/b/a;->c:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", new length: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/i/g;->g:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", currentUrl: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ", previousInfo: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v2, v4, Lcom/bytedance/sdk/openadsdk/i/b/a;->e:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/c/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 456
    :cond_b6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/g$b;->a()Z

    move-result p2

    if-nez p2, :cond_cd

    .line 457
    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Lcom/bytedance/sdk/openadsdk/i/e/a;I)Ljava/lang/String;

    move-result-object p2

    .line 458
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->e()V

    .line 459
    sget-object v2, Lcom/bytedance/sdk/openadsdk/i/g/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 460
    array-length v2, p2

    invoke-virtual {p1, p2, v6, v2}, Lcom/bytedance/sdk/openadsdk/i/g$b;->a([BII)V

    .line 463
    :cond_cd
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->e()V

    .line 465
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->a:Lcom/bytedance/sdk/openadsdk/i/a/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/i/a/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 466
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->q:Z
    :try_end_da
    .catchall {:try_start_3b .. :try_end_da} :catchall_221

    const-string v4, ", from: "

    if-eqz v2, :cond_13d

    if-eqz p2, :cond_13d

    :try_start_e0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/g$b;->b()I

    move-result v2

    int-to-long v10, v2

    cmp-long v2, v7, v10

    if-ltz v2, :cond_13d

    .line 467
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    iget-object v8, v8, Lcom/bytedance/sdk/openadsdk/i/i;->c:Lcom/bytedance/sdk/openadsdk/i/i$a;

    iget v8, v8, Lcom/bytedance/sdk/openadsdk/i/i$a;->a:I

    invoke-static {v3, v2, v7, v8}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Lcom/bytedance/sdk/openadsdk/i/e/a;Lcom/bytedance/sdk/openadsdk/i/b/c;Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/i/b/a;
    :try_end_fa
    .catchall {:try_start_e0 .. :try_end_fa} :catchall_221

    .line 471
    :try_start_fa
    new-instance v2, Lcom/bytedance/sdk/openadsdk/i/h;

    const-string v7, "rwd"

    invoke-direct {v2, p2, v7}, Lcom/bytedance/sdk/openadsdk/i/h;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_101
    .catch Lcom/bytedance/sdk/openadsdk/i/h$a; {:try_start_fa .. :try_end_101} :catch_10c
    .catchall {:try_start_fa .. :try_end_101} :catchall_221

    .line 472
    :try_start_101
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/g$b;->b()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v2, v7, v8}, Lcom/bytedance/sdk/openadsdk/i/h;->a(J)V
    :try_end_109
    .catch Lcom/bytedance/sdk/openadsdk/i/h$a; {:try_start_101 .. :try_end_109} :catch_10a
    .catchall {:try_start_101 .. :try_end_109} :catchall_1f7

    .line 476
    goto :goto_112

    .line 473
    :catch_10a
    move-exception v7

    goto :goto_10e

    :catch_10c
    move-exception v7

    move-object v2, v5

    .line 474
    :goto_10e
    :try_start_10e
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/i/h$a;->printStackTrace()V

    .line 475
    move-object v2, v5

    .line 478
    :goto_112
    sget-boolean v7, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v7, :cond_168

    .line 479
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can write to cache file in network task, cache file size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/g$b;->b()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13c
    .catchall {:try_start_10e .. :try_end_13c} :catchall_1f7

    goto :goto_168

    .line 481
    :cond_13d
    :try_start_13d
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v2, :cond_167

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t write to cache file in network task, cache file size: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/g$b;->b()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_167
    .catchall {:try_start_13d .. :try_end_167} :catchall_221

    .line 485
    :cond_167
    move-object v2, v5

    :cond_168
    :goto_168
    :try_start_168
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->f()I

    move-result v7

    invoke-virtual {p2, v4, v7}, Lcom/bytedance/sdk/openadsdk/i/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object p2

    .line 486
    if-nez p2, :cond_178

    move p2, v6

    goto :goto_17a

    :cond_178
    iget p2, p2, Lcom/bytedance/sdk/openadsdk/i/b/a;->c:I

    .line 488
    :goto_17a
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 490
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/i/e/a;->d()Ljava/io/InputStream;

    move-result-object v7
    :try_end_182
    .catchall {:try_start_168 .. :try_end_182} :catchall_1f7

    move v8, v6

    .line 492
    :goto_183
    :try_start_183
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-ltz v10, :cond_1ca

    .line 493
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->e()V

    .line 494
    if-lez v10, :cond_1c6

    .line 495
    invoke-virtual {p1, v4, v6, v10}, Lcom/bytedance/sdk/openadsdk/i/g$b;->b([BII)V
    :try_end_191
    .catchall {:try_start_183 .. :try_end_191} :catchall_1f3

    .line 496
    add-int/2addr v8, v10

    .line 497
    if-eqz v2, :cond_1bf

    .line 499
    :try_start_194
    invoke-virtual {v2, v4, v6, v10}, Lcom/bytedance/sdk/openadsdk/i/h;->a([BII)V
    :try_end_197
    .catchall {:try_start_194 .. :try_end_197} :catchall_198

    .line 507
    goto :goto_1bf

    .line 500
    :catchall_198
    move-exception v10

    .line 501
    :try_start_199
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/i/h;->a()V
    :try_end_19c
    .catchall {:try_start_199 .. :try_end_19c} :catchall_1f3

    .line 502
    nop

    .line 504
    :try_start_19d
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v2, :cond_1bb

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "append to cache file error in network task!!! "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bb
    .catchall {:try_start_19d .. :try_end_1bb} :catchall_1bd

    .line 511
    :cond_1bb
    move-object v2, v5

    goto :goto_1bf

    .line 522
    :catchall_1bd
    move-exception p1

    goto :goto_1f5

    .line 511
    :cond_1bf
    :goto_1bf
    :try_start_1bf
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/g$b;->b()I

    move-result v10

    invoke-virtual {p0, p2, v10}, Lcom/bytedance/sdk/openadsdk/i/g;->a(II)V

    .line 513
    :cond_1c6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->e()V

    goto :goto_183

    .line 516
    :cond_1ca
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz p1, :cond_1d3

    .line 517
    const-string p1, "read from net complete!"

    invoke-static {v9, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_1d3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->c()V
    :try_end_1d6
    .catchall {:try_start_1bf .. :try_end_1d6} :catchall_1f3

    .line 522
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/i/e/a;->d()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/io/Closeable;)V

    .line 524
    if-eqz v2, :cond_1e2

    .line 525
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/i/h;->a()V

    .line 528
    :cond_1e2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 529
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/g;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 530
    nop

    .line 531
    return-void

    .line 522
    :catchall_1f3
    move-exception p1

    move-object v5, v2

    :goto_1f5
    move v6, v8

    goto :goto_222

    :catchall_1f7
    move-exception p1

    move-object v5, v2

    goto :goto_222

    .line 442
    :cond_1fa
    :try_start_1fa
    new-instance p1, Lcom/bytedance/sdk/openadsdk/i/c/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/i/g;->g:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", url: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/c/c;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_221
    .catchall {:try_start_1fa .. :try_end_221} :catchall_221

    .line 522
    :catchall_221
    move-exception p1

    :goto_222
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/i/e/a;->d()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/io/Closeable;)V

    .line 524
    if-eqz v5, :cond_22e

    .line 525
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/i/h;->a()V

    .line 528
    :cond_22e
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 529
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 530
    throw p1
.end method

.method private h()Lcom/bytedance/sdk/openadsdk/i/g$b;
    .registers 6

    .line 52
    const-string v0, "TAG_PROXY_ProxyTask"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->m:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/i/i;->a(Ljava/io/InputStream;)Lcom/bytedance/sdk/openadsdk/i/i;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    .line 53
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->m:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 55
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/i/i;->c:Lcom/bytedance/sdk/openadsdk/i/i$a;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/i/i$a;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    sget-object v3, Lcom/bytedance/sdk/openadsdk/i/e;->a:Lcom/bytedance/sdk/openadsdk/i/a/b;

    goto :goto_23

    :cond_21
    sget-object v3, Lcom/bytedance/sdk/openadsdk/i/e;->b:Lcom/bytedance/sdk/openadsdk/i/a/c;

    .line 56
    :goto_23
    if-nez v3, :cond_2f

    .line 57
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v2, :cond_2e

    .line 58
    const-string v2, "cache is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_2e
    return-object v1

    .line 62
    :cond_2f
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->a:Lcom/bytedance/sdk/openadsdk/i/a/a;

    .line 64
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/i/i;->c:Lcom/bytedance/sdk/openadsdk/i/i$a;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/i/i$a;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->g:Ljava/lang/String;

    .line 65
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/i/i;->c:Lcom/bytedance/sdk/openadsdk/i/i$a;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/i/i$a;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    .line 66
    new-instance v3, Lcom/bytedance/sdk/openadsdk/i/l;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/i/i;->c:Lcom/bytedance/sdk/openadsdk/i/i$a;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/i/i$a;->g:Ljava/util/List;

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/i/l;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->j:Lcom/bytedance/sdk/openadsdk/i/l;

    .line 67
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/i/i;->b:Ljava/util/List;

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->f:Ljava/util/List;

    .line 69
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v3, :cond_74

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request from MediaPlayer:    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/i/i;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_74
    new-instance v3, Lcom/bytedance/sdk/openadsdk/i/g$b;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/i/i;->c:Lcom/bytedance/sdk/openadsdk/i/i$a;

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/i/i$a;->d:I

    invoke-direct {v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/i/g$b;-><init>(Ljava/io/OutputStream;I)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7f} :catch_a5
    .catch Lcom/bytedance/sdk/openadsdk/i/i$d; {:try_start_3 .. :try_end_7f} :catch_80

    return-object v3

    .line 82
    :catch_80
    move-exception v2

    .line 83
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->m:Ljava/net/Socket;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/net/Socket;)V

    .line 84
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v3, :cond_91

    .line 85
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g;->a:Lcom/bytedance/sdk/openadsdk/i/a/a;

    if-nez v0, :cond_97

    move-object v0, v1

    goto :goto_9f

    :cond_97
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 88
    :goto_9f
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ca

    .line 74
    :catch_a5
    move-exception v2

    .line 75
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->m:Ljava/net/Socket;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/net/Socket;)V

    .line 76
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v3, :cond_b6

    .line 77
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_b6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g;->a:Lcom/bytedance/sdk/openadsdk/i/a/a;

    if-nez v0, :cond_bc

    move-object v0, v1

    goto :goto_c4

    :cond_bc
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 81
    :goto_c4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    nop

    .line 90
    :goto_ca
    return-object v1
.end method

.method private i()V
    .registers 3

    .line 540
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g;->p:Lcom/bytedance/sdk/openadsdk/i/b;

    .line 541
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/g;->p:Lcom/bytedance/sdk/openadsdk/i/b;

    .line 542
    if-eqz v0, :cond_a

    .line 543
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/b;->a()V

    .line 545
    :cond_a
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 535
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/i/a;->a()V

    .line 536
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->i()V

    .line 537
    return-void
.end method

.method public run()V
    .registers 8

    .line 95
    const-string v0, "TAG_PROXY_ProxyTask"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->h()Lcom/bytedance/sdk/openadsdk/i/g$b;

    move-result-object v1

    .line 96
    if-nez v1, :cond_9

    .line 97
    return-void

    .line 100
    :cond_9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->n:Lcom/bytedance/sdk/openadsdk/i/g$c;

    if-eqz v2, :cond_10

    .line 101
    invoke-interface {v2, p0}, Lcom/bytedance/sdk/openadsdk/i/g$c;->a(Lcom/bytedance/sdk/openadsdk/i/g;)V

    .line 104
    :cond_10
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->a:Lcom/bytedance/sdk/openadsdk/i/a/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/i/a/a;->a(Ljava/lang/String;)V

    .line 106
    sget v2, Lcom/bytedance/sdk/openadsdk/i/e;->h:I

    .line 107
    if-eqz v2, :cond_49

    .line 108
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/i/g;->i:Lcom/bytedance/sdk/openadsdk/i/i;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/i/i;->c:Lcom/bytedance/sdk/openadsdk/i/i$a;

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/i/i$a;->a:I

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/i/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_3e

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/g;->a:Lcom/bytedance/sdk/openadsdk/i/a/a;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/i/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/i/b/a;->c:I

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-gez v2, :cond_49

    .line 111
    :cond_3e
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/g;->o:Lcom/bytedance/sdk/openadsdk/i/d;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->g()Z

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/i/d;->a(ZLjava/lang/String;)V

    .line 116
    :cond_49
    :try_start_49
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Lcom/bytedance/sdk/openadsdk/i/g$b;)Z
    :try_end_4c
    .catch Lcom/bytedance/sdk/openadsdk/i/c/a; {:try_start_49 .. :try_end_4c} :catch_5f
    .catch Lcom/bytedance/sdk/adnet/err/VAdError; {:try_start_49 .. :try_end_4c} :catch_5a
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    .line 128
    :cond_4c
    :goto_4c
    goto :goto_6c

    .line 124
    :catchall_4d
    move-exception v1

    .line 125
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v2, :cond_6c

    .line 126
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 122
    :catch_5a
    move-exception v0

    .line 123
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/err/VAdError;->printStackTrace()V

    goto :goto_4c

    .line 117
    :catch_5f
    move-exception v1

    .line 119
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v2, :cond_4c

    .line 120
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 130
    :cond_6c
    :goto_6c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g;->a:Lcom/bytedance/sdk/openadsdk/i/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/i/a/a;->b(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g;->o:Lcom/bytedance/sdk/openadsdk/i/d;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->g()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/d;->a(ZLjava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/g;->a()V

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g;->m:Ljava/net/Socket;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/net/Socket;)V

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g;->n:Lcom/bytedance/sdk/openadsdk/i/g$c;

    if-eqz v0, :cond_8c

    .line 138
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/i/g$c;->b(Lcom/bytedance/sdk/openadsdk/i/g;)V

    .line 140
    :cond_8c
    return-void
.end method
