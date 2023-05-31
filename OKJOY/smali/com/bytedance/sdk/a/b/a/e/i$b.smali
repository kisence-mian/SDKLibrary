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

    .prologue
    .line 325
    const-class v0, Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i$b;->c:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/bytedance/sdk/a/b/a/e/i;J)V
    .registers 6

    .prologue
    .line 352
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance v0, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->e:Lcom/bytedance/sdk/a/a/c;

    .line 334
    new-instance v0, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->f:Lcom/bytedance/sdk/a/a/c;

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

    .prologue
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

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->b:Z

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->a:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    if-nez v0, :cond_30

    .line 398
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->l()V
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_27

    goto :goto_7

    .line 401
    :catchall_27
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/i;->f:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/i$c;->h()V

    .line 402
    throw v0

    .line 401
    :cond_30
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->f:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i$c;->h()V

    .line 403
    return-void
.end method

.method private c()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->a:Z

    if-eqz v0, :cond_c

    .line 462
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    if-eqz v0, :cond_1c

    .line 465
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/o;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/o;-><init>(Lcom/bytedance/sdk/a/b/a/e/b;)V

    throw v0

    .line 467
    :cond_1c
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 358
    cmp-long v0, p2, v4

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_1f
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    monitor-enter v2

    .line 362
    :try_start_22
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/i$b;->b()V

    .line 363
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/i$b;->c()V

    .line 364
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->f:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_36

    const-wide/16 v0, -0x1

    monitor-exit v2

    .line 388
    :goto_35
    return-wide v0

    .line 367
    :cond_36
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->f:Lcom/bytedance/sdk/a/a/c;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->f:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Lcom/bytedance/sdk/a/a/c;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v0

    .line 370
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-wide v4, v3, Lcom/bytedance/sdk/a/b/a/e/i;->a:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lcom/bytedance/sdk/a/b/a/e/i;->a:J

    .line 371
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-wide v4, v3, Lcom/bytedance/sdk/a/b/a/e/i;->a:J

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v3, v3, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v3, v3, Lcom/bytedance/sdk/a/b/a/e/g;->l:Lcom/bytedance/sdk/a/b/a/e/n;

    .line 372
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/e/n;->d()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_77

    .line 373
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v3, v3, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget v4, v4, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-wide v6, v5, Lcom/bytedance/sdk/a/b/a/e/i;->a:J

    invoke-virtual {v3, v4, v6, v7}, Lcom/bytedance/sdk/a/b/a/e/g;->a(IJ)V

    .line 374
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/bytedance/sdk/a/b/a/e/i;->a:J

    .line 376
    :cond_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_22 .. :try_end_78} :catchall_b8

    .line 379
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v2, v2, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    monitor-enter v2

    .line 380
    :try_start_7d
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v3, v3, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-wide v4, v3, Lcom/bytedance/sdk/a/b/a/e/g;->j:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lcom/bytedance/sdk/a/b/a/e/g;->j:J

    .line 381
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v3, v3, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-wide v4, v3, Lcom/bytedance/sdk/a/b/a/e/g;->j:J

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v3, v3, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v3, v3, Lcom/bytedance/sdk/a/b/a/e/g;->l:Lcom/bytedance/sdk/a/b/a/e/n;

    .line 382
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/e/n;->d()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_b3

    .line 383
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v3, v3, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v5, v5, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-wide v6, v5, Lcom/bytedance/sdk/a/b/a/e/g;->j:J

    invoke-virtual {v3, v4, v6, v7}, Lcom/bytedance/sdk/a/b/a/e/g;->a(IJ)V

    .line 384
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v3, v3, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/bytedance/sdk/a/b/a/e/g;->j:J

    .line 386
    :cond_b3
    monitor-exit v2

    goto :goto_35

    :catchall_b5
    move-exception v0

    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_7d .. :try_end_b7} :catchall_b5

    throw v0

    .line 376
    :catchall_b8
    move-exception v0

    :try_start_b9
    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v0
.end method

.method public a()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/i;->f:Lcom/bytedance/sdk/a/b/a/e/i$c;

    return-object v0
.end method

.method a(Lcom/bytedance/sdk/a/a/e;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 406
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i$b;->c:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 432
    :cond_16
    sub-long/2addr p2, v4

    .line 435
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    monitor-enter v3

    .line 436
    :try_start_1a
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->f:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-nez v0, :cond_76

    move v0, v1

    .line 437
    :goto_25
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->f:Lcom/bytedance/sdk/a/a/c;

    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/a/a/c;->a(Lcom/bytedance/sdk/a/a/s;)J

    .line 438
    if-eqz v0, :cond_33

    .line 439
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 441
    :cond_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_78

    .line 408
    :cond_34
    cmp-long v0, p2, v10

    if-lez v0, :cond_58

    .line 411
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    monitor-enter v3

    .line 412
    :try_start_3b
    iget-boolean v4, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->b:Z

    .line 413
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->f:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v6

    add-long/2addr v6, p2

    iget-wide v8, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->g:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_59

    move v0, v1

    .line 414
    :goto_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_5b

    .line 417
    if-eqz v0, :cond_5e

    .line 418
    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 419
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/b;->d:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/i;->b(Lcom/bytedance/sdk/a/b/a/e/b;)V

    .line 443
    :cond_58
    :goto_58
    return-void

    :cond_59
    move v0, v2

    .line 413
    goto :goto_4b

    .line 414
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0

    .line 424
    :cond_5e
    if-eqz v4, :cond_64

    .line 425
    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    goto :goto_58

    .line 430
    :cond_64
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-interface {p1, v0, p2, p3}, Lcom/bytedance/sdk/a/a/e;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide v4

    .line 431
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_16

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_76
    move v0, v2

    .line 436
    goto :goto_25

    .line 441
    :catchall_78
    move-exception v0

    :try_start_79
    monitor-exit v3
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    monitor-enter v1

    .line 453
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->a:Z

    .line 454
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->f:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->r()V

    .line 455
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 456
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_17

    .line 457
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i$b;->d:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->j()V

    .line 458
    return-void

    .line 456
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method
