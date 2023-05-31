.class public Lcom/ss/android/socialbase/downloader/impls/d;
.super Ljava/lang/Object;
.source "DefaultDownloadCache.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/k;


# instance fields
.field private final a:Lcom/ss/android/socialbase/downloader/impls/k;

.field private b:Lcom/ss/android/socialbase/downloader/downloader/s;

.field private volatile c:Z

.field private volatile d:Z

.field private e:Lcom/ss/android/socialbase/downloader/l/f$a;

.field private f:Lcom/ss/android/socialbase/downloader/l/f;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/d$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/impls/d$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/d;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->e:Lcom/ss/android/socialbase/downloader/l/f$a;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->f:Lcom/ss/android/socialbase/downloader/l/f;

    .line 71
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/k;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    .line 72
    invoke-static {}, Lcom/ss/android/socialbase/downloader/k/a;->b()Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    const-string v1, "fix_sigbus_downloader_db"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 73
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->a()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 74
    new-instance v0, Lcom/ss/android/socialbase/downloader/c/e;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/c/e;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    .line 90
    :goto_2d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    .line 91
    new-instance v0, Lcom/ss/android/socialbase/downloader/l/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->e:Lcom/ss/android/socialbase/downloader/l/f$a;

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/l/f;-><init>(Landroid/os/Looper;Lcom/ss/android/socialbase/downloader/l/f$a;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->f:Lcom/ss/android/socialbase/downloader/l/f;

    .line 92
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/impls/d;->f()V

    .line 93
    return-void

    .line 76
    :cond_41
    new-instance v0, Lcom/ss/android/socialbase/downloader/c/f;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/c/f;-><init>()V

    .line 77
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/d$2;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/impls/d$2;-><init>(Lcom/ss/android/socialbase/downloader/impls/d;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/c/f;->a(Lcom/ss/android/socialbase/downloader/c/f$a;)V

    .line 85
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    goto :goto_2d

    .line 88
    :cond_51
    new-instance v0, Lcom/ss/android/socialbase/downloader/c/e;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/c/e;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    goto :goto_2d
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/d;Lcom/ss/android/socialbase/downloader/downloader/s;)Lcom/ss/android/socialbase/downloader/downloader/s;
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    return-object p1
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/c;Z)V
    .registers 4

    .prologue
    .line 431
    if-nez p1, :cond_3

    .line 445
    :cond_2
    :goto_2
    return-void

    .line 433
    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->b()Z

    move-result v0

    .line 434
    if-eqz v0, :cond_1c

    .line 435
    if-eqz p2, :cond_2

    .line 436
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_16

    .line 438
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(Lcom/ss/android/socialbase/downloader/g/c;)Z

    goto :goto_2

    .line 440
    :cond_16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/s;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    goto :goto_2

    .line 443
    :cond_1c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/s;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    goto :goto_2
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/d;)V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/d;->i()V

    return-void
.end method

.method private c(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 427
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/impls/d;->a(Lcom/ss/android/socialbase/downloader/g/c;Z)V

    .line 428
    return-void
.end method

.method private i()V
    .registers 2

    .prologue
    .line 124
    monitor-enter p0

    .line 125
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 127
    monitor-exit p0

    .line 128
    return-void

    .line 127
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method


# virtual methods
.method public a(II)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/k;->a(II)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 347
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 348
    return-object v0
.end method

.method public a(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 6

    .prologue
    .line 421
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/k;->a(IJ)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 422
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/d;->a(Lcom/ss/android/socialbase/downloader/g/c;Z)V

    .line 423
    return-object v0
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 12

    .prologue
    .line 414
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/impls/k;->a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 415
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 416
    return-object v0
.end method

.method public a()Lcom/ss/android/socialbase/downloader/impls/k;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(IIII)V
    .registers 6

    .prologue
    .line 332
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 333
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_11

    .line 335
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIII)V

    .line 341
    :goto_10
    return-void

    .line 337
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/s;->a(IIII)V

    goto :goto_10

    .line 339
    :cond_17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/s;->a(IIII)V

    goto :goto_10
.end method

.method public a(IIIJ)V
    .registers 12

    .prologue
    .line 319
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 320
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_15

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 322
    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIIJ)V

    .line 328
    :goto_14
    return-void

    .line 324
    :cond_15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/s;->a(IIIJ)V

    goto :goto_14

    .line 326
    :cond_1f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/s;->a(IIIJ)V

    goto :goto_14
.end method

.method public a(IIJ)V
    .registers 6

    .prologue
    .line 305
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/impls/k;->a(IIJ)V

    .line 306
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 307
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_16

    .line 309
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIJ)V

    .line 315
    :goto_15
    return-void

    .line 311
    :cond_16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/s;->a(IIJ)V

    goto :goto_15

    .line 313
    :cond_1c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/s;->a(IIJ)V

    goto :goto_15
.end method

.method public a(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 506
    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 512
    :cond_8
    :goto_8
    return-void

    .line 508
    :cond_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/k;->a(ILjava/util/List;)V

    .line 509
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 510
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/s;->b(ILjava/util/List;)V

    goto :goto_8
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/b;)V
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    .line 279
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 280
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_16

    .line 282
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    .line 288
    :goto_15
    return-void

    .line 284
    :cond_16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/s;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    goto :goto_15

    .line 286
    :cond_1c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/s;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    goto :goto_15
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 3

    .prologue
    .line 353
    if-nez p1, :cond_4

    .line 354
    const/4 v0, 0x0

    .line 357
    :goto_3
    return v0

    .line 355
    :cond_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    .line 356
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_3
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    return-object v0
.end method

.method public b(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 6

    .prologue
    .line 449
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/k;->b(IJ)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 450
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/ss/android/socialbase/downloader/impls/d;->b(ILjava/util/List;)V

    .line 451
    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/k;->b()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_16

    .line 401
    :goto_5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 402
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_1b

    .line 404
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->f()V

    .line 410
    :goto_15
    return-void

    .line 398
    :catch_16
    move-exception v0

    .line 399
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_5

    .line 406
    :cond_1b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->b()V

    goto :goto_15

    .line 408
    :cond_21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/s;->b()V

    goto :goto_15
.end method

.method public b(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/d;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    .line 518
    if-nez p2, :cond_11

    .line 519
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Ljava/util/List;

    move-result-object p2

    .line 522
    :cond_11
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 523
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_22

    .line 525
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(ILjava/util/List;)V

    .line 534
    :goto_21
    return-void

    .line 527
    :cond_22
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/s;->b(ILjava/util/List;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_21

    .line 531
    :catch_28
    move-exception v0

    .line 532
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21

    .line 529
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/s;->b(ILjava/util/List;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_28

    goto :goto_21
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/b;)V
    .registers 3

    .prologue
    .line 292
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 293
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_11

    .line 295
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    .line 301
    :goto_10
    return-void

    .line 297
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/s;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    goto :goto_10

    .line 299
    :cond_17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/s;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    goto :goto_10
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 499
    if-nez p1, :cond_3

    .line 502
    :goto_2
    return-void

    .line 501
    :cond_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    goto :goto_2
.end method

.method public c(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 6

    .prologue
    .line 464
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/k;->c(IJ)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 465
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/ss/android/socialbase/downloader/impls/d;->b(ILjava/util/List;)V

    .line 466
    return-object v0
.end method

.method public c(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    return v0
.end method

.method public d(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 6

    .prologue
    .line 471
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/k;->d(IJ)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 472
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/ss/android/socialbase/downloader/impls/d;->b(ILjava/util/List;)V

    .line 473
    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->d(I)V

    .line 265
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 266
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_16

    .line 268
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->o(I)V

    .line 274
    :goto_15
    return-void

    .line 270
    :cond_16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/s;->d(I)V

    goto :goto_15

    .line 272
    :cond_1c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/s;->d(I)V

    goto :goto_15
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    if-eqz v0, :cond_6

    .line 138
    const/4 v0, 0x1

    .line 152
    :goto_5
    return v0

    .line 140
    :cond_6
    monitor-enter p0

    .line 141
    :try_start_7
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    if-nez v0, :cond_1e

    .line 142
    const-string v0, "DefaultDownloadCache"

    const-string v1, "ensureDownloadCacheSyncSuccess: waiting start!!!!"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_27

    .line 145
    const-wide/16 v0, 0x1388

    :try_start_14
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_22
    .catchall {:try_start_14 .. :try_end_17} :catchall_27

    .line 149
    :goto_17
    :try_start_17
    const-string v0, "DefaultDownloadCache"

    const-string v1, "ensureDownloadCacheSyncSuccess: waiting end!!!!"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_27

    .line 152
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    goto :goto_5

    .line 146
    :catch_22
    move-exception v0

    .line 147
    :try_start_23
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_17

    .line 151
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public e()Lcom/ss/android/socialbase/downloader/downloader/s;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    return-object v0
.end method

.method public e(I)Z
    .registers 3

    .prologue
    .line 363
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 364
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_17

    .line 366
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->n(I)Z
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_10} :catch_1d

    .line 376
    :goto_10
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->e(I)Z

    move-result v0

    return v0

    .line 368
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/s;->e(I)Z
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_10

    .line 372
    :catch_1d
    move-exception v0

    .line 373
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_10

    .line 370
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/s;->e(I)Z
    :try_end_27
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22 .. :try_end_27} :catch_1d

    goto :goto_10
.end method

.method public f()V
    .registers 5

    .prologue
    .line 112
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/d;->b:Lcom/ss/android/socialbase/downloader/b/d;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/b/d;)V

    .line 113
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/k;->a()Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/impls/k;->e()Landroid/util/SparseArray;

    move-result-object v2

    new-instance v3, Lcom/ss/android/socialbase/downloader/impls/d$3;

    invoke-direct {v3, p0}, Lcom/ss/android/socialbase/downloader/impls/d$3;-><init>(Lcom/ss/android/socialbase/downloader/impls/d;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/s;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/c/d;)V

    .line 121
    return-void
.end method

.method public f(I)Z
    .registers 3

    .prologue
    .line 381
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 382
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_17

    .line 384
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->p(I)Z

    .line 391
    :goto_10
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->f(I)Z

    move-result v0

    return v0

    .line 386
    :cond_17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/s;->f(I)Z

    goto :goto_10

    .line 388
    :cond_1d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/s;->f(I)Z

    goto :goto_10
.end method

.method public g(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->g(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 106
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 107
    return-object v0
.end method

.method public g()V
    .registers 5

    .prologue
    .line 165
    invoke-static {}, Lcom/ss/android/socialbase/downloader/k/a;->b()Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    const-string v1, "task_resume_delay"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 166
    const-wide/16 v0, 0xfa0

    .line 174
    :goto_e
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->f:Lcom/ss/android/socialbase/downloader/l/f;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/l/f;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 175
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/d;->f:Lcom/ss/android/socialbase/downloader/l/f;

    invoke-virtual {v3, v2, v0, v1}, Lcom/ss/android/socialbase/downloader/l/f;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 176
    return-void

    .line 168
    :cond_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_24

    .line 169
    const-wide/16 v0, 0x3e8

    goto :goto_e

    .line 171
    :cond_24
    const-wide/16 v0, 0x1388

    goto :goto_e
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 457
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 458
    return-object v0
.end method

.method public h()V
    .registers 9

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    if-nez v0, :cond_5

    .line 225
    :cond_4
    :goto_4
    return-void

    .line 183
    :cond_5
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->d:Z

    if-eqz v0, :cond_11

    .line 185
    const-string v0, "DefaultDownloadCache"

    const-string v1, "resumeUnCompleteTask: has resumed, return!!!"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 188
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->d:Z

    .line 190
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->o()Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v2

    .line 195
    if-eqz v2, :cond_4

    .line 197
    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/downloader/m;->a()Ljava/util/List;

    move-result-object v3

    .line 198
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 201
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/k;->a()Landroid/util/SparseArray;

    move-result-object v4

    .line 202
    if-eqz v4, :cond_4

    .line 205
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 207
    monitor-enter v4

    .line 208
    const/4 v0, 0x0

    move v1, v0

    :goto_3c
    :try_start_3c
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_6c

    .line 209
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 210
    if-nez v0, :cond_4c

    .line 208
    :cond_48
    :goto_48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3c

    .line 212
    :cond_4c
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 213
    if-eqz v0, :cond_48

    .line 214
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 215
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->w()I

    move-result v6

    const/4 v7, -0x2

    if-eq v6, v7, :cond_48

    .line 219
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 221
    :catchall_69
    move-exception v0

    monitor-exit v4
    :try_end_6b
    .catchall {:try_start_3c .. :try_end_6b} :catchall_69

    throw v0

    :cond_6c
    :try_start_6c
    monitor-exit v4
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_69

    .line 222
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 223
    invoke-interface {v2, v5}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(Ljava/util/List;)V

    goto :goto_4
.end method

.method public i(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->i(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 486
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 487
    return-object v0
.end method

.method public j(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 3

    .prologue
    .line 492
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->j(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 493
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 494
    return-object v0
.end method
