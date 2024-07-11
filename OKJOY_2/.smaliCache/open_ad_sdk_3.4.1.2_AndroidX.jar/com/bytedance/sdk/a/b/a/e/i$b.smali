.class final Lcom/bytedance/sdk/a/b/a/e/i$b;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lcom/bytedance/sdk/a/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# static fields
.field static final synthetic c:Z


# instance fields
.field a:Z

.field b:Z

.field final synthetic d:Lcom/bytedance/sdk/a/b/a/e/i;

.field private final e:Lcom/bytedance/sdk/a/a/c;

.field private final f:Lcom/bytedance/sdk/a/a/c;

.field private final g:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 325
    const-class v0, Lcom/bytedance/sdk/a/b/a/e/i;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i$b;->c:Z

    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/a/b/a/e/i;J)V
    .registers 4

    .line 352
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance p1, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {p1}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->e:Lcom/bytedance/sdk/a/a/c;

    .line 334
    new-instance p1, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {p1}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->f:Lcom/bytedance/sdk/a/a/c;

    .line 353
    iput-wide p2, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->g:J

    .line 354
    return-void
.end method

.method private b()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->f:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i$c;->a()V

    .line 397
    :goto_7
    :try_start_7
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->f:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->b:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->a:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    if-nez v0, :cond_27

    .line 398
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->l()V
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_30

    goto :goto_7

    .line 401
    :cond_27
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->f:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i$c;->h()V

    .line 402
    nop

    .line 403
    return-void

    .line 401
    :catchall_30
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/i;->f:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/i$c;->h()V

    .line 402
    throw v0
.end method

.method private c()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->a:Z

    if-nez v0, :cond_15

    .line 464
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    if-nez v0, :cond_b

    .line 467
    return-void

    .line 465
    :cond_b
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/o;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/o;-><init>(Lcom/bytedance/sdk/a/b/a/e/b;)V

    throw v0

    .line 462
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_9c

    .line 361
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    monitor-enter v2

    .line 362
    :try_start_9
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/i$b;->b()V

    .line 363
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/i$b;->c()V

    .line 364
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->f:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_1d

    const-wide/16 p1, -0x1

    monitor-exit v2

    return-wide p1

    .line 367
    :cond_1d
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->f:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Lcom/bytedance/sdk/a/a/c;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide p1

    .line 370
    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-wide v3, p3, Lcom/bytedance/sdk/a/b/a/e/i;->a:J

    add-long/2addr v3, p1

    iput-wide v3, p3, Lcom/bytedance/sdk/a/b/a/e/i;->a:J

    .line 371
    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-wide v3, p3, Lcom/bytedance/sdk/a/b/a/e/i;->a:J

    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object p3, p3, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object p3, p3, Lcom/bytedance/sdk/a/b/a/e/g;->l:Lcom/bytedance/sdk/a/b/a/e/n;

    .line 372
    invoke-virtual {p3}, Lcom/bytedance/sdk/a/b/a/e/n;->d()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v5, p3

    cmp-long p3, v3, v5

    if-ltz p3, :cond_5a

    .line 373
    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object p3, p3, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget v3, v3, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-wide v4, v4, Lcom/bytedance/sdk/a/b/a/e/i;->a:J

    invoke-virtual {p3, v3, v4, v5}, Lcom/bytedance/sdk/a/b/a/e/g;->a(IJ)V

    .line 374
    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iput-wide v0, p3, Lcom/bytedance/sdk/a/b/a/e/i;->a:J

    .line 376
    :cond_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_9 .. :try_end_5b} :catchall_99

    .line 379
    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object p3, p3, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    monitor-enter p3

    .line 380
    :try_start_60
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v2, v2, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-wide v3, v2, Lcom/bytedance/sdk/a/b/a/e/g;->j:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lcom/bytedance/sdk/a/b/a/e/g;->j:J

    .line 381
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v2, v2, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-wide v2, v2, Lcom/bytedance/sdk/a/b/a/e/g;->j:J

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v4, v4, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v4, v4, Lcom/bytedance/sdk/a/b/a/e/g;->l:Lcom/bytedance/sdk/a/b/a/e/n;

    .line 382
    invoke-virtual {v4}, Lcom/bytedance/sdk/a/b/a/e/n;->d()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_94

    .line 383
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v2, v2, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v4, v4, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-wide v4, v4, Lcom/bytedance/sdk/a/b/a/e/g;->j:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/bytedance/sdk/a/b/a/e/g;->a(IJ)V

    .line 384
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v2, v2, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iput-wide v0, v2, Lcom/bytedance/sdk/a/b/a/e/g;->j:J

    .line 386
    :cond_94
    monitor-exit p3

    .line 388
    return-wide p1

    .line 386
    :catchall_96
    move-exception p1

    monitor-exit p3
    :try_end_98
    .catchall {:try_start_60 .. :try_end_98} :catchall_96

    throw p1

    .line 376
    :catchall_99
    move-exception p1

    :try_start_9a
    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw p1

    .line 358
    :cond_9c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .line 447
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->f:Lcom/bytedance/sdk/a/b/a/e/i$c;

    return-object v0
.end method

.method a(Lcom/bytedance/sdk/a/a/e;J)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i$b;->c:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_13

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 408
    :cond_13
    :goto_13
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_7c

    .line 411
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    monitor-enter v2

    .line 412
    :try_start_1c
    iget-boolean v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->b:Z

    .line 413
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->f:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->g:J

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_2f

    move v4, v5

    goto :goto_30

    :cond_2f
    move v4, v6

    .line 414
    :goto_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_79

    .line 417
    if-eqz v4, :cond_3e

    .line 418
    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 419
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    sget-object p2, Lcom/bytedance/sdk/a/b/a/e/b;->d:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/a/b/a/e/i;->b(Lcom/bytedance/sdk/a/b/a/e/b;)V

    .line 420
    return-void

    .line 424
    :cond_3e
    if-eqz v3, :cond_44

    .line 425
    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 426
    return-void

    .line 430
    :cond_44
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-interface {p1, v2, p2, p3}, Lcom/bytedance/sdk/a/a/e;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v2

    .line 431
    const-wide/16 v7, -0x1

    cmp-long v4, v2, v7

    if-eqz v4, :cond_73

    .line 432
    sub-long/2addr p2, v2

    .line 435
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    monitor-enter v2

    .line 436
    :try_start_54
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->f:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-nez v0, :cond_5f

    goto :goto_60

    :cond_5f
    move v5, v6

    .line 437
    :goto_60
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->f:Lcom/bytedance/sdk/a/a/c;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/a/c;->a(Lcom/bytedance/sdk/a/a/s;)J

    .line 438
    if-eqz v5, :cond_6e

    .line 439
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 441
    :cond_6e
    monitor-exit v2

    .line 442
    goto :goto_13

    .line 441
    :catchall_70
    move-exception p1

    monitor-exit v2
    :try_end_72
    .catchall {:try_start_54 .. :try_end_72} :catchall_70

    throw p1

    .line 431
    :cond_73
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 414
    :catchall_79
    move-exception p1

    :try_start_7a
    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw p1

    .line 443
    :cond_7c
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    monitor-enter v0

    .line 453
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->a:Z

    .line 454
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->f:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/c;->r()V

    .line 455
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 456
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_17

    .line 457
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->j()V

    .line 458
    return-void

    .line 456
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method
