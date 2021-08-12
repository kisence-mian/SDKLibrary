.class public Lcom/ss/android/socialbase/downloader/impls/d;
.super Ljava/lang/Object;
.source "DefaultDownloadCache.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/i;


# instance fields
.field private final a:Lcom/ss/android/socialbase/downloader/impls/k;

.field private b:Lcom/ss/android/socialbase/downloader/downloader/r;

.field private volatile c:Z

.field private volatile d:Z

.field private e:Lcom/ss/android/socialbase/downloader/h/g$a;

.field private f:Lcom/ss/android/socialbase/downloader/h/g;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/d$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/impls/d$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/d;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->e:Lcom/ss/android/socialbase/downloader/h/g$a;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->f:Lcom/ss/android/socialbase/downloader/h/g;

    .line 73
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/k;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    .line 74
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "fix_sigbus_downloader_db"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 75
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 76
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/b/e;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    goto :goto_45

    .line 78
    :cond_2e
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/f;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/b/f;-><init>()V

    .line 79
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/d$2;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/impls/d$2;-><init>(Lcom/ss/android/socialbase/downloader/impls/d;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/b/f;->a(Lcom/ss/android/socialbase/downloader/b/f$a;)V

    .line 87
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    .line 88
    goto :goto_45

    .line 90
    :cond_3e
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/b/e;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    .line 92
    :goto_45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    .line 93
    new-instance v0, Lcom/ss/android/socialbase/downloader/h/g;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->e:Lcom/ss/android/socialbase/downloader/h/g$a;

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/h/g;-><init>(Landroid/os/Looper;Lcom/ss/android/socialbase/downloader/h/g$a;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->f:Lcom/ss/android/socialbase/downloader/h/g;

    .line 94
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/impls/d;->f()V

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/d;Lcom/ss/android/socialbase/downloader/downloader/r;)Lcom/ss/android/socialbase/downloader/downloader/r;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    return-object p1
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/d;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/d;->i()V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V
    .registers 4

    .line 479
    if-nez p1, :cond_3

    .line 480
    return-void

    .line 481
    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->b()Z

    move-result v0

    .line 482
    if-eqz v0, :cond_1c

    .line 483
    if-eqz p2, :cond_21

    .line 484
    const/4 p2, 0x1

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object p2

    .line 485
    if-eqz p2, :cond_16

    .line 486
    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    goto :goto_1b

    .line 488
    :cond_16
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 489
    :goto_1b
    goto :goto_21

    .line 491
    :cond_1c
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 493
    :cond_21
    :goto_21
    return-void
.end method

.method private c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 475
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/impls/d;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    .line 476
    return-void
.end method

.method private i()V
    .registers 2

    .line 126
    monitor-enter p0

    .line 127
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 129
    monitor-exit p0

    .line 130
    return-void

    .line 129
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method


# virtual methods
.method public a()Lcom/ss/android/socialbase/downloader/impls/k;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    return-object v0
.end method

.method public a(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 4

    .line 394
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/k;->a(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 395
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 396
    return-object p1
.end method

.method public a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 5

    .line 469
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/k;->a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 470
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/d;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    .line 471
    return-object p1
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 12

    .line 462
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/impls/k;->a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 463
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 464
    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(IIII)V
    .registers 6

    .line 380
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 381
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_11

    .line 383
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IIII)V

    goto :goto_16

    .line 385
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(IIII)V

    .line 386
    :goto_16
    goto :goto_1c

    .line 387
    :cond_17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(IIII)V

    .line 389
    :goto_1c
    return-void
.end method

.method public a(IIIJ)V
    .registers 15

    .line 367
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 368
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v1

    .line 369
    if-eqz v1, :cond_15

    .line 370
    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IIIJ)V

    goto :goto_1e

    .line 372
    :cond_15
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(IIIJ)V

    .line 373
    :goto_1e
    goto :goto_28

    .line 374
    :cond_1f
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    move v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(IIIJ)V

    .line 376
    :goto_28
    return-void
.end method

.method public a(IIJ)V
    .registers 6

    .line 353
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/impls/k;->a(IIJ)V

    .line 354
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 355
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_16

    .line 357
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IIJ)V

    goto :goto_1b

    .line 359
    :cond_16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(IIJ)V

    .line 360
    :goto_1b
    goto :goto_21

    .line 361
    :cond_1c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(IIJ)V

    .line 363
    :goto_21
    return-void
.end method

.method public a(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .line 554
    if-eqz p2, :cond_1a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1a

    .line 556
    :cond_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/k;->a(ILjava/util/List;)V

    .line 557
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->c()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 558
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/r;->b(ILjava/util/List;)V

    .line 560
    :cond_19
    return-void

    .line 555
    :cond_1a
    :goto_1a
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/b;)V
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 327
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 328
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_16

    .line 330
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    goto :goto_1b

    .line 332
    :cond_16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 333
    :goto_1b
    goto :goto_21

    .line 334
    :cond_1c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 336
    :goto_21
    return-void
.end method

.method public a(ILjava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)Z"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/k;->a(ILjava/util/Map;)Z

    .line 606
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(ILjava/util/Map;)Z

    .line 607
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3

    .line 401
    if-nez p1, :cond_4

    .line 402
    const/4 p1, 0x0

    return p1

    .line 403
    :cond_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v0

    .line 404
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 405
    return v0
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public b(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 5

    .line 497
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/k;->b(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p2

    .line 498
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/ss/android/socialbase/downloader/impls/d;->b(ILjava/util/List;)V

    .line 499
    return-object p2
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .registers 2

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/k;->b()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 448
    goto :goto_a

    .line 446
    :catch_6
    move-exception v0

    .line 447
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 449
    :goto_a
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 450
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_1b

    .line 452
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/l;->f()V

    goto :goto_20

    .line 454
    :cond_1b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/r;->b()V

    .line 455
    :goto_20
    goto :goto_26

    .line 456
    :cond_21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/r;->b()V

    .line 458
    :goto_26
    return-void
.end method

.method public b(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/d;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 566
    if-nez p2, :cond_11

    .line 567
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Ljava/util/List;

    move-result-object p2

    .line 570
    :cond_11
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->b()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 571
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 572
    if-eqz v0, :cond_22

    .line 573
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(ILjava/util/List;)V

    goto :goto_27

    .line 575
    :cond_22
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/r;->b(ILjava/util/List;)V

    .line 576
    :goto_27
    goto :goto_2d

    .line 577
    :cond_28
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/r;->b(ILjava/util/List;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 581
    :goto_2d
    goto :goto_32

    .line 579
    :catch_2e
    move-exception p1

    .line 580
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 582
    :goto_32
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 547
    if-nez p1, :cond_3

    .line 548
    return-void

    .line 549
    :cond_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 550
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/b;)V
    .registers 3

    .line 340
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 341
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_11

    .line 343
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    goto :goto_16

    .line 345
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 346
    :goto_16
    goto :goto_1c

    .line 347
    :cond_17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 349
    :goto_1c
    return-void
.end method

.method public c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 5

    .line 512
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/k;->c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p2

    .line 513
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/ss/android/socialbase/downloader/impls/d;->b(ILjava/util/List;)V

    .line 514
    return-object p2
.end method

.method public c(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .registers 2

    .line 159
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    return v0
.end method

.method public d(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 5

    .line 519
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/k;->d(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p2

    .line 520
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/ss/android/socialbase/downloader/impls/d;->b(ILjava/util/List;)V

    .line 521
    return-object p2
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d(I)V
    .registers 3

    .line 312
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->d(I)V

    .line 313
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 314
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_16

    .line 316
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->o(I)V

    goto :goto_1b

    .line 318
    :cond_16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/r;->d(I)V

    .line 319
    :goto_1b
    goto :goto_21

    .line 320
    :cond_1c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/r;->d(I)V

    .line 322
    :goto_21
    return-void
.end method

.method public d()Z
    .registers 3

    .line 139
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    if-eqz v0, :cond_6

    .line 140
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_6
    monitor-enter p0

    .line 143
    :try_start_7
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    if-nez v0, :cond_23

    .line 144
    const-string v0, "DefaultDownloadCache"

    const-string v1, "ensureDownloadCacheSyncSuccess: waiting start!!!!"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_27

    .line 147
    const-wide/16 v0, 0x1388

    :try_start_14
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_18
    .catchall {:try_start_14 .. :try_end_17} :catchall_27

    .line 150
    goto :goto_1c

    .line 148
    :catch_18
    move-exception v0

    .line 149
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 151
    :goto_1c
    const-string v0, "DefaultDownloadCache"

    const-string v1, "ensureDownloadCacheSyncSuccess: waiting end!!!!"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_27

    .line 154
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    return v0

    .line 153
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public e()Lcom/ss/android/socialbase/downloader/downloader/r;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    return-object v0
.end method

.method public e(I)Z
    .registers 3

    .line 411
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 412
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_11

    .line 414
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->n(I)Z

    goto :goto_16

    .line 416
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/r;->e(I)Z

    .line 417
    :goto_16
    goto :goto_1c

    .line 418
    :cond_17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/r;->e(I)Z
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 422
    :goto_1c
    goto :goto_21

    .line 420
    :catch_1d
    move-exception v0

    .line 421
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 424
    :goto_21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->e(I)Z

    move-result p1

    return p1
.end method

.method public f()V
    .registers 5

    .line 114
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/d;->b:Lcom/ss/android/socialbase/downloader/constants/d;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/constants/d;)V

    .line 115
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/k;->a()Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/impls/k;->e()Landroid/util/SparseArray;

    move-result-object v2

    new-instance v3, Lcom/ss/android/socialbase/downloader/impls/d$3;

    invoke-direct {v3, p0}, Lcom/ss/android/socialbase/downloader/impls/d$3;-><init>(Lcom/ss/android/socialbase/downloader/impls/d;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/b/d;)V

    .line 123
    return-void
.end method

.method public f(I)Z
    .registers 3

    .line 429
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 430
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_11

    .line 432
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->p(I)Z

    goto :goto_16

    .line 434
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/r;->f(I)Z

    .line 435
    :goto_16
    goto :goto_1c

    .line 436
    :cond_17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/r;->f(I)Z

    .line 439
    :goto_1c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->f(I)Z

    move-result p1

    return p1
.end method

.method public g(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->g(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 108
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 109
    return-object p1
.end method

.method public g()V
    .registers 5

    .line 167
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "task_resume_delay"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 168
    const-wide/16 v0, 0xfa0

    goto :goto_1a

    .line 170
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_18

    .line 171
    const-wide/16 v0, 0x3e8

    goto :goto_1a

    .line 173
    :cond_18
    const-wide/16 v0, 0x1388

    .line 176
    :goto_1a
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->f:Lcom/ss/android/socialbase/downloader/h/g;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/h/g;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 177
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/d;->f:Lcom/ss/android/socialbase/downloader/h/g;

    invoke-virtual {v3, v2, v0, v1}, Lcom/ss/android/socialbase/downloader/h/g;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 178
    return-void
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 504
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 505
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 506
    return-object p1
.end method

.method public h()V
    .registers 13

    .line 182
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    if-nez v0, :cond_5

    .line 183
    return-void

    .line 185
    :cond_5
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->d:Z

    if-eqz v0, :cond_11

    .line 187
    const-string v0, "DefaultDownloadCache"

    const-string v1, "resumeUnCompleteTask: has resumed, return!!!"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void

    .line 190
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->d:Z

    .line 192
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->a()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 193
    return-void

    .line 196
    :cond_1b
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->w()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v1

    .line 198
    nop

    .line 199
    nop

    .line 200
    const/4 v2, 0x0

    if-eqz v1, :cond_38

    .line 201
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a()Ljava/util/List;

    move-result-object v3

    .line 202
    if-eqz v3, :cond_36

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_36

    .line 203
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3a

    .line 207
    :cond_36
    move-object v4, v2

    goto :goto_3a

    .line 200
    :cond_38
    move-object v3, v2

    move-object v4, v3

    .line 207
    :goto_3a
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/impls/k;->a()Landroid/util/SparseArray;

    move-result-object v5

    .line 208
    if-nez v5, :cond_43

    .line 209
    return-void

    .line 212
    :cond_43
    monitor-enter v5

    .line 213
    const/4 v6, 0x0

    move v7, v6

    :goto_46
    :try_start_46
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_ac

    .line 214
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 215
    if-nez v8, :cond_53

    .line 216
    goto :goto_a9

    .line 218
    :cond_53
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 219
    if-nez v8, :cond_5c

    .line 220
    goto :goto_a9

    .line 223
    :cond_5c
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v9

    .line 225
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatusAtDbInit()I

    move-result v10

    .line 226
    if-lt v10, v0, :cond_72

    const/16 v11, 0xb

    if-gt v10, v11, :cond_72

    .line 228
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->g()Lcom/ss/android/socialbase/downloader/d/b;

    move-result-object v10

    .line 229
    const/4 v11, -0x5

    invoke-static {v10, v8, v2, v11}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/d/b;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 232
    :cond_72
    if-eqz v3, :cond_a9

    if-nez v4, :cond_77

    .line 233
    goto :goto_a9

    .line 236
    :cond_77
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a9

    .line 237
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_88

    .line 238
    goto :goto_a9

    .line 242
    :cond_88
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v10

    invoke-static {v10}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v10

    const-string v11, "enable_notification_ui"

    invoke-virtual {v10, v11}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_a3

    .line 243
    const/4 v10, -0x2

    if-ne v9, v10, :cond_a3

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v9

    if-nez v9, :cond_a3

    .line 245
    goto :goto_a9

    .line 249
    :cond_a3
    invoke-virtual {v8, v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    .line 251
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_a9
    :goto_a9
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    .line 253
    :cond_ac
    monitor-exit v5
    :try_end_ad
    .catchall {:try_start_46 .. :try_end_ad} :catchall_bb

    .line 254
    if-eqz v1, :cond_ba

    if-eqz v4, :cond_ba

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ba

    .line 255
    invoke-interface {v1, v4, v0}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Ljava/util/List;I)V

    .line 257
    :cond_ba
    return-void

    .line 253
    :catchall_bb
    move-exception v0

    :try_start_bc
    monitor-exit v5
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v0
.end method

.method public i(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 533
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->i(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 534
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 535
    return-object p1
.end method

.method public j(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 540
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->j(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 541
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 542
    return-object p1
.end method

.method public l(I)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->l(I)Ljava/util/Map;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 597
    :cond_e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/r;->l(I)Ljava/util/Map;

    move-result-object v0

    .line 598
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v1, p1, v0}, Lcom/ss/android/socialbase/downloader/impls/k;->a(ILjava/util/Map;)Z

    .line 600
    :cond_19
    return-object v0
.end method

.method public m(I)V
    .registers 3

    .line 612
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->m(I)V

    .line 613
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/r;->m(I)V

    .line 614
    return-void
.end method

.method public n(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->n(I)Ljava/util/List;

    move-result-object v0

    .line 587
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_14

    .line 588
    :cond_e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/r;->n(I)Ljava/util/List;

    move-result-object v0

    .line 590
    :cond_14
    return-object v0
.end method
