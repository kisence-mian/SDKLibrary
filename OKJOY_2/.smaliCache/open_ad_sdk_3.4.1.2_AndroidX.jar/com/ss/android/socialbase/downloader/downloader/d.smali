.class public Lcom/ss/android/socialbase/downloader/downloader/d;
.super Ljava/lang/Object;
.source "DownloadResponseHandler.java"


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:J

.field private volatile E:J

.field private volatile F:J

.field a:Z

.field private final c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/ss/android/socialbase/downloader/model/b;

.field private final f:Lcom/ss/android/socialbase/downloader/network/i;

.field private g:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private h:Lcom/ss/android/socialbase/downloader/impls/k;

.field private i:Lcom/ss/android/socialbase/downloader/downloader/r;

.field private j:Lcom/ss/android/socialbase/downloader/model/e;

.field private k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

.field private volatile l:Z

.field private volatile m:Z

.field private final n:Lcom/ss/android/socialbase/downloader/h/f;

.field private o:J

.field private p:J

.field private volatile q:J

.field private volatile r:J

.field private final s:Z

.field private final t:Lcom/ss/android/socialbase/downloader/g/a;

.field private final u:Lcom/ss/android/socialbase/downloader/a/a;

.field private final v:Z

.field private final w:J

.field private final x:J

.field private final y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-string v0, "ResponseHandler"

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;Lcom/ss/android/socialbase/downloader/model/b;Lcom/ss/android/socialbase/downloader/h/f;)V
    .registers 11

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->a:Z

    .line 438
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->E:J

    .line 439
    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->F:J

    .line 101
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 102
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->d:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->x()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 104
    instance-of v3, p2, Lcom/ss/android/socialbase/downloader/impls/d;

    if-eqz v3, :cond_28

    .line 105
    check-cast p2, Lcom/ss/android/socialbase/downloader/impls/d;

    .line 106
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/impls/d;->a()Lcom/ss/android/socialbase/downloader/impls/k;

    move-result-object v3

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    .line 107
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/impls/d;->e()Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->i:Lcom/ss/android/socialbase/downloader/downloader/r;

    .line 110
    :cond_28
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    .line 111
    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/model/b;

    .line 112
    iput-object p5, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->n:Lcom/ss/android/socialbase/downloader/h/f;

    .line 113
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    .line 114
    iput-wide p2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->p:J

    .line 115
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/b;->d()Z

    move-result p2

    if-eqz p2, :cond_43

    .line 116
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/b;->q()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->r:J

    goto :goto_49

    .line 118
    :cond_43
    invoke-virtual {p4, v0}, Lcom/ss/android/socialbase/downloader/model/b;->c(Z)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->r:J

    .line 119
    :goto_49
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/b;->p()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->q:J

    .line 120
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->u:Lcom/ss/android/socialbase/downloader/a/a;

    .line 121
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->t:Lcom/ss/android/socialbase/downloader/g/a;

    .line 122
    const-string p2, "sync_strategy"

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_6a

    move p2, p3

    goto :goto_6b

    :cond_6a
    move p2, v0

    :goto_6b
    iput-boolean p2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->v:Z

    .line 123
    if-eqz p2, :cond_90

    .line 124
    const/16 p2, 0x1388

    const-string p4, "sync_interval_ms_fg"

    invoke-virtual {p1, p4, p2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    int-to-long p4, p2

    .line 126
    const/16 p2, 0x3e8

    const-string v1, "sync_interval_ms_bg"

    invoke-virtual {p1, v1, p2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    int-to-long v1, p2

    .line 128
    const-wide/16 v3, 0x1f4

    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    iput-wide p4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->w:J

    .line 129
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    iput-wide p4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->x:J

    .line 130
    goto :goto_94

    .line 131
    :cond_90
    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->w:J

    .line 132
    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->x:J

    .line 134
    :goto_94
    const-string p2, "monitor_rw"

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p3, :cond_9d

    move v0, p3

    :cond_9d
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->y:Z

    .line 135
    const/high16 p1, 0x10000

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->s:Z

    .line 136
    return-void
.end method

.method private a(Ljava/io/InputStream;)Lcom/ss/android/socialbase/downloader/e/b;
    .registers 10

    .line 415
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->G()I

    move-result v0

    .line 416
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->t:Lcom/ss/android/socialbase/downloader/g/a;

    const-string v2, "rw_concurrent"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3a

    .line 418
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v1

    if-ne v1, v2, :cond_3a

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 419
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    const-wide/32 v6, 0x1400000

    cmp-long v1, v4, v6

    if-lez v1, :cond_3a

    .line 420
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->t:Lcom/ss/android/socialbase/downloader/g/a;

    const/4 v4, 0x4

    const-string v5, "rw_concurrent_max_buffer_count"

    invoke-virtual {v1, v5, v4}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    .line 424
    :try_start_2e
    new-instance v4, Lcom/ss/android/socialbase/downloader/e/a;

    invoke-direct {v4, p1, v0, v1}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(Ljava/io/InputStream;II)V

    .line 425
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->z:Z
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_36

    .line 426
    return-object v4

    .line 427
    :catchall_36
    move-exception v1

    .line 428
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 433
    :cond_3a
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/c;

    invoke-direct {v1, p1, v0}, Lcom/ss/android/socialbase/downloader/e/c;-><init>(Ljava/io/InputStream;I)V

    .line 434
    iput-boolean v3, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->z:Z

    .line 435
    return-object v1
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/downloader/d;)Lcom/ss/android/socialbase/downloader/network/i;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    return-object p0
.end method

.method private a(Lcom/ss/android/socialbase/downloader/downloader/i;)V
    .registers 18

    .line 508
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    if-nez v7, :cond_7

    .line 509
    return-void

    .line 510
    :cond_7
    const/4 v1, 0x0

    .line 511
    instance-of v8, v7, Lcom/ss/android/socialbase/downloader/b/e;

    if-eqz v8, :cond_19

    .line 512
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->b()Z

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v1

    .line 513
    if-nez v1, :cond_17

    .line 514
    return-void

    .line 513
    :cond_17
    move-object v15, v1

    goto :goto_1a

    .line 511
    :cond_19
    move-object v15, v1

    .line 518
    :goto_1a
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/b;->d()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 519
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/b;->e()Lcom/ss/android/socialbase/downloader/model/b;

    move-result-object v1

    move-object v5, v1

    goto :goto_2d

    .line 521
    :cond_2a
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/model/b;

    move-object v5, v1

    .line 524
    :goto_2d
    if-eqz v5, :cond_b6

    .line 526
    iget-wide v1, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    invoke-virtual {v5, v1, v2}, Lcom/ss/android/socialbase/downloader/model/b;->b(J)V

    .line 527
    if-eqz v8, :cond_4c

    if-eqz v15, :cond_4c

    .line 528
    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v10

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v11

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v12

    iget-wide v13, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    move-object v9, v15

    invoke-interface/range {v9 .. v14}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IIIJ)V

    move-object v11, v5

    goto :goto_61

    .line 530
    :cond_4c
    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v2

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v3

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v4

    iget-wide v9, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    move-object/from16 v1, p1

    move-object v11, v5

    move-wide v5, v9

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IIIJ)V

    .line 532
    :goto_61
    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->h()Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 533
    const/4 v1, 0x0

    .line 534
    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->i()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 535
    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->j()J

    move-result-wide v2

    .line 536
    iget-wide v4, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_94

    .line 537
    if-eqz v8, :cond_88

    if-eqz v15, :cond_88

    .line 538
    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v1

    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v4

    invoke-interface {v15, v1, v4, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IIJ)V

    goto :goto_93

    .line 540
    :cond_88
    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v1

    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v4

    invoke-interface {v7, v1, v4, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IIJ)V

    .line 541
    :goto_93
    const/4 v1, 0x1

    .line 544
    :cond_94
    if-nez v1, :cond_b5

    .line 545
    if-eqz v8, :cond_a8

    if-eqz v15, :cond_a8

    .line 546
    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v1

    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v2

    iget-wide v3, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    invoke-interface {v15, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IIJ)V

    goto :goto_b5

    .line 548
    :cond_a8
    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v1

    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v2

    iget-wide v3, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    invoke-interface {v7, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IIJ)V

    .line 551
    :cond_b5
    :goto_b5
    goto :goto_e5

    .line 553
    :cond_b6
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/b;->d()Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 554
    if-eqz v8, :cond_d4

    if-eqz v15, :cond_d4

    .line 555
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v1

    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v2

    iget-wide v3, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    invoke-interface {v15, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IIJ)V

    goto :goto_e5

    .line 557
    :cond_d4
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v1

    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v2

    iget-wide v3, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    invoke-interface {v7, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(IIJ)V

    .line 561
    :cond_e5
    :goto_e5
    return-void
.end method

.method private a(Z)V
    .registers 10

    .line 442
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 443
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->F:J

    sub-long v2, v0, v2

    .line 445
    iget-boolean v4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->v:Z

    if-eqz v4, :cond_23

    .line 446
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->u:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/a/a;->b()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->w:J

    goto :goto_19

    :cond_17
    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->x:J

    :goto_19
    cmp-long p1, v2, v4

    if-lez p1, :cond_35

    .line 447
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V

    .line 448
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->F:J

    goto :goto_35

    .line 451
    :cond_23
    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->E:J

    sub-long/2addr v4, v6

    .line 452
    if-nez p1, :cond_30

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/d;->b(JJ)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 453
    :cond_30
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V

    .line 454
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->F:J

    .line 457
    :cond_35
    :goto_35
    return-void
.end method

.method private b(JJ)Z
    .registers 7

    .line 460
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

.method private f()Z
    .registers 2

    .line 143
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->m:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private g()V
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    if-nez v0, :cond_5

    return-void

    .line 163
    :cond_5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_13

    .line 165
    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/d$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/downloader/d$1;-><init>(Lcom/ss/android/socialbase/downloader/downloader/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 176
    :cond_13
    return-void
.end method

.method private h()V
    .registers 7

    .line 468
    nop

    .line 469
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->y:Z

    if-eqz v0, :cond_a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_c

    :cond_a
    const-wide/16 v0, 0x0

    .line 472
    :goto_c
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_e
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/e;->a()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_16

    .line 473
    nop

    .line 476
    move v4, v3

    goto :goto_18

    .line 474
    :catch_16
    move-exception v4

    .line 475
    move v4, v2

    .line 478
    :goto_18
    if-eqz v4, :cond_6a

    .line 479
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateRealDownloadTime(Z)V

    .line 480
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v4

    if-le v4, v3, :cond_28

    move v2, v3

    .line 482
    :cond_28
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->b()Z

    move-result v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v3

    .line 483
    if-eqz v2, :cond_51

    .line 484
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->i:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-direct {p0, v2}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    .line 485
    if-eqz v3, :cond_3f

    .line 486
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v3, v2}, Lcom/ss/android/socialbase/downloader/downloader/l;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    goto :goto_66

    .line 488
    :cond_3f
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->i:Lcom/ss/android/socialbase/downloader/downloader/r;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_66

    .line 490
    :cond_51
    if-eqz v3, :cond_59

    .line 491
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v3, v2}, Lcom/ss/android/socialbase/downloader/downloader/l;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    goto :goto_66

    .line 493
    :cond_59
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->i:Lcom/ss/android/socialbase/downloader/downloader/r;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v3

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    invoke-interface {v2, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 495
    :goto_66
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->E:J

    .line 497
    :cond_6a
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->y:Z

    if-eqz v2, :cond_78

    .line 498
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 499
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->C:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->C:J

    .line 505
    :cond_78
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 139
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    return-wide v0
.end method

.method public a(JJ)V
    .registers 5

    .line 190
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->q:J

    .line 191
    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->r:J

    .line 192
    return-void
.end method

.method public a(JJJ)V
    .registers 7

    .line 183
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    .line 184
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->p:J

    .line 185
    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->q:J

    .line 186
    iput-wide p5, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->r:J

    .line 187
    return-void
.end method

.method public b()V
    .registers 2

    .line 147
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:Z

    if-eqz v0, :cond_5

    return-void

    .line 148
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:Z

    .line 149
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->g()V

    .line 150
    return-void
.end method

.method public c()V
    .registers 3

    .line 153
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->m:Z

    if-eqz v0, :cond_5

    return-void

    .line 154
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->n:Lcom/ss/android/socialbase/downloader/h/f;

    monitor-enter v0

    .line 155
    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->m:Z

    .line 156
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_10

    .line 157
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->g()V

    .line 159
    return-void

    .line 156
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public d()V
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 196
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->f()Z

    move-result v0

    if-nez v0, :cond_5a1

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/model/b;

    if-nez v0, :cond_e

    goto/16 :goto_5a1

    .line 198
    :cond_e
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/network/g;)J

    move-result-wide v2

    .line 199
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_597

    .line 203
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->l()J

    move-result-wide v6

    .line 207
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 208
    iget-boolean v15, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->y:Z

    .line 210
    nop

    .line 211
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    instance-of v11, v0, Lcom/ss/android/socialbase/downloader/network/a;

    .line 214
    const/4 v14, 0x1

    const/4 v13, 0x0

    :try_start_2d
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v0

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v12}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v12

    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->t:Lcom/ss/android/socialbase/downloader/g/a;

    const-string v4, "flush_buffer_size_byte"

    .line 215
    const/4 v5, -0x1

    invoke-virtual {v10, v4, v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v4

    .line 214
    invoke-static {v0, v12, v4}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/ss/android/socialbase/downloader/model/e;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;
    :try_end_48
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_2d .. :try_end_48} :catch_45b
    .catchall {:try_start_2d .. :try_end_48} :catchall_2ac

    .line 217
    move-wide/from16 v29, v6

    :try_start_4a
    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    invoke-virtual {v0, v5, v6}, Lcom/ss/android/socialbase/downloader/model/e;->a(J)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4f} :catch_29d
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_4a .. :try_end_4f} :catch_45b
    .catchall {:try_start_4a .. :try_end_4f} :catchall_29b

    .line 220
    nop

    .line 222
    :try_start_50
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_28b

    .line 227
    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateRealStartDownloadTime()V

    .line 229
    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Ljava/io/InputStream;)Lcom/ss/android/socialbase/downloader/e/b;

    move-result-object v10
    :try_end_61
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_50 .. :try_end_61} :catch_45b
    .catchall {:try_start_50 .. :try_end_61} :catchall_29b

    .line 231
    :try_start_61
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-boolean v5, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->z:Z

    invoke-virtual {v0, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setIsRwConcurrent(Z)V

    .line 233
    nop

    .line 236
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getOpenLimitSpeed()Z

    move-result v0

    iput-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->a:Z

    .line 237
    sget-wide v5, Lcom/ss/android/socialbase/downloader/constants/e;->d:J

    .line 238
    sget-wide v16, Lcom/ss/android/socialbase/downloader/constants/e;->e:J

    .line 240
    const-wide/16 v18, 0x3e8

    div-long v18, v18, v16

    div-long v5, v5, v18

    .line 242
    nop

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    .line 247
    :goto_84
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->f()Z

    move-result v0
    :try_end_88
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_61 .. :try_end_88} :catch_287
    .catchall {:try_start_61 .. :try_end_88} :catchall_284

    if-eqz v0, :cond_10a

    .line 351
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_91

    .line 352
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->d()V

    .line 354
    :cond_91
    if-eqz v10, :cond_96

    .line 355
    invoke-interface {v10}, Lcom/ss/android/socialbase/downloader/e/b;->b()V

    .line 359
    :cond_96
    :try_start_96
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->s:Z

    if-eqz v0, :cond_b2

    .line 360
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->n:Lcom/ss/android/socialbase/downloader/h/f;

    monitor-enter v2
    :try_end_9d
    .catchall {:try_start_96 .. :try_end_9d} :catchall_ff

    .line 361
    :try_start_9d
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:Z

    if-nez v0, :cond_ad

    .line 363
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    .line 364
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_ad

    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V

    .line 368
    :cond_ad
    monitor-exit v2

    goto :goto_be

    :catchall_af
    move-exception v0

    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_9d .. :try_end_b1} :catchall_af

    :try_start_b1
    throw v0

    .line 370
    :cond_b2
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    .line 371
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_be

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V
    :try_end_be
    .catchall {:try_start_b1 .. :try_end_be} :catchall_ff

    .line 377
    :cond_be
    :goto_be
    new-array v0, v14, [Ljava/io/Closeable;

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    aput-object v2, v0, v13

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 378
    nop

    .line 380
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->D:J

    .line 393
    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->t:Lcom/ss/android/socialbase/downloader/g/a;

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->d:Ljava/lang/String;

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    iget-boolean v14, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->l:Z

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:Z

    move v7, v15

    move v15, v0

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-object/from16 v16, v0

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->p:J

    sub-long v17, v2, v4

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->D:J

    move-wide/from16 v19, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->A:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->B:J

    move-wide/from16 v24, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->C:J

    move-wide/from16 v26, v2

    const/16 v28, 0x0

    move/from16 v21, v7

    invoke-static/range {v10 .. v28}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    .line 247
    return-void

    .line 377
    :catchall_ff
    move-exception v0

    new-array v2, v14, [Ljava/io/Closeable;

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    aput-object v3, v2, v13

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    throw v0

    .line 249
    :cond_10a
    move v7, v15

    if-eqz v7, :cond_111

    :try_start_10d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    .line 250
    :cond_111
    invoke-interface {v10}, Lcom/ss/android/socialbase/downloader/e/b;->a()Lcom/ss/android/socialbase/downloader/f/a;

    move-result-object v0

    .line 251
    if-eqz v7, :cond_126

    move-wide/from16 v24, v5

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->A:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v26

    sub-long v26, v26, v20

    add-long v4, v4, v26

    iput-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->A:J

    goto :goto_128

    :cond_126
    move-wide/from16 v24, v5

    .line 253
    :goto_128
    iget v4, v0, Lcom/ss/android/socialbase/downloader/f/a;->c:I

    .line 254
    const/4 v5, -0x1

    if-ne v4, v5, :cond_12f

    .line 255
    goto/16 :goto_1d5

    .line 257
    :cond_12f
    iget-object v6, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isIgnoreDataVerify()Z

    move-result v6

    if-nez v6, :cond_158

    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->r:J

    iget-wide v14, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v12, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->p:J

    sub-long/2addr v14, v12

    cmp-long v5, v5, v14

    if-lez v5, :cond_158

    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->r:J

    iget-wide v12, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v14, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->p:J

    sub-long/2addr v12, v14

    int-to-long v14, v4

    add-long/2addr v12, v14

    cmp-long v5, v5, v12

    if-gez v5, :cond_158

    .line 258
    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->r:J

    iget-wide v12, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v14, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->p:J

    sub-long/2addr v12, v14

    sub-long/2addr v4, v12

    long-to-int v4, v4

    .line 261
    :cond_158
    if-eqz v7, :cond_160

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-wide/from16 v20, v5

    .line 262
    :cond_160
    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    iget-object v6, v0, Lcom/ss/android/socialbase/downloader/f/a;->a:[B

    const/4 v12, 0x0

    invoke-virtual {v5, v6, v12, v4}, Lcom/ss/android/socialbase/downloader/model/e;->a([BII)V

    .line 263
    if-eqz v7, :cond_175

    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->B:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long v12, v12, v20

    add-long/2addr v5, v12

    iput-wide v5, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->B:J

    .line 265
    :cond_175
    invoke-interface {v10, v0}, Lcom/ss/android/socialbase/downloader/e/b;->a(Lcom/ss/android/socialbase/downloader/f/a;)V

    .line 267
    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    int-to-long v12, v4

    add-long/2addr v5, v12

    iput-wide v5, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    .line 268
    add-long v22, v22, v12

    .line 270
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->n:Lcom/ss/android/socialbase/downloader/h/f;

    monitor-enter v4
    :try_end_183
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_10d .. :try_end_183} :catch_281
    .catchall {:try_start_10d .. :try_end_183} :catchall_27f

    .line 271
    :try_start_183
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->s:Z

    if-eqz v0, :cond_19a

    .line 273
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:Z

    if-nez v0, :cond_1a8

    .line 275
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->n:Lcom/ss/android/socialbase/downloader/h/f;

    invoke-interface {v0, v12, v13}, Lcom/ss/android/socialbase/downloader/h/f;->b(J)Z

    move-result v0

    .line 278
    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v5}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    .line 280
    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Z)V

    .line 281
    goto :goto_1a8

    .line 284
    :cond_19a
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->n:Lcom/ss/android/socialbase/downloader/h/f;

    invoke-interface {v0, v12, v13}, Lcom/ss/android/socialbase/downloader/h/f;->b(J)Z

    move-result v0

    .line 286
    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v5}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    .line 288
    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Z)V

    .line 290
    :cond_1a8
    :goto_1a8
    monitor-exit v4
    :try_end_1a9
    .catchall {:try_start_183 .. :try_end_1a9} :catchall_27c

    .line 292
    :try_start_1a9
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloadWithWifiValid()Z

    move-result v0

    if-eqz v0, :cond_276

    .line 297
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveWithWifiValid()Z

    move-result v0

    if-eqz v0, :cond_270

    .line 302
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isIgnoreDataVerify()Z

    move-result v0

    if-nez v0, :cond_243

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->r:J

    const-wide/16 v12, 0x0

    cmp-long v0, v4, v12

    if-ltz v0, :cond_243

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->r:J

    iget-wide v12, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v14, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->p:J
    :try_end_1cf
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1a9 .. :try_end_1cf} :catch_281
    .catchall {:try_start_1a9 .. :try_end_1cf} :catchall_27f

    sub-long/2addr v12, v14

    cmp-long v0, v4, v12

    if-gtz v0, :cond_243

    .line 303
    nop

    .line 351
    :goto_1d5
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_1dc

    .line 352
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->d()V

    .line 354
    :cond_1dc
    if-eqz v10, :cond_1e1

    .line 355
    invoke-interface {v10}, Lcom/ss/android/socialbase/downloader/e/b;->b()V

    .line 359
    :cond_1e1
    :try_start_1e1
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->s:Z

    if-eqz v0, :cond_1fd

    .line 360
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->n:Lcom/ss/android/socialbase/downloader/h/f;

    monitor-enter v4
    :try_end_1e8
    .catchall {:try_start_1e1 .. :try_end_1e8} :catchall_236

    .line 361
    :try_start_1e8
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:Z

    if-nez v0, :cond_1f8

    .line 363
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    .line 364
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_1f8

    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V

    .line 368
    :cond_1f8
    monitor-exit v4

    goto :goto_209

    :catchall_1fa
    move-exception v0

    monitor-exit v4
    :try_end_1fc
    .catchall {:try_start_1e8 .. :try_end_1fc} :catchall_1fa

    :try_start_1fc
    throw v0

    .line 370
    :cond_1fd
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    .line 371
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_209

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V
    :try_end_209
    .catchall {:try_start_1fc .. :try_end_209} :catchall_236

    .line 377
    :cond_209
    :goto_209
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/io/Closeable;

    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    const/4 v6, 0x0

    aput-object v5, v0, v6

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 378
    nop

    .line 380
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v8

    iput-wide v10, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->D:J

    .line 393
    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->t:Lcom/ss/android/socialbase/downloader/g/a;

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->d:Ljava/lang/String;

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    move v5, v6

    iget-boolean v14, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->l:Z

    move v6, v4

    iget-boolean v15, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:Z

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-object/from16 v16, v0

    iget-wide v8, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->p:J

    sub-long v17, v8, v5

    goto/16 :goto_3c6

    .line 377
    :catchall_236
    move-exception v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    throw v0

    .line 307
    :cond_243
    :try_start_243
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->a:Z

    if-eqz v0, :cond_269

    cmp-long v0, v22, v24

    if-lez v0, :cond_269

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_24f
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_243 .. :try_end_24f} :catch_281
    .catchall {:try_start_243 .. :try_end_24f} :catchall_27f

    sub-long v4, v4, v18

    .line 309
    cmp-long v0, v4, v16

    if-gez v0, :cond_260

    .line 311
    sub-long v4, v16, v4

    :try_start_257
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25a
    .catch Ljava/lang/InterruptedException; {:try_start_257 .. :try_end_25a} :catch_25b
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_257 .. :try_end_25a} :catch_281
    .catchall {:try_start_257 .. :try_end_25a} :catchall_27f

    .line 314
    goto :goto_260

    .line 312
    :catch_25b
    move-exception v0

    move-object v4, v0

    .line 313
    :try_start_25d
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 316
    :cond_260
    :goto_260
    nop

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide/from16 v18, v4

    const-wide/16 v22, 0x0

    .line 319
    :cond_269
    move v15, v7

    move-wide/from16 v5, v24

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_84

    .line 299
    :cond_270
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/e;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/exception/e;-><init>()V

    throw v0

    .line 293
    :cond_276
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/c;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/exception/c;-><init>()V

    throw v0
    :try_end_27c
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_25d .. :try_end_27c} :catch_281
    .catchall {:try_start_25d .. :try_end_27c} :catchall_27f

    .line 290
    :catchall_27c
    move-exception v0

    :try_start_27d
    monitor-exit v4
    :try_end_27e
    .catchall {:try_start_27d .. :try_end_27e} :catchall_27c

    :try_start_27e
    throw v0
    :try_end_27f
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_27e .. :try_end_27f} :catch_281
    .catchall {:try_start_27e .. :try_end_27f} :catchall_27f

    .line 333
    :catchall_27f
    move-exception v0

    goto :goto_2b1

    .line 321
    :catch_281
    move-exception v0

    goto/16 :goto_45e

    .line 333
    :catchall_284
    move-exception v0

    move v7, v15

    goto :goto_2b1

    .line 321
    :catch_287
    move-exception v0

    move v7, v15

    goto/16 :goto_45e

    .line 225
    :cond_28b
    move v7, v15

    :try_start_28c
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v4, 0x412

    new-instance v5, Ljava/io/IOException;

    const-string v6, "inputStream is null"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4, v5}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 333
    :catchall_29b
    move-exception v0

    goto :goto_2af

    .line 218
    :catch_29d
    move-exception v0

    move v7, v15

    .line 219
    new-instance v4, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v5, 0x41e

    invoke-direct {v4, v5, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v4
    :try_end_2a7
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_28c .. :try_end_2a7} :catch_2a9
    .catchall {:try_start_28c .. :try_end_2a7} :catchall_2a7

    .line 333
    :catchall_2a7
    move-exception v0

    goto :goto_2b0

    .line 321
    :catch_2a9
    move-exception v0

    goto/16 :goto_45d

    .line 333
    :catchall_2ac
    move-exception v0

    move-wide/from16 v29, v6

    :goto_2af
    move v7, v15

    :goto_2b0
    const/4 v10, 0x0

    .line 334
    :goto_2b1
    if-eqz v11, :cond_2ba

    .line 335
    :try_start_2b3
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    check-cast v4, Lcom/ss/android/socialbase/downloader/network/a;

    invoke-virtual {v4, v0}, Lcom/ss/android/socialbase/downloader/network/a;->a(Ljava/lang/Throwable;)V

    .line 337
    :cond_2ba
    sget-object v4, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleResponse: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->f()Z

    move-result v4
    :try_end_2d6
    .catchall {:try_start_2b3 .. :try_end_2d6} :catchall_514

    if-eqz v4, :cond_35a

    .line 351
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_2df

    .line 352
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->d()V

    .line 354
    :cond_2df
    if-eqz v10, :cond_2e4

    .line 355
    invoke-interface {v10}, Lcom/ss/android/socialbase/downloader/e/b;->b()V

    .line 359
    :cond_2e4
    :try_start_2e4
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->s:Z

    if-eqz v0, :cond_300

    .line 360
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->n:Lcom/ss/android/socialbase/downloader/h/f;

    monitor-enter v2
    :try_end_2eb
    .catchall {:try_start_2e4 .. :try_end_2eb} :catchall_34d

    .line 361
    :try_start_2eb
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:Z

    if-nez v0, :cond_2fb

    .line 363
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    .line 364
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_2fb

    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V

    .line 368
    :cond_2fb
    monitor-exit v2

    goto :goto_30c

    :catchall_2fd
    move-exception v0

    monitor-exit v2
    :try_end_2ff
    .catchall {:try_start_2eb .. :try_end_2ff} :catchall_2fd

    :try_start_2ff
    throw v0

    .line 370
    :cond_300
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    .line 371
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_30c

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V
    :try_end_30c
    .catchall {:try_start_2ff .. :try_end_30c} :catchall_34d

    .line 377
    :cond_30c
    :goto_30c
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/io/Closeable;

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 378
    nop

    .line 380
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->D:J

    .line 393
    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->t:Lcom/ss/android/socialbase/downloader/g/a;

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->d:Ljava/lang/String;

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    iget-boolean v14, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->l:Z

    iget-boolean v15, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:Z

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-object/from16 v16, v0

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->p:J

    sub-long v17, v2, v4

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->D:J

    move-wide/from16 v19, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->A:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->B:J

    move-wide/from16 v24, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->C:J

    move-wide/from16 v26, v2

    const/16 v28, 0x0

    move/from16 v21, v7

    invoke-static/range {v10 .. v28}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    .line 339
    return-void

    .line 377
    :catchall_34d
    move-exception v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    throw v0

    .line 341
    :cond_35a
    :try_start_35a
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v4

    if-eqz v4, :cond_363

    .line 342
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_363
    .catchall {:try_start_35a .. :try_end_363} :catchall_514

    .line 345
    :cond_363
    :try_start_363
    const-string v4, "ResponseHandler"

    invoke-static {v0, v4}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_368
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_363 .. :try_end_368} :catch_457
    .catchall {:try_start_363 .. :try_end_368} :catchall_514

    .line 349
    nop

    .line 351
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_370

    .line 352
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->d()V

    .line 354
    :cond_370
    if-eqz v10, :cond_375

    .line 355
    invoke-interface {v10}, Lcom/ss/android/socialbase/downloader/e/b;->b()V

    .line 359
    :cond_375
    :try_start_375
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->s:Z

    if-eqz v0, :cond_391

    .line 360
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->n:Lcom/ss/android/socialbase/downloader/h/f;

    monitor-enter v4
    :try_end_37c
    .catchall {:try_start_375 .. :try_end_37c} :catchall_44a

    .line 361
    :try_start_37c
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:Z

    if-nez v0, :cond_38c

    .line 363
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    .line 364
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_38c

    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V

    .line 368
    :cond_38c
    monitor-exit v4

    goto :goto_39d

    :catchall_38e
    move-exception v0

    monitor-exit v4
    :try_end_390
    .catchall {:try_start_37c .. :try_end_390} :catchall_38e

    :try_start_390
    throw v0

    .line 370
    :cond_391
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    .line 371
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_39d

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V
    :try_end_39d
    .catchall {:try_start_390 .. :try_end_39d} :catchall_44a

    .line 377
    :cond_39d
    :goto_39d
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/io/Closeable;

    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 378
    nop

    .line 380
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v8

    iput-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->D:J

    .line 393
    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->t:Lcom/ss/android/socialbase/downloader/g/a;

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->d:Ljava/lang/String;

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    iget-boolean v14, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->l:Z

    iget-boolean v15, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:Z

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-object/from16 v16, v0

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v8, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->p:J

    sub-long v17, v4, v8

    :goto_3c6
    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->D:J

    move-wide/from16 v19, v4

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->A:J

    move-wide/from16 v22, v4

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->B:J

    move-wide/from16 v24, v4

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->C:J

    move-wide/from16 v26, v4

    const/16 v28, 0x0

    move/from16 v21, v7

    invoke-static/range {v10 .. v28}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    .line 396
    nop

    .line 398
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isIgnoreDataVerify()Z

    move-result v0

    if-eqz v0, :cond_3e7

    .line 399
    return-void

    .line 401
    :cond_3e7
    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->p:J

    sub-long/2addr v4, v6

    .line 403
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_449

    .line 404
    iget-wide v8, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->r:J

    cmp-long v0, v8, v6

    if-ltz v0, :cond_449

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->r:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_3ff

    goto :goto_449

    .line 405
    :cond_3ff
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v6, 0x41b

    const-string v7, "handle data length[%d] != content length[%d] downloadChunkContentLen[%d], range[%d, %d) , current offset[%d] , handle start from %d"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    .line 407
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v8, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v8, v3

    const/4 v2, 0x2

    iget-wide v3, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->r:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x3

    .line 408
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x4

    iget-wide v3, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->q:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x5

    iget-wide v3, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x6

    iget-wide v3, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->p:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v2

    .line 405
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v6, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 411
    :cond_449
    :goto_449
    return-void

    .line 377
    :catchall_44a
    move-exception v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    throw v0

    .line 346
    :catch_457
    move-exception v0

    .line 347
    :try_start_458
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 348
    throw v0

    .line 321
    :catch_45b
    move-exception v0

    move v7, v15

    :goto_45d
    const/4 v10, 0x0

    .line 322
    :goto_45e
    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleResponse: BaseException e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->t:Lcom/ss/android/socialbase/downloader/g/a;

    const-string v3, "ignore_base_ex_on_stop_status"

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_508

    .line 324
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->f()Z

    move-result v2
    :try_end_484
    .catchall {:try_start_458 .. :try_end_484} :catchall_514

    if-eqz v2, :cond_508

    .line 351
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_48d

    .line 352
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->d()V

    .line 354
    :cond_48d
    if-eqz v10, :cond_492

    .line 355
    invoke-interface {v10}, Lcom/ss/android/socialbase/downloader/e/b;->b()V

    .line 359
    :cond_492
    :try_start_492
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->s:Z

    if-eqz v0, :cond_4ae

    .line 360
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->n:Lcom/ss/android/socialbase/downloader/h/f;

    monitor-enter v2
    :try_end_499
    .catchall {:try_start_492 .. :try_end_499} :catchall_4fb

    .line 361
    :try_start_499
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:Z

    if-nez v0, :cond_4a9

    .line 363
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    .line 364
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_4a9

    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V

    .line 368
    :cond_4a9
    monitor-exit v2

    goto :goto_4ba

    :catchall_4ab
    move-exception v0

    monitor-exit v2
    :try_end_4ad
    .catchall {:try_start_499 .. :try_end_4ad} :catchall_4ab

    :try_start_4ad
    throw v0

    .line 370
    :cond_4ae
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    .line 371
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_4ba

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V
    :try_end_4ba
    .catchall {:try_start_4ad .. :try_end_4ba} :catchall_4fb

    .line 377
    :cond_4ba
    :goto_4ba
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/io/Closeable;

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 378
    nop

    .line 380
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->D:J

    .line 393
    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->t:Lcom/ss/android/socialbase/downloader/g/a;

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->d:Ljava/lang/String;

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    iget-boolean v14, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->l:Z

    iget-boolean v15, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:Z

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-object/from16 v16, v0

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->p:J

    sub-long v17, v2, v4

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->D:J

    move-wide/from16 v19, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->A:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->B:J

    move-wide/from16 v24, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->C:J

    move-wide/from16 v26, v2

    const/16 v28, 0x0

    move/from16 v21, v7

    invoke-static/range {v10 .. v28}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    .line 325
    return-void

    .line 377
    :catchall_4fb
    move-exception v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    throw v0

    .line 328
    :cond_508
    :try_start_508
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v2

    if-eqz v2, :cond_511

    .line 329
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->printStackTrace()V

    .line 331
    :cond_511
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 332
    throw v0
    :try_end_514
    .catchall {:try_start_508 .. :try_end_514} :catchall_514

    .line 351
    :catchall_514
    move-exception v0

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v2, :cond_51c

    .line 352
    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/network/i;->d()V

    .line 354
    :cond_51c
    if-eqz v10, :cond_521

    .line 355
    invoke-interface {v10}, Lcom/ss/android/socialbase/downloader/e/b;->b()V

    .line 359
    :cond_521
    :try_start_521
    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->s:Z

    if-eqz v2, :cond_53d

    .line 360
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->n:Lcom/ss/android/socialbase/downloader/h/f;

    monitor-enter v2
    :try_end_528
    .catchall {:try_start_521 .. :try_end_528} :catchall_58a

    .line 361
    :try_start_528
    iget-boolean v3, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:Z

    if-nez v3, :cond_538

    .line 363
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v3}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    .line 364
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v3, :cond_538

    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V

    .line 368
    :cond_538
    monitor-exit v2

    goto :goto_549

    :catchall_53a
    move-exception v0

    monitor-exit v2
    :try_end_53c
    .catchall {:try_start_528 .. :try_end_53c} :catchall_53a

    :try_start_53c
    throw v0

    .line 370
    :cond_53d
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    .line 371
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v2, :cond_549

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V
    :try_end_549
    .catchall {:try_start_53c .. :try_end_549} :catchall_58a

    .line 377
    :cond_549
    :goto_549
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 378
    nop

    .line 380
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->D:J

    .line 393
    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->t:Lcom/ss/android/socialbase/downloader/g/a;

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->d:Ljava/lang/String;

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/network/i;

    iget-boolean v14, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->l:Z

    iget-boolean v15, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:Z

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-object/from16 v16, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->p:J

    sub-long v17, v2, v4

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->D:J

    move-wide/from16 v19, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->A:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->B:J

    move-wide/from16 v24, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->C:J

    move-wide/from16 v26, v2

    const/16 v28, 0x0

    move/from16 v21, v7

    invoke-static/range {v10 .. v28}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    throw v0

    .line 377
    :catchall_58a
    move-exception v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lcom/ss/android/socialbase/downloader/model/e;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    throw v0

    .line 200
    :cond_597
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/f;

    const/16 v2, 0x3ec

    const-string v3, "the content-length is 0"

    invoke-direct {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/exception/f;-><init>(ILjava/lang/String;)V

    throw v0

    .line 196
    :cond_5a1
    :goto_5a1
    return-void
.end method

.method public e()J
    .registers 3

    .line 464
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->E:J

    return-wide v0
.end method
