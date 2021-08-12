.class Lcom/ss/android/socialbase/downloader/f/g;
.super Ljava/lang/Object;
.source "MultiSegmentWriter.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/l;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/l;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private final d:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private final e:Lcom/ss/android/socialbase/downloader/g/a;

.field private final f:Lcom/ss/android/socialbase/downloader/h/f;

.field private final g:Lcom/ss/android/socialbase/downloader/f/c;

.field private h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

.field private volatile i:Z

.field private volatile j:Z

.field private volatile k:Z

.field private final l:Lcom/ss/android/socialbase/downloader/a/a;

.field private final m:Z

.field private final n:J

.field private final o:J

.field private final p:Z

.field private q:J

.field private volatile r:J

.field private volatile s:J


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/h/f;Lcom/ss/android/socialbase/downloader/f/c;)V
    .registers 11

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->b:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->i:Z

    .line 54
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    .line 55
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    .line 278
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/g;->r:J

    .line 279
    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/g;->s:J

    .line 71
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/g;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 72
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->x()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v3

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/f/g;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 73
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/f/g;->f:Lcom/ss/android/socialbase/downloader/h/f;

    .line 74
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/f/g;->g:Lcom/ss/android/socialbase/downloader/f/c;

    .line 75
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/f/g;->l:Lcom/ss/android/socialbase/downloader/a/a;

    .line 76
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/g;->e:Lcom/ss/android/socialbase/downloader/g/a;

    .line 77
    const-string p2, "sync_strategy"

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_45

    move p2, p3

    goto :goto_46

    :cond_45
    move p2, v0

    :goto_46
    iput-boolean p2, p0, Lcom/ss/android/socialbase/downloader/f/g;->m:Z

    .line 78
    if-eqz p2, :cond_6b

    .line 79
    const/16 p2, 0x1388

    const-string v1, "sync_interval_ms_fg"

    invoke-virtual {p1, v1, p2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    int-to-long v1, p2

    .line 81
    const/16 p2, 0x3e8

    const-string v3, "sync_interval_ms_bg"

    invoke-virtual {p1, v3, p2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    int-to-long v3, p2

    .line 83
    const-wide/16 v5, 0x1f4

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/g;->n:J

    .line 84
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/g;->o:J

    .line 85
    goto :goto_6f

    .line 86
    :cond_6b
    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/g;->n:J

    .line 87
    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/g;->o:J

    .line 89
    :goto_6f
    const-string p2, "monitor_rw"

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p3, :cond_78

    move v0, p3

    :cond_78
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->p:Z

    .line 90
    return-void
.end method

.method private a(JZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->s:J

    sub-long v0, p1, v0

    .line 284
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/f/g;->m:Z

    if-eqz v2, :cond_1f

    .line 285
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/f/g;->l:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/a/a;->b()Z

    move-result p3

    if-eqz p3, :cond_13

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/f/g;->n:J

    goto :goto_15

    :cond_13
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/f/g;->o:J

    :goto_15
    cmp-long p3, v0, v2

    if-lez p3, :cond_35

    .line 286
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/g;->c()V

    .line 287
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/f/g;->s:J

    goto :goto_35

    .line 290
    :cond_1f
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/g;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/f/g;->r:J

    sub-long/2addr v2, v4

    .line 291
    if-nez p3, :cond_30

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/ss/android/socialbase/downloader/f/g;->a(JJ)Z

    move-result p3

    if-eqz p3, :cond_35

    .line 292
    :cond_30
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/g;->c()V

    .line 293
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/f/g;->s:J

    .line 296
    :cond_35
    :goto_35
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/f/e;)V
    .registers 3

    .line 307
    monitor-enter p0

    .line 308
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->b:Ljava/util/List;

    check-cast p1, Lcom/ss/android/socialbase/downloader/f/l;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    monitor-exit p0

    .line 310
    return-void

    .line 309
    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/l;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/l;

    .line 375
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/l;->b()V

    .line 376
    goto :goto_4

    .line 377
    :cond_14
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/l;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)V"
        }
    .end annotation

    .line 392
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/l;

    .line 393
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/l;->e()Lcom/ss/android/socialbase/downloader/f/i;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/i;

    .line 395
    if-nez v1, :cond_35

    .line 396
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/i;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/f/i;-><init>(Lcom/ss/android/socialbase/downloader/f/i;)V

    .line 397
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 399
    :cond_35
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/i;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/f/i;->a(J)V

    .line 400
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/f/i;->c(J)V

    .line 402
    :goto_43
    goto :goto_4

    .line 403
    :cond_44
    return-void
.end method

.method private a(JJ)Z
    .registers 7

    .line 299
    const-wide/32 v0, 0x10000

    cmp-long p1, p1, v0

    if-lez p1, :cond_f

    const-wide/16 p1, 0x1f4

    cmp-long p1, p3, p1

    if-lez p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method private b(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/l;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/l;

    .line 381
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/l;->c()V

    .line 382
    goto :goto_4

    .line 383
    :cond_14
    return-void
.end method

.method private c()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    nop

    .line 316
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->p:Z

    .line 317
    if-eqz v0, :cond_a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    goto :goto_c

    :cond_a
    const-wide/16 v1, 0x0

    .line 319
    :goto_c
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/f/g;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 320
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/f/g;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 321
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    .line 322
    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/f/g;->b:Ljava/util/List;

    .line 324
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v7

    invoke-interface {v4, v7}, Lcom/ss/android/socialbase/downloader/downloader/i;->l(I)Ljava/util/Map;

    move-result-object v7

    .line 325
    if-nez v7, :cond_24

    .line 326
    new-instance v7, Ljava/util/HashMap;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 329
    :cond_24
    const/4 v8, 0x0

    .line 330
    monitor-enter p0

    .line 332
    :try_start_26
    invoke-direct {p0, v5}, Lcom/ss/android/socialbase/downloader/f/g;->a(Ljava/util/List;)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_69

    .line 338
    const/4 v9, 0x1

    :try_start_2a
    invoke-direct {p0, v5}, Lcom/ss/android/socialbase/downloader/f/g;->b(Ljava/util/List;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_30

    .line 339
    nop

    .line 342
    move v8, v9

    goto :goto_34

    .line 340
    :catchall_30
    move-exception v10

    .line 341
    :try_start_31
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 345
    :goto_34
    invoke-direct {p0, v5, v7}, Lcom/ss/android/socialbase/downloader/f/g;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 347
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_46

    .line 349
    invoke-direct {p0, v6}, Lcom/ss/android/socialbase/downloader/f/g;->c(Ljava/util/List;)V

    .line 350
    invoke-interface {v5, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 351
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 353
    :cond_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_69

    .line 355
    if-eqz v8, :cond_5c

    .line 357
    invoke-virtual {v3, v9}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateRealDownloadTime(Z)V

    .line 358
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v5

    invoke-interface {v4, v5, v7}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(ILjava/util/Map;)Z

    .line 359
    invoke-interface {v4, v3}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 360
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ss/android/socialbase/downloader/f/g;->r:J

    .line 363
    :cond_5c
    if-eqz v0, :cond_68

    .line 364
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 365
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->q:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->q:J

    .line 371
    :cond_68
    return-void

    .line 353
    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v0
.end method

.method private c(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/l;",
            ">;)V"
        }
    .end annotation

    .line 386
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/l;

    .line 387
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/l;->d()V

    .line 388
    goto :goto_4

    .line 389
    :cond_14
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    .line 407
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->i:Z

    .line 408
    return-void
.end method

.method a(Lcom/ss/android/socialbase/downloader/f/d;)V
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 100
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    if-nez v0, :cond_496

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-eqz v0, :cond_c

    goto/16 :goto_496

    .line 104
    :cond_c
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/b;->e()V

    .line 106
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 109
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/f/g;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 110
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->f:Lcom/ss/android/socialbase/downloader/h/f;

    .line 111
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->g:Lcom/ss/android/socialbase/downloader/f/c;

    .line 112
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v5

    .line 113
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 114
    iget-boolean v14, v1, Lcom/ss/android/socialbase/downloader/f/g;->p:Z

    .line 115
    nop

    .line 116
    nop

    .line 118
    nop

    .line 120
    nop

    .line 125
    const-wide/16 v9, 0x0

    const/16 v22, 0x1

    const/4 v15, 0x0

    :try_start_2b
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateRealStartDownloadTime()V
    :try_end_2e
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_2b .. :try_end_2e} :catch_403
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_2b .. :try_end_2e} :catch_341
    .catchall {:try_start_2b .. :try_end_2e} :catchall_200

    .line 127
    move-wide v11, v9

    move-wide/from16 v16, v11

    move-wide/from16 v18, v16

    move v13, v15

    .line 133
    :goto_34
    if-eqz v14, :cond_57

    :try_start_36
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11
    :try_end_3a
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_36 .. :try_end_3a} :catch_4f
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_36 .. :try_end_3a} :catch_45
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3b

    goto :goto_57

    .line 206
    :catchall_3b
    move-exception v0

    move-wide/from16 v23, v9

    :goto_3e
    move/from16 v27, v15

    move-wide/from16 v17, v16

    :goto_42
    move v15, v13

    goto/16 :goto_207

    .line 194
    :catch_45
    move-exception v0

    move-wide/from16 v23, v9

    :goto_48
    move/from16 v27, v15

    move-wide/from16 v17, v16

    :goto_4c
    move v15, v13

    goto/16 :goto_348

    .line 191
    :catch_4f
    move-exception v0

    move/from16 v27, v15

    move-wide/from16 v25, v16

    :goto_54
    move v15, v13

    goto/16 :goto_408

    .line 134
    :cond_57
    :goto_57
    :try_start_57
    invoke-interface/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/f/d;->a()Lcom/ss/android/socialbase/downloader/f/a;

    move-result-object v2
    :try_end_5b
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_57 .. :try_end_5b} :catch_1f8
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_57 .. :try_end_5b} :catch_1ee
    .catchall {:try_start_57 .. :try_end_5b} :catchall_1e5

    .line 135
    if-eqz v14, :cond_65

    :try_start_5d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v23
    :try_end_61
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_5d .. :try_end_61} :catch_4f
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_5d .. :try_end_61} :catch_45
    .catchall {:try_start_5d .. :try_end_61} :catchall_3b

    sub-long v23, v23, v11

    add-long v9, v9, v23

    :cond_65
    move-wide/from16 v23, v9

    .line 137
    :try_start_67
    iget v9, v2, Lcom/ss/android/socialbase/downloader/f/a;->c:I
    :try_end_69
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_67 .. :try_end_69} :catch_1db
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_67 .. :try_end_69} :catch_1d7
    .catchall {:try_start_67 .. :try_end_69} :catchall_1d3

    .line 138
    const/4 v10, -0x1

    if-ne v9, v10, :cond_84

    .line 140
    :try_start_6c
    iget-object v9, v2, Lcom/ss/android/socialbase/downloader/f/a;->b:Lcom/ss/android/socialbase/downloader/f/e;

    invoke-direct {v1, v9}, Lcom/ss/android/socialbase/downloader/f/g;->a(Lcom/ss/android/socialbase/downloader/f/e;)V

    .line 141
    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/downloader/f/c;->a(Lcom/ss/android/socialbase/downloader/f/a;)V

    .line 142
    move-wide/from16 v9, v23

    const/4 v2, 0x0

    goto :goto_34

    .line 206
    :catchall_78
    move-exception v0

    goto :goto_3e

    .line 194
    :catch_7a
    move-exception v0

    goto :goto_48

    .line 191
    :catch_7c
    move-exception v0

    move/from16 v27, v15

    move-wide/from16 v25, v16

    :goto_81
    move-wide/from16 v9, v23

    goto :goto_54

    .line 145
    :cond_84
    if-eqz v14, :cond_8b

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10
    :try_end_8a
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_6c .. :try_end_8a} :catch_7c
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_6c .. :try_end_8a} :catch_7a
    .catchall {:try_start_6c .. :try_end_8a} :catchall_78

    move-wide v11, v10

    .line 146
    :cond_8b
    :try_start_8b
    iget-object v10, v2, Lcom/ss/android/socialbase/downloader/f/a;->b:Lcom/ss/android/socialbase/downloader/f/e;

    invoke-interface {v10, v2}, Lcom/ss/android/socialbase/downloader/f/e;->b(Lcom/ss/android/socialbase/downloader/f/a;)V
    :try_end_90
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_8b .. :try_end_90} :catch_1db
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_8b .. :try_end_90} :catch_1d7
    .catchall {:try_start_8b .. :try_end_90} :catchall_1d3

    .line 147
    if-eqz v14, :cond_9a

    :try_start_92
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v25
    :try_end_96
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_92 .. :try_end_96} :catch_7c
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_92 .. :try_end_96} :catch_7a
    .catchall {:try_start_92 .. :try_end_96} :catchall_78

    sub-long v25, v25, v11

    add-long v16, v16, v25

    :cond_9a
    move-wide/from16 v25, v16

    .line 149
    :try_start_9c
    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/downloader/f/c;->a(Lcom/ss/android/socialbase/downloader/f/a;)V

    .line 151
    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/f/g;->i:Z

    if-eqz v2, :cond_148

    .line 152
    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z
    :try_end_a5
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_9c .. :try_end_a5} :catch_1ce
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_9c .. :try_end_a5} :catch_1c6
    .catchall {:try_start_9c .. :try_end_a5} :catchall_1bf

    if-nez v2, :cond_c2

    :try_start_a7
    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-eqz v2, :cond_ac

    goto :goto_c2

    .line 155
    :cond_ac
    iput-boolean v15, v1, Lcom/ss/android/socialbase/downloader/f/g;->i:Z
    :try_end_ae
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_a7 .. :try_end_ae} :catch_be
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_a7 .. :try_end_ae} :catch_b8
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_b2

    move/from16 v27, v15

    goto/16 :goto_14a

    .line 206
    :catchall_b2
    move-exception v0

    move/from16 v27, v15

    move-wide/from16 v17, v25

    goto :goto_42

    .line 194
    :catch_b8
    move-exception v0

    move/from16 v27, v15

    move-wide/from16 v17, v25

    goto :goto_4c

    .line 191
    :catch_be
    move-exception v0

    move/from16 v27, v15

    goto :goto_81

    .line 221
    :cond_c2
    :goto_c2
    if-lez v13, :cond_ca

    .line 223
    int-to-long v9, v13

    :try_start_c5
    invoke-interface {v3, v9, v10}, Lcom/ss/android/socialbase/downloader/h/f;->b(J)Z
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_c9

    .line 226
    goto :goto_ca

    .line 224
    :catchall_c9
    move-exception v0

    .line 229
    :cond_ca
    :goto_ca
    nop

    .line 230
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v0, :cond_ef

    .line 233
    :try_start_cf
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/f/g;->c()V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d3

    .line 237
    goto :goto_ef

    .line 234
    :catchall_d3
    move-exception v0

    move-object v2, v0

    .line 235
    nop

    .line 236
    const-string v0, "MultiSegmentWriter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loopAndWrite: finally sync, e = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f0

    .line 239
    :cond_ef
    :goto_ef
    const/4 v2, 0x0

    :goto_f0
    monitor-enter p0

    .line 240
    :try_start_f1
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/f/g;->c(Ljava/util/List;)V

    .line 241
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    monitor-exit p0
    :try_end_fc
    .catchall {:try_start_f1 .. :try_end_fc} :catchall_145

    .line 244
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    sub-long v10, v9, v5

    .line 245
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    .line 257
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->e:Lcom/ss/android/socialbase/downloader/g/a;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    iget-boolean v8, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move v0, v7

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/f/g;->q:J

    move-wide/from16 v19, v6

    const/16 v21, 0x0

    move/from16 v27, v15

    move-wide/from16 v15, v23

    move-wide/from16 v17, v25

    move v7, v0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v21}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    .line 262
    if-eqz v2, :cond_144

    .line 263
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    if-nez v0, :cond_138

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v0, :cond_138

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v0, :cond_136

    goto :goto_138

    :cond_136
    move/from16 v22, v27

    .line 266
    :cond_138
    :goto_138
    if-nez v22, :cond_144

    .line 268
    :try_start_13a
    const-string v0, "loopAndWrite_finally"

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_13f
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_13a .. :try_end_13f} :catch_140

    .line 272
    goto :goto_144

    .line 269
    :catch_140
    move-exception v0

    .line 270
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 271
    throw v0

    .line 153
    :cond_144
    :goto_144
    return-void

    .line 242
    :catchall_145
    move-exception v0

    :try_start_146
    monitor-exit p0
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_145

    throw v0

    .line 151
    :cond_148
    move/from16 v27, v15

    .line 158
    :goto_14a
    add-int/2addr v13, v9

    .line 159
    const/high16 v2, 0x10000

    if-lt v13, v2, :cond_1b2

    .line 160
    :try_start_14f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 161
    sub-long v15, v9, v18

    const-wide/16 v28, 0x64

    cmp-long v2, v15, v28

    if-lez v2, :cond_1a9

    .line 163
    move-wide/from16 v28, v11

    int-to-long v11, v13

    invoke-interface {v3, v11, v12}, Lcom/ss/android/socialbase/downloader/h/f;->b(J)Z

    move-result v2
    :try_end_162
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_14f .. :try_end_162} :catch_1b0
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_14f .. :try_end_162} :catch_1ae
    .catchall {:try_start_14f .. :try_end_162} :catchall_1ac

    .line 164
    nop

    .line 165
    nop

    .line 168
    :try_start_164
    invoke-direct {v1, v9, v10, v2}, Lcom/ss/android/socialbase/downloader/f/g;->a(JZ)V

    .line 172
    sget-boolean v2, Lcom/ss/android/socialbase/downloader/network/b;->a:Z

    if-nez v2, :cond_18a

    .line 175
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result v2

    if-nez v2, :cond_184

    .line 180
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloadFromReserveWifi()Z

    move-result v2

    if-eqz v2, :cond_18a

    .line 181
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v2

    if-nez v2, :cond_17e

    goto :goto_18a

    .line 182
    :cond_17e
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/e;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/exception/e;-><init>()V

    throw v0

    .line 176
    :cond_184
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/c;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/exception/c;-><init>()V

    throw v0
    :try_end_18a
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_164 .. :try_end_18a} :catch_1a2
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_164 .. :try_end_18a} :catch_19b
    .catchall {:try_start_164 .. :try_end_18a} :catchall_194

    .line 133
    :cond_18a
    :goto_18a
    move-wide/from16 v18, v9

    move-wide/from16 v9, v23

    move-wide/from16 v16, v25

    move/from16 v13, v27

    move v15, v13

    goto :goto_1ba

    .line 206
    :catchall_194
    move-exception v0

    move-wide/from16 v17, v25

    move/from16 v15, v27

    goto/16 :goto_207

    .line 194
    :catch_19b
    move-exception v0

    move-wide/from16 v17, v25

    move/from16 v15, v27

    goto/16 :goto_348

    .line 191
    :catch_1a2
    move-exception v0

    move-wide/from16 v9, v23

    move/from16 v15, v27

    goto/16 :goto_408

    .line 161
    :cond_1a9
    move-wide/from16 v28, v11

    goto :goto_1b4

    .line 206
    :catchall_1ac
    move-exception v0

    goto :goto_1c2

    .line 194
    :catch_1ae
    move-exception v0

    goto :goto_1c9

    .line 191
    :catch_1b0
    move-exception v0

    goto :goto_1d1

    .line 159
    :cond_1b2
    move-wide/from16 v28, v11

    .line 133
    :goto_1b4
    move-wide/from16 v9, v23

    move-wide/from16 v16, v25

    move/from16 v15, v27

    :goto_1ba
    move-wide/from16 v11, v28

    const/4 v2, 0x0

    goto/16 :goto_34

    .line 206
    :catchall_1bf
    move-exception v0

    move/from16 v27, v15

    :goto_1c2
    move v15, v13

    move-wide/from16 v17, v25

    goto :goto_207

    .line 194
    :catch_1c6
    move-exception v0

    move/from16 v27, v15

    :goto_1c9
    move v15, v13

    move-wide/from16 v17, v25

    goto/16 :goto_348

    .line 191
    :catch_1ce
    move-exception v0

    move/from16 v27, v15

    :goto_1d1
    move v15, v13

    goto :goto_1e1

    .line 206
    :catchall_1d3
    move-exception v0

    move/from16 v27, v15

    goto :goto_1ea

    .line 194
    :catch_1d7
    move-exception v0

    move/from16 v27, v15

    goto :goto_1f3

    .line 191
    :catch_1db
    move-exception v0

    move/from16 v27, v15

    move v15, v13

    move-wide/from16 v25, v16

    :goto_1e1
    move-wide/from16 v9, v23

    goto/16 :goto_408

    .line 206
    :catchall_1e5
    move-exception v0

    move/from16 v27, v15

    move-wide/from16 v23, v9

    :goto_1ea
    move v15, v13

    move-wide/from16 v17, v16

    goto :goto_207

    .line 194
    :catch_1ee
    move-exception v0

    move/from16 v27, v15

    move-wide/from16 v23, v9

    :goto_1f3
    move v15, v13

    move-wide/from16 v17, v16

    goto/16 :goto_348

    .line 191
    :catch_1f8
    move-exception v0

    move/from16 v27, v15

    move v15, v13

    move-wide/from16 v25, v16

    goto/16 :goto_408

    .line 206
    :catchall_200
    move-exception v0

    move/from16 v27, v15

    move-wide/from16 v17, v9

    move-wide/from16 v23, v17

    .line 207
    :goto_207
    :try_start_207
    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    if-nez v2, :cond_2bf

    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-eqz v2, :cond_211

    goto/16 :goto_2bf

    .line 210
    :cond_211
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v2

    if-eqz v2, :cond_21a

    .line 211
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 213
    :cond_21a
    const-string v2, "MultiSegmentWriter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loopAndWrite:  e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_232
    .catchall {:try_start_207 .. :try_end_232} :catchall_400

    .line 215
    :try_start_232
    const-string v2, "loopAndWrite"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_237
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_232 .. :try_end_237} :catch_2bb
    .catchall {:try_start_232 .. :try_end_237} :catchall_400

    .line 219
    nop

    .line 221
    if-lez v15, :cond_240

    .line 223
    int-to-long v9, v15

    :try_start_23b
    invoke-interface {v3, v9, v10}, Lcom/ss/android/socialbase/downloader/h/f;->b(J)Z
    :try_end_23e
    .catchall {:try_start_23b .. :try_end_23e} :catchall_23f

    .line 226
    goto :goto_240

    .line 224
    :catchall_23f
    move-exception v0

    .line 229
    :cond_240
    :goto_240
    nop

    .line 230
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v0, :cond_265

    .line 233
    :try_start_245
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/f/g;->c()V
    :try_end_248
    .catchall {:try_start_245 .. :try_end_248} :catchall_249

    .line 237
    goto :goto_265

    .line 234
    :catchall_249
    move-exception v0

    move-object v2, v0

    .line 235
    nop

    .line 236
    const-string v0, "MultiSegmentWriter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loopAndWrite: finally sync, e = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_266

    .line 239
    :cond_265
    :goto_265
    const/4 v2, 0x0

    :goto_266
    monitor-enter p0

    .line 240
    :try_start_267
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/f/g;->c(Ljava/util/List;)V

    .line 241
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    monitor-exit p0
    :try_end_272
    .catchall {:try_start_267 .. :try_end_272} :catchall_2b8

    .line 244
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    sub-long v10, v9, v5

    .line 245
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    .line 257
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->e:Lcom/ss/android/socialbase/downloader/g/a;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    iget-boolean v8, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move v0, v7

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/f/g;->q:J

    move-wide/from16 v19, v6

    const/16 v21, 0x0

    move-wide/from16 v15, v23

    move v7, v0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v21}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    .line 262
    if-eqz v2, :cond_2b6

    .line 263
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    if-nez v0, :cond_2aa

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v0, :cond_2aa

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v0, :cond_2a8

    goto :goto_2aa

    :cond_2a8
    move/from16 v22, v27

    .line 266
    :cond_2aa
    :goto_2aa
    if-nez v22, :cond_2b6

    .line 268
    :try_start_2ac
    const-string v0, "loopAndWrite_finally"

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2b1
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_2ac .. :try_end_2b1} :catch_2b2

    .line 272
    goto :goto_2b6

    .line 269
    :catch_2b2
    move-exception v0

    .line 270
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 271
    throw v0

    .line 275
    :cond_2b6
    :goto_2b6
    nop

    .line 276
    return-void

    .line 242
    :catchall_2b8
    move-exception v0

    :try_start_2b9
    monitor-exit p0
    :try_end_2ba
    .catchall {:try_start_2b9 .. :try_end_2ba} :catchall_2b8

    throw v0

    .line 216
    :catch_2bb
    move-exception v0

    .line 217
    :try_start_2bc
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 218
    throw v0
    :try_end_2bf
    .catchall {:try_start_2bc .. :try_end_2bf} :catchall_400

    .line 221
    :cond_2bf
    :goto_2bf
    if-lez v15, :cond_2c7

    .line 223
    int-to-long v9, v15

    :try_start_2c2
    invoke-interface {v3, v9, v10}, Lcom/ss/android/socialbase/downloader/h/f;->b(J)Z
    :try_end_2c5
    .catchall {:try_start_2c2 .. :try_end_2c5} :catchall_2c6

    .line 226
    goto :goto_2c7

    .line 224
    :catchall_2c6
    move-exception v0

    .line 229
    :cond_2c7
    :goto_2c7
    nop

    .line 230
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v0, :cond_2ec

    .line 233
    :try_start_2cc
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/f/g;->c()V
    :try_end_2cf
    .catchall {:try_start_2cc .. :try_end_2cf} :catchall_2d0

    .line 237
    goto :goto_2ec

    .line 234
    :catchall_2d0
    move-exception v0

    move-object v2, v0

    .line 235
    nop

    .line 236
    const-string v0, "MultiSegmentWriter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loopAndWrite: finally sync, e = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2ed

    .line 239
    :cond_2ec
    :goto_2ec
    const/4 v2, 0x0

    :goto_2ed
    monitor-enter p0

    .line 240
    :try_start_2ee
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/f/g;->c(Ljava/util/List;)V

    .line 241
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    monitor-exit p0
    :try_end_2f9
    .catchall {:try_start_2ee .. :try_end_2f9} :catchall_33e

    .line 244
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    sub-long v10, v9, v5

    .line 245
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    .line 257
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->e:Lcom/ss/android/socialbase/downloader/g/a;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    iget-boolean v8, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move v0, v7

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/f/g;->q:J

    move-wide/from16 v19, v6

    const/16 v21, 0x0

    move-wide/from16 v15, v23

    move v7, v0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v21}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    .line 262
    if-eqz v2, :cond_33d

    .line 263
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    if-nez v0, :cond_331

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v0, :cond_331

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v0, :cond_32f

    goto :goto_331

    :cond_32f
    move/from16 v22, v27

    .line 266
    :cond_331
    :goto_331
    if-nez v22, :cond_33d

    .line 268
    :try_start_333
    const-string v0, "loopAndWrite_finally"

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_338
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_333 .. :try_end_338} :catch_339

    .line 272
    goto :goto_33d

    .line 269
    :catch_339
    move-exception v0

    .line 270
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 271
    throw v0

    .line 208
    :cond_33d
    :goto_33d
    return-void

    .line 242
    :catchall_33e
    move-exception v0

    :try_start_33f
    monitor-exit p0
    :try_end_340
    .catchall {:try_start_33f .. :try_end_340} :catchall_33e

    throw v0

    .line 194
    :catch_341
    move-exception v0

    move/from16 v27, v15

    move-wide/from16 v17, v9

    move-wide/from16 v23, v17

    .line 195
    :goto_348
    :try_start_348
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/f/g;->e:Lcom/ss/android/socialbase/downloader/g/a;

    const-string v9, "ignore_base_ex_on_stop_status"

    invoke-virtual {v2, v9}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3dc

    .line 196
    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    if-nez v2, :cond_35a

    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z
    :try_end_358
    .catchall {:try_start_348 .. :try_end_358} :catchall_400

    if-eqz v2, :cond_3dc

    .line 221
    :cond_35a
    if-lez v15, :cond_362

    .line 223
    int-to-long v9, v15

    :try_start_35d
    invoke-interface {v3, v9, v10}, Lcom/ss/android/socialbase/downloader/h/f;->b(J)Z
    :try_end_360
    .catchall {:try_start_35d .. :try_end_360} :catchall_361

    .line 226
    goto :goto_362

    .line 224
    :catchall_361
    move-exception v0

    .line 229
    :cond_362
    :goto_362
    nop

    .line 230
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v0, :cond_387

    .line 233
    :try_start_367
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/f/g;->c()V
    :try_end_36a
    .catchall {:try_start_367 .. :try_end_36a} :catchall_36b

    .line 237
    goto :goto_387

    .line 234
    :catchall_36b
    move-exception v0

    move-object v2, v0

    .line 235
    nop

    .line 236
    const-string v0, "MultiSegmentWriter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loopAndWrite: finally sync, e = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_388

    .line 239
    :cond_387
    :goto_387
    const/4 v2, 0x0

    :goto_388
    monitor-enter p0

    .line 240
    :try_start_389
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/f/g;->c(Ljava/util/List;)V

    .line 241
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    monitor-exit p0
    :try_end_394
    .catchall {:try_start_389 .. :try_end_394} :catchall_3d9

    .line 244
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    sub-long v10, v9, v5

    .line 245
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    .line 257
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->e:Lcom/ss/android/socialbase/downloader/g/a;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    iget-boolean v8, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move v0, v7

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/f/g;->q:J

    move-wide/from16 v19, v6

    const/16 v21, 0x0

    move-wide/from16 v15, v23

    move v7, v0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v21}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    .line 262
    if-eqz v2, :cond_3d8

    .line 263
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    if-nez v0, :cond_3cc

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v0, :cond_3cc

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v0, :cond_3ca

    goto :goto_3cc

    :cond_3ca
    move/from16 v22, v27

    .line 266
    :cond_3cc
    :goto_3cc
    if-nez v22, :cond_3d8

    .line 268
    :try_start_3ce
    const-string v0, "loopAndWrite_finally"

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3d3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_3ce .. :try_end_3d3} :catch_3d4

    .line 272
    goto :goto_3d8

    .line 269
    :catch_3d4
    move-exception v0

    .line 270
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 271
    throw v0

    .line 197
    :cond_3d8
    :goto_3d8
    return-void

    .line 242
    :catchall_3d9
    move-exception v0

    :try_start_3da
    monitor-exit p0
    :try_end_3db
    .catchall {:try_start_3da .. :try_end_3db} :catchall_3d9

    throw v0

    .line 200
    :cond_3dc
    :try_start_3dc
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v2

    if-eqz v2, :cond_3e5

    .line 201
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->printStackTrace()V

    .line 203
    :cond_3e5
    const-string v2, "MultiSegmentWriter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loopAndWrite:  BaseException e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 205
    throw v0
    :try_end_400
    .catchall {:try_start_3dc .. :try_end_400} :catchall_400

    .line 221
    :catchall_400
    move-exception v0

    move-object v2, v0

    goto :goto_411

    .line 191
    :catch_403
    move-exception v0

    move/from16 v27, v15

    move-wide/from16 v25, v9

    .line 192
    :goto_408
    :try_start_408
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 193
    throw v0
    :try_end_40b
    .catchall {:try_start_408 .. :try_end_40b} :catchall_40b

    .line 221
    :catchall_40b
    move-exception v0

    move-object v2, v0

    move-wide/from16 v23, v9

    move-wide/from16 v17, v25

    :goto_411
    if-lez v15, :cond_419

    .line 223
    int-to-long v9, v15

    :try_start_414
    invoke-interface {v3, v9, v10}, Lcom/ss/android/socialbase/downloader/h/f;->b(J)Z
    :try_end_417
    .catchall {:try_start_414 .. :try_end_417} :catchall_418

    .line 226
    goto :goto_419

    .line 224
    :catchall_418
    move-exception v0

    .line 229
    :cond_419
    :goto_419
    nop

    .line 230
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v0, :cond_43f

    .line 233
    :try_start_41e
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/f/g;->c()V
    :try_end_421
    .catchall {:try_start_41e .. :try_end_421} :catchall_422

    .line 237
    goto :goto_43f

    .line 234
    :catchall_422
    move-exception v0

    move-object v3, v0

    .line 235
    nop

    .line 236
    const-string v0, "MultiSegmentWriter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loopAndWrite: finally sync, e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_440

    .line 239
    :cond_43f
    :goto_43f
    const/4 v0, 0x0

    :goto_440
    monitor-enter p0

    .line 240
    :try_start_441
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-direct {v1, v3}, Lcom/ss/android/socialbase/downloader/f/g;->c(Ljava/util/List;)V

    .line 241
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 242
    monitor-exit p0
    :try_end_44c
    .catchall {:try_start_441 .. :try_end_44c} :catchall_493

    .line 244
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    sub-long v10, v9, v5

    .line 245
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    .line 257
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->e:Lcom/ss/android/socialbase/downloader/g/a;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    iget-boolean v8, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move/from16 v25, v7

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/f/g;->q:J

    move-wide/from16 v19, v6

    const/16 v21, 0x0

    move-wide/from16 v15, v23

    move/from16 v7, v25

    const/4 v6, 0x0

    invoke-static/range {v3 .. v21}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    .line 262
    if-eqz v0, :cond_492

    .line 263
    iget-boolean v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    if-nez v3, :cond_486

    iget-boolean v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v3, :cond_486

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v3, :cond_484

    goto :goto_486

    :cond_484
    move/from16 v22, v27

    .line 266
    :cond_486
    :goto_486
    if-nez v22, :cond_492

    .line 268
    :try_start_488
    const-string v3, "loopAndWrite_finally"

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_48d
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_488 .. :try_end_48d} :catch_48e

    .line 272
    goto :goto_492

    .line 269
    :catch_48e
    move-exception v0

    .line 270
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 271
    throw v0

    .line 275
    :cond_492
    :goto_492
    throw v2

    .line 242
    :catchall_493
    move-exception v0

    :try_start_494
    monitor-exit p0
    :try_end_495
    .catchall {:try_start_494 .. :try_end_495} :catchall_493

    throw v0

    .line 101
    :cond_496
    :goto_496
    return-void
.end method

.method a(Lcom/ss/android/socialbase/downloader/f/l;)V
    .registers 3

    .line 93
    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    monitor-exit p0

    .line 96
    return-void

    .line 95
    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public b()V
    .registers 2

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    .line 412
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->i:Z

    .line 413
    return-void
.end method
