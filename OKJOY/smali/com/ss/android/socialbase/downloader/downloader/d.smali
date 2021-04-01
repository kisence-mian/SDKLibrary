.class public Lcom/ss/android/socialbase/downloader/downloader/d;
.super Ljava/lang/Object;
.source "DownloadResponseHandler.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/ss/android/socialbase/downloader/g/c;

.field private final c:Lcom/ss/android/socialbase/downloader/g/b;

.field private final d:Lcom/ss/android/socialbase/downloader/i/e;

.field private e:Lcom/ss/android/socialbase/downloader/downloader/k;

.field private f:Lcom/ss/android/socialbase/downloader/impls/k;

.field private g:Lcom/ss/android/socialbase/downloader/downloader/s;

.field private h:Lcom/ss/android/socialbase/downloader/g/f;

.field private volatile i:Z

.field private volatile j:Z

.field private final k:Lcom/ss/android/socialbase/downloader/l/e;

.field private l:J

.field private m:J

.field private volatile n:J

.field private volatile o:J

.field private final p:Z

.field private final q:Lcom/ss/android/socialbase/downloader/k/a;

.field private final r:Lcom/ss/android/socialbase/downloader/a/a;

.field private final s:Z

.field private final t:J

.field private final u:J

.field private v:Z

.field private volatile w:J

.field private volatile x:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-string v0, "ResponseHandler"

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/i/e;Lcom/ss/android/socialbase/downloader/g/b;Lcom/ss/android/socialbase/downloader/l/e;)V
    .registers 15

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x1f4

    const-wide/16 v8, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-wide v8, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->w:J

    .line 395
    iput-wide v8, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->x:J

    .line 97
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lcom/ss/android/socialbase/downloader/g/c;

    .line 98
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/downloader/k;

    .line 99
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/downloader/k;

    instance-of v0, v0, Lcom/ss/android/socialbase/downloader/impls/d;

    if-eqz v0, :cond_2b

    .line 100
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/downloader/k;

    check-cast v0, Lcom/ss/android/socialbase/downloader/impls/d;

    .line 101
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/d;->a()Lcom/ss/android/socialbase/downloader/impls/k;

    move-result-object v3

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/impls/k;

    .line 102
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/d;->e()Lcom/ss/android/socialbase/downloader/downloader/s;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lcom/ss/android/socialbase/downloader/downloader/s;

    .line 105
    :cond_2b
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->d:Lcom/ss/android/socialbase/downloader/i/e;

    .line 106
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/g/b;

    .line 107
    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/l/e;

    .line 108
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    .line 109
    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    iput-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->m:J

    .line 110
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/g/b;->d()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 111
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/g/b;->q()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    .line 114
    :goto_47
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/g/b;->p()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->n:J

    .line 115
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->r:Lcom/ss/android/socialbase/downloader/a/a;

    .line 116
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->q:Lcom/ss/android/socialbase/downloader/k/a;

    .line 117
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->q:Lcom/ss/android/socialbase/downloader/k/a;

    const-string v3, "sync_strategy"

    invoke-virtual {v0, v3, v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_a1

    move v0, v1

    :goto_68
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->s:Z

    .line 118
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->s:Z

    if-eqz v0, :cond_a5

    .line 119
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->q:Lcom/ss/android/socialbase/downloader/k/a;

    const-string v1, "sync_interval_ms_fg"

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 121
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->q:Lcom/ss/android/socialbase/downloader/k/a;

    const-string v3, "sync_interval_ms_bg"

    const/16 v6, 0x3e8

    invoke-virtual {v2, v3, v6}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    .line 123
    cmp-long v6, v0, v4

    if-gez v6, :cond_89

    move-wide v0, v4

    :cond_89
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->t:J

    .line 124
    cmp-long v0, v2, v4

    if-gez v0, :cond_a3

    :goto_8f
    iput-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->u:J

    .line 130
    :goto_91
    const/high16 v0, 0x10000

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->p:Z

    .line 131
    return-void

    .line 113
    :cond_9a
    invoke-virtual {p3, v2}, Lcom/ss/android/socialbase/downloader/g/b;->c(Z)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    goto :goto_47

    :cond_a1
    move v0, v2

    .line 117
    goto :goto_68

    :cond_a3
    move-wide v4, v2

    .line 124
    goto :goto_8f

    .line 126
    :cond_a5
    iput-wide v8, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->t:J

    .line 127
    iput-wide v8, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->u:J

    goto :goto_91
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/downloader/d;)Lcom/ss/android/socialbase/downloader/i/e;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->d:Lcom/ss/android/socialbase/downloader/i/e;

    return-object v0
.end method

.method private a(Ljava/io/InputStream;)Lcom/ss/android/socialbase/downloader/j/c;
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 371
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->w()I

    move-result v1

    .line 372
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->q:Lcom/ss/android/socialbase/downloader/k/a;

    const-string v2, "rw_concurrent"

    invoke-virtual {v0, v2, v6}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3b

    .line 374
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v0

    if-ne v0, v3, :cond_3b

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lcom/ss/android/socialbase/downloader/g/c;

    .line 375
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v2

    const-wide/32 v4, 0x1400000

    cmp-long v0, v2, v4

    if-lez v0, :cond_3b

    .line 376
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->q:Lcom/ss/android/socialbase/downloader/k/a;

    const-string v2, "rw_concurrent_max_buffer_count"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v2

    .line 380
    :try_start_2e
    new-instance v0, Lcom/ss/android/socialbase/downloader/j/a;

    invoke-direct {v0, p1, v1, v2}, Lcom/ss/android/socialbase/downloader/j/a;-><init>(Ljava/io/InputStream;II)V

    .line 381
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->v:Z
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_36} :catch_37

    .line 391
    :goto_36
    return-object v0

    .line 383
    :catch_37
    move-exception v0

    .line 384
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 389
    :cond_3b
    new-instance v0, Lcom/ss/android/socialbase/downloader/j/e;

    invoke-direct {v0, p1, v1}, Lcom/ss/android/socialbase/downloader/j/e;-><init>(Ljava/io/InputStream;I)V

    .line 390
    iput-boolean v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->v:Z

    goto :goto_36
.end method

.method private a(Lcom/ss/android/socialbase/downloader/downloader/k;)V
    .registers 11

    .prologue
    .line 462
    if-nez p1, :cond_3

    .line 515
    :cond_2
    :goto_2
    return-void

    .line 464
    :cond_3
    const/4 v0, 0x0

    .line 465
    instance-of v1, p1, Lcom/ss/android/socialbase/downloader/c/e;

    if-eqz v1, :cond_12

    .line 466
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_2

    .line 472
    :cond_12
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/b;->d()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 473
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/b;->e()Lcom/ss/android/socialbase/downloader/g/b;

    move-result-object v1

    move-object v8, v1

    .line 478
    :goto_21
    if-eqz v8, :cond_b0

    .line 480
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    invoke-virtual {v8, v2, v3}, Lcom/ss/android/socialbase/downloader/g/b;->b(J)V

    .line 481
    instance-of v1, p1, Lcom/ss/android/socialbase/downloader/c/e;

    if-eqz v1, :cond_82

    if-eqz v0, :cond_82

    .line 482
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/b;->k()I

    move-result v1

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v2

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/b;->b()I

    move-result v3

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIIJ)V

    .line 486
    :goto_3f
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/b;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 487
    const/4 v1, 0x0

    .line 488
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/b;->i()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 489
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/b;->j()J

    move-result-wide v2

    .line 490
    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_68

    .line 491
    instance-of v1, p1, Lcom/ss/android/socialbase/downloader/c/e;

    if-eqz v1, :cond_95

    if-eqz v0, :cond_95

    .line 492
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/b;->k()I

    move-result v1

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/b;->b()I

    move-result v4

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIJ)V

    .line 495
    :goto_67
    const/4 v1, 0x1

    .line 498
    :cond_68
    if-nez v1, :cond_2

    .line 499
    instance-of v1, p1, Lcom/ss/android/socialbase/downloader/c/e;

    if-eqz v1, :cond_a1

    if-eqz v0, :cond_a1

    .line 500
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/b;->k()I

    move-result v1

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/b;->b()I

    move-result v2

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIJ)V

    goto :goto_2

    .line 475
    :cond_7e
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/g/b;

    move-object v8, v1

    goto :goto_21

    .line 484
    :cond_82
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/b;->k()I

    move-result v3

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v4

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/b;->b()I

    move-result v5

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIIJ)V

    goto :goto_3f

    .line 494
    :cond_95
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/b;->k()I

    move-result v1

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/b;->b()I

    move-result v4

    invoke-interface {p1, v1, v4, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIJ)V

    goto :goto_67

    .line 502
    :cond_a1
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/b;->k()I

    move-result v0

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/g/b;->b()I

    move-result v1

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIJ)V

    goto/16 :goto_2

    .line 507
    :cond_b0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/b;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 508
    instance-of v1, p1, Lcom/ss/android/socialbase/downloader/c/e;

    if-eqz v1, :cond_d1

    if-eqz v0, :cond_d1

    .line 509
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/b;->k()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v2

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIJ)V

    goto/16 :goto_2

    .line 511
    :cond_d1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->k()I

    move-result v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v1

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIJ)V

    goto/16 :goto_2
.end method

.method private a(Z)V
    .registers 10

    .prologue
    .line 398
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 399
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->x:J

    sub-long v4, v2, v0

    .line 401
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->s:Z

    if-eqz v0, :cond_23

    .line 402
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->r:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->t:J

    :goto_16
    cmp-long v0, v4, v0

    if-lez v0, :cond_1f

    .line 403
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V

    .line 404
    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->x:J

    .line 413
    :cond_1f
    :goto_1f
    return-void

    .line 402
    :cond_20
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->u:J

    goto :goto_16

    .line 407
    :cond_23
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->w:J

    sub-long/2addr v0, v6

    .line 408
    if-nez p1, :cond_30

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/d;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 409
    :cond_30
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V

    .line 410
    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->x:J

    goto :goto_1f
.end method

.method private b(JJ)Z
    .registers 8

    .prologue
    .line 416
    const-wide/32 v0, 0x10000

    cmp-long v0, p1, v0

    if-lez v0, :cond_f

    const-wide/16 v0, 0x1f4

    cmp-long v0, p3, v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private f()Z
    .registers 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->i:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private g()V
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->d:Lcom/ss/android/socialbase/downloader/i/e;

    if-nez v0, :cond_5

    .line 171
    :cond_4
    :goto_4
    return-void

    .line 158
    :cond_5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_4

    .line 160
    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/d$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/downloader/d$1;-><init>(Lcom/ss/android/socialbase/downloader/downloader/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method private h()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 428
    :try_start_2
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/f;->a()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_32

    move v2, v0

    .line 434
    :goto_8
    if-eqz v2, :cond_31

    .line 435
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2, v0}, Lcom/ss/android/socialbase/downloader/g/c;->e(Z)V

    .line 436
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v2

    if-le v2, v0, :cond_35

    .line 438
    :goto_17
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->b()Z

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v1

    .line 439
    if-eqz v0, :cond_49

    .line 440
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lcom/ss/android/socialbase/downloader/downloader/s;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 441
    if-eqz v1, :cond_37

    .line 442
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(Lcom/ss/android/socialbase/downloader/g/c;)Z

    .line 451
    :goto_2d
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->w:J

    .line 459
    :cond_31
    return-void

    .line 430
    :catch_32
    move-exception v2

    move v2, v1

    .line 431
    goto :goto_8

    :cond_35
    move v0, v1

    .line 436
    goto :goto_17

    .line 444
    :cond_37
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lcom/ss/android/socialbase/downloader/downloader/s;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/s;->a(IJ)Lcom/ss/android/socialbase/downloader/g/c;

    goto :goto_2d

    .line 446
    :cond_49
    if-eqz v1, :cond_51

    .line 447
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(Lcom/ss/android/socialbase/downloader/g/c;)Z

    goto :goto_2d

    .line 449
    :cond_51
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lcom/ss/android/socialbase/downloader/downloader/s;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/b;->k()I

    move-result v1

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/s;->a(IJ)Lcom/ss/android/socialbase/downloader/g/c;

    goto :goto_2d
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    return-wide v0
.end method

.method public a(JJ)V
    .registers 6

    .prologue
    .line 185
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->n:J

    .line 186
    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    .line 187
    return-void
.end method

.method public a(JJJ)V
    .registers 8

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    .line 179
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->m:J

    .line 180
    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->n:J

    .line 181
    iput-wide p5, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    .line 182
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->i:Z

    if-eqz v0, :cond_5

    .line 145
    :goto_4
    return-void

    .line 143
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->i:Z

    .line 144
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->g()V

    goto :goto_4
.end method

.method public c()V
    .registers 3

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Z

    if-eqz v0, :cond_5

    .line 154
    :goto_4
    return-void

    .line 149
    :cond_5
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/l/e;

    monitor-enter v1

    .line 150
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Z

    .line 151
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_10

    .line 152
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->g()V

    goto :goto_4

    .line 151
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public d()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->f()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/g/b;

    if-nez v0, :cond_b

    .line 367
    :cond_a
    :goto_a
    return-void

    .line 193
    :cond_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->d:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/i/c;)J

    move-result-wide v2

    .line 194
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_21

    .line 195
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/f;

    const/16 v1, 0x3ec

    const-string v2, "the content-length is 0"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/f;-><init>(ILjava/lang/String;)V

    throw v0

    .line 198
    :cond_21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->l()J

    move-result-wide v4

    .line 205
    const/4 v1, 0x0

    .line 208
    :try_start_28
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->m()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->q:Lcom/ss/android/socialbase/downloader/k/a;

    const-string v8, "flush_buffer_size_byte"

    const/4 v9, -0x1

    .line 209
    invoke-virtual {v7, v8, v9}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v7

    .line 208
    invoke-static {v0, v6, v7}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/ss/android/socialbase/downloader/g/f;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;
    :try_end_43
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_28 .. :try_end_43} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_43} :catch_c1
    .catchall {:try_start_28 .. :try_end_43} :catchall_26f

    .line 211
    :try_start_43
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    invoke-virtual {v0, v6, v7}, Lcom/ss/android/socialbase/downloader/g/f;->a(J)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4a} :catch_b8
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_43 .. :try_end_4a} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_4a} :catch_c1
    .catchall {:try_start_43 .. :try_end_4a} :catchall_26f

    .line 216
    :try_start_4a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->d:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 218
    if-nez v0, :cond_10e

    .line 219
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v6, 0x412

    new-instance v7, Ljava/io/IOException;

    const-string v8, "inputStream is null"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v7}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_61
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_4a .. :try_end_61} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_61} :catch_c1
    .catchall {:try_start_4a .. :try_end_61} :catchall_26f

    .line 285
    :catch_61
    move-exception v0

    .line 286
    :try_start_62
    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleResponse: BaseException e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->q:Lcom/ss/android/socialbase/downloader/k/a;

    const-string v3, "ignore_base_ex_on_stop_status"

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30f

    .line 288
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->f()Z
    :try_end_87
    .catchall {:try_start_62 .. :try_end_87} :catchall_26f

    move-result v2

    if-eqz v2, :cond_30f

    .line 306
    if-eqz v1, :cond_8f

    .line 307
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/j/c;->b()V

    .line 311
    :cond_8f
    :try_start_8f
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->p:Z

    if-eqz v0, :cond_2fc

    .line 312
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/l/e;

    monitor-enter v1
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_2f1

    .line 313
    :try_start_96
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Z

    if-nez v0, :cond_a6

    .line 315
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 316
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v0, :cond_a6

    .line 317
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V

    .line 320
    :cond_a6
    monitor-exit v1
    :try_end_a7
    .catchall {:try_start_96 .. :try_end_a7} :catchall_2ee

    .line 329
    :cond_a7
    :goto_a7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v0, :cond_a

    .line 331
    :try_start_ab
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/f;->b()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b0} :catch_b2

    goto/16 :goto_a

    .line 332
    :catch_b2
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 212
    :catch_b8
    move-exception v0

    .line 213
    :try_start_b9
    new-instance v6, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v7, 0x41e

    invoke-direct {v6, v7, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/Throwable;)V

    throw v6
    :try_end_c1
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_b9 .. :try_end_c1} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_c1} :catch_c1
    .catchall {:try_start_b9 .. :try_end_c1} :catchall_26f

    .line 296
    :catch_c1
    move-exception v0

    .line 297
    :try_start_c2
    sget-object v6, Lcom/ss/android/socialbase/downloader/downloader/d;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleResponse: e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->f()Z
    :try_end_dd
    .catchall {:try_start_c2 .. :try_end_dd} :catchall_26f

    move-result v6

    if-eqz v6, :cond_33a

    .line 306
    if-eqz v1, :cond_e5

    .line 307
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/j/c;->b()V

    .line 311
    :cond_e5
    :try_start_e5
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->p:Z

    if-eqz v0, :cond_327

    .line 312
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/l/e;

    monitor-enter v1
    :try_end_ec
    .catchall {:try_start_e5 .. :try_end_ec} :catchall_31c

    .line 313
    :try_start_ec
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Z

    if-nez v0, :cond_fc

    .line 315
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 316
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v0, :cond_fc

    .line 317
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V

    .line 320
    :cond_fc
    monitor-exit v1
    :try_end_fd
    .catchall {:try_start_ec .. :try_end_fd} :catchall_319

    .line 329
    :cond_fd
    :goto_fd
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v0, :cond_a

    .line 331
    :try_start_101
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/f;->b()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_106} :catch_108

    goto/16 :goto_a

    .line 332
    :catch_108
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 221
    :cond_10e
    :try_start_10e
    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/g/c;->Q()V

    .line 223
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Ljava/io/InputStream;)Lcom/ss/android/socialbase/downloader/j/c;

    move-result-object v1

    .line 225
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lcom/ss/android/socialbase/downloader/g/c;

    iget-boolean v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->v:Z

    invoke-virtual {v0, v6}, Lcom/ss/android/socialbase/downloader/g/c;->d(Z)V

    .line 232
    :cond_11e
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->f()Z
    :try_end_121
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_10e .. :try_end_121} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_10e .. :try_end_121} :catch_c1
    .catchall {:try_start_10e .. :try_end_121} :catchall_26f

    move-result v0

    if-eqz v0, :cond_172

    .line 306
    if-eqz v1, :cond_129

    .line 307
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/j/c;->b()V

    .line 311
    :cond_129
    :try_start_129
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->p:Z

    if-eqz v0, :cond_160

    .line 312
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/l/e;

    monitor-enter v1
    :try_end_130
    .catchall {:try_start_129 .. :try_end_130} :catchall_155

    .line 313
    :try_start_130
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Z

    if-nez v0, :cond_140

    .line 315
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 316
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v0, :cond_140

    .line 317
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V

    .line 320
    :cond_140
    monitor-exit v1
    :try_end_141
    .catchall {:try_start_130 .. :try_end_141} :catchall_152

    .line 329
    :cond_141
    :goto_141
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v0, :cond_a

    .line 331
    :try_start_145
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/f;->b()V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_14a} :catch_14c

    goto/16 :goto_a

    .line 332
    :catch_14c
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 320
    :catchall_152
    move-exception v0

    :try_start_153
    monitor-exit v1
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_152

    :try_start_154
    throw v0
    :try_end_155
    .catchall {:try_start_154 .. :try_end_155} :catchall_155

    .line 329
    :catchall_155
    move-exception v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v1, :cond_15f

    .line 331
    :try_start_15a
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/f;->b()V
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_15f} :catch_16d

    .line 334
    :cond_15f
    :goto_15f
    throw v0

    .line 322
    :cond_160
    :try_start_160
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 323
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v0, :cond_141

    .line 324
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V
    :try_end_16c
    .catchall {:try_start_160 .. :try_end_16c} :catchall_155

    goto :goto_141

    .line 332
    :catch_16d
    move-exception v1

    .line 333
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15f

    .line 235
    :cond_172
    :try_start_172
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/j/c;->a()Lcom/ss/android/socialbase/downloader/j/b;

    move-result-object v6

    .line 238
    iget v0, v6, Lcom/ss/android/socialbase/downloader/j/b;->b:I
    :try_end_178
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_172 .. :try_end_178} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_172 .. :try_end_178} :catch_c1
    .catchall {:try_start_172 .. :try_end_178} :catchall_26f

    .line 239
    const/4 v7, -0x1

    if-ne v0, v7, :cond_20c

    .line 306
    :goto_17b
    if-eqz v1, :cond_180

    .line 307
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/j/c;->b()V

    .line 311
    :cond_180
    :try_start_180
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->p:Z

    if-eqz v0, :cond_2d5

    .line 312
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/l/e;

    monitor-enter v1
    :try_end_187
    .catchall {:try_start_180 .. :try_end_187} :catchall_2ca

    .line 313
    :try_start_187
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Z

    if-nez v0, :cond_197

    .line 315
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 316
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v0, :cond_197

    .line 317
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V

    .line 320
    :cond_197
    monitor-exit v1
    :try_end_198
    .catchall {:try_start_187 .. :try_end_198} :catchall_2c7

    .line 329
    :cond_198
    :goto_198
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v0, :cond_1a1

    .line 331
    :try_start_19c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/f;->b()V
    :try_end_1a1
    .catch Ljava/io/IOException; {:try_start_19c .. :try_end_1a1} :catch_2e3

    .line 354
    :cond_1a1
    :goto_1a1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->V()Z

    move-result v0

    if-nez v0, :cond_a

    .line 357
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->m:J

    sub-long/2addr v0, v6

    .line 359
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_a

    .line 360
    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_a

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_a

    .line 361
    new-instance v6, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v7, 0x41b

    const-string v8, "handle data length[%d] != content length[%d] downloadChunkContentLen[%d], range[%d, %d) , current offset[%d] , handle start from %d"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 363
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x3

    .line 364
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    .line 361
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    throw v6

    .line 242
    :cond_20c
    :try_start_20c
    iget-object v7, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/g/c;->V()Z

    move-result v7

    if-nez v7, :cond_235

    iget-wide v8, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v10, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    iget-wide v12, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->m:J

    sub-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-lez v7, :cond_235

    iget-wide v8, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v10, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    iget-wide v12, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->m:J

    sub-long/2addr v10, v12

    int-to-long v12, v0

    add-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gez v7, :cond_235

    .line 243
    iget-wide v8, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v10, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    iget-wide v12, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->m:J

    sub-long/2addr v10, v12

    sub-long/2addr v8, v10

    long-to-int v0, v8

    .line 247
    :cond_235
    iget-object v7, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    iget-object v8, v6, Lcom/ss/android/socialbase/downloader/j/b;->a:[B

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v0}, Lcom/ss/android/socialbase/downloader/g/f;->a([BII)V

    .line 250
    invoke-interface {v1, v6}, Lcom/ss/android/socialbase/downloader/j/c;->a(Lcom/ss/android/socialbase/downloader/j/b;)V

    .line 252
    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    .line 254
    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/l/e;

    monitor-enter v6
    :try_end_249
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_20c .. :try_end_249} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_20c .. :try_end_249} :catch_c1
    .catchall {:try_start_20c .. :try_end_249} :catchall_26f

    .line 255
    :try_start_249
    iget-boolean v7, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->p:Z

    if-eqz v7, :cond_297

    .line 257
    iget-boolean v7, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Z

    if-nez v7, :cond_260

    .line 259
    iget-object v7, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/l/e;

    int-to-long v8, v0

    invoke-interface {v7, v8, v9}, Lcom/ss/android/socialbase/downloader/l/e;->a(J)Z

    move-result v0

    .line 262
    iget-object v7, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {p0, v7}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 264
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Z)V

    .line 274
    :cond_260
    :goto_260
    monitor-exit v6
    :try_end_261
    .catchall {:try_start_249 .. :try_end_261} :catchall_2a7

    .line 276
    :try_start_261
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aA()Z

    move-result v0

    if-nez v0, :cond_2aa

    .line 277
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/d;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/e/d;-><init>()V

    throw v0
    :try_end_26f
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_261 .. :try_end_26f} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_261 .. :try_end_26f} :catch_c1
    .catchall {:try_start_261 .. :try_end_26f} :catchall_26f

    .line 306
    :catchall_26f
    move-exception v0

    if-eqz v1, :cond_275

    .line 307
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/j/c;->b()V

    .line 311
    :cond_275
    :try_start_275
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->p:Z

    if-eqz v1, :cond_3a4

    .line 312
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/l/e;

    monitor-enter v1
    :try_end_27c
    .catchall {:try_start_275 .. :try_end_27c} :catchall_399

    .line 313
    :try_start_27c
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Z

    if-nez v2, :cond_28c

    .line 315
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {p0, v2}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 316
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v2, :cond_28c

    .line 317
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V

    .line 320
    :cond_28c
    monitor-exit v1
    :try_end_28d
    .catchall {:try_start_27c .. :try_end_28d} :catchall_396

    .line 329
    :cond_28d
    :goto_28d
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v1, :cond_296

    .line 331
    :try_start_291
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/f;->b()V
    :try_end_296
    .catch Ljava/io/IOException; {:try_start_291 .. :try_end_296} :catch_3b2

    .line 334
    :cond_296
    :goto_296
    throw v0

    .line 268
    :cond_297
    :try_start_297
    iget-object v7, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/l/e;

    int-to-long v8, v0

    invoke-interface {v7, v8, v9}, Lcom/ss/android/socialbase/downloader/l/e;->a(J)Z

    move-result v0

    .line 270
    iget-object v7, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {p0, v7}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 272
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Z)V

    goto :goto_260

    .line 274
    :catchall_2a7
    move-exception v0

    monitor-exit v6
    :try_end_2a9
    .catchall {:try_start_297 .. :try_end_2a9} :catchall_2a7

    :try_start_2a9
    throw v0

    .line 280
    :cond_2aa
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->V()Z

    move-result v0

    if-nez v0, :cond_11e

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_11e

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v8, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:J

    iget-wide v10, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->m:J
    :try_end_2c0
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_2a9 .. :try_end_2c0} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_2a9 .. :try_end_2c0} :catch_c1
    .catchall {:try_start_2a9 .. :try_end_2c0} :catchall_26f

    sub-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-gtz v0, :cond_11e

    goto/16 :goto_17b

    .line 320
    :catchall_2c7
    move-exception v0

    :try_start_2c8
    monitor-exit v1
    :try_end_2c9
    .catchall {:try_start_2c8 .. :try_end_2c9} :catchall_2c7

    :try_start_2c9
    throw v0
    :try_end_2ca
    .catchall {:try_start_2c9 .. :try_end_2ca} :catchall_2ca

    .line 329
    :catchall_2ca
    move-exception v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v1, :cond_2d4

    .line 331
    :try_start_2cf
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/f;->b()V
    :try_end_2d4
    .catch Ljava/io/IOException; {:try_start_2cf .. :try_end_2d4} :catch_2e9

    .line 334
    :cond_2d4
    :goto_2d4
    throw v0

    .line 322
    :cond_2d5
    :try_start_2d5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 323
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v0, :cond_198

    .line 324
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V
    :try_end_2e1
    .catchall {:try_start_2d5 .. :try_end_2e1} :catchall_2ca

    goto/16 :goto_198

    .line 332
    :catch_2e3
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1a1

    .line 332
    :catch_2e9
    move-exception v1

    .line 333
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d4

    .line 320
    :catchall_2ee
    move-exception v0

    :try_start_2ef
    monitor-exit v1
    :try_end_2f0
    .catchall {:try_start_2ef .. :try_end_2f0} :catchall_2ee

    :try_start_2f0
    throw v0
    :try_end_2f1
    .catchall {:try_start_2f0 .. :try_end_2f1} :catchall_2f1

    .line 329
    :catchall_2f1
    move-exception v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v1, :cond_2fb

    .line 331
    :try_start_2f6
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/f;->b()V
    :try_end_2fb
    .catch Ljava/io/IOException; {:try_start_2f6 .. :try_end_2fb} :catch_30a

    .line 334
    :cond_2fb
    :goto_2fb
    throw v0

    .line 322
    :cond_2fc
    :try_start_2fc
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 323
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v0, :cond_a7

    .line 324
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V
    :try_end_308
    .catchall {:try_start_2fc .. :try_end_308} :catchall_2f1

    goto/16 :goto_a7

    .line 332
    :catch_30a
    move-exception v1

    .line 333
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2fb

    .line 292
    :cond_30f
    :try_start_30f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v2

    if-eqz v2, :cond_318

    .line 293
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/e/a;->printStackTrace()V

    .line 295
    :cond_318
    throw v0
    :try_end_319
    .catchall {:try_start_30f .. :try_end_319} :catchall_26f

    .line 320
    :catchall_319
    move-exception v0

    :try_start_31a
    monitor-exit v1
    :try_end_31b
    .catchall {:try_start_31a .. :try_end_31b} :catchall_319

    :try_start_31b
    throw v0
    :try_end_31c
    .catchall {:try_start_31b .. :try_end_31c} :catchall_31c

    .line 329
    :catchall_31c
    move-exception v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v1, :cond_326

    .line 331
    :try_start_321
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/f;->b()V
    :try_end_326
    .catch Ljava/io/IOException; {:try_start_321 .. :try_end_326} :catch_335

    .line 334
    :cond_326
    :goto_326
    throw v0

    .line 322
    :cond_327
    :try_start_327
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 323
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v0, :cond_fd

    .line 324
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V
    :try_end_333
    .catchall {:try_start_327 .. :try_end_333} :catchall_31c

    goto/16 :goto_fd

    .line 332
    :catch_335
    move-exception v1

    .line 333
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_326

    .line 301
    :cond_33a
    :try_start_33a
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v6

    if-eqz v6, :cond_343

    .line 302
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 304
    :cond_343
    const-string v6, "DownloadResponseHandler"

    invoke-static {v0, v6}, Lcom/ss/android/socialbase/downloader/m/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_348
    .catchall {:try_start_33a .. :try_end_348} :catchall_26f

    .line 306
    if-eqz v1, :cond_34d

    .line 307
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/j/c;->b()V

    .line 311
    :cond_34d
    :try_start_34d
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->p:Z

    if-eqz v0, :cond_384

    .line 312
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:Lcom/ss/android/socialbase/downloader/l/e;

    monitor-enter v1
    :try_end_354
    .catchall {:try_start_34d .. :try_end_354} :catchall_379

    .line 313
    :try_start_354
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Z

    if-nez v0, :cond_364

    .line 315
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 316
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v0, :cond_364

    .line 317
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V

    .line 320
    :cond_364
    monitor-exit v1
    :try_end_365
    .catchall {:try_start_354 .. :try_end_365} :catchall_376

    .line 329
    :cond_365
    :goto_365
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v0, :cond_1a1

    .line 331
    :try_start_369
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/f;->b()V
    :try_end_36e
    .catch Ljava/io/IOException; {:try_start_369 .. :try_end_36e} :catch_370

    goto/16 :goto_1a1

    .line 332
    :catch_370
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1a1

    .line 320
    :catchall_376
    move-exception v0

    :try_start_377
    monitor-exit v1
    :try_end_378
    .catchall {:try_start_377 .. :try_end_378} :catchall_376

    :try_start_378
    throw v0
    :try_end_379
    .catchall {:try_start_378 .. :try_end_379} :catchall_379

    .line 329
    :catchall_379
    move-exception v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v1, :cond_383

    .line 331
    :try_start_37e
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/f;->b()V
    :try_end_383
    .catch Ljava/io/IOException; {:try_start_37e .. :try_end_383} :catch_391

    .line 334
    :cond_383
    :goto_383
    throw v0

    .line 322
    :cond_384
    :try_start_384
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 323
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v0, :cond_365

    .line 324
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V
    :try_end_390
    .catchall {:try_start_384 .. :try_end_390} :catchall_379

    goto :goto_365

    .line 332
    :catch_391
    move-exception v1

    .line 333
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_383

    .line 320
    :catchall_396
    move-exception v0

    :try_start_397
    monitor-exit v1
    :try_end_398
    .catchall {:try_start_397 .. :try_end_398} :catchall_396

    :try_start_398
    throw v0
    :try_end_399
    .catchall {:try_start_398 .. :try_end_399} :catchall_399

    .line 329
    :catchall_399
    move-exception v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v1, :cond_3a3

    .line 331
    :try_start_39e
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/f;->b()V
    :try_end_3a3
    .catch Ljava/io/IOException; {:try_start_39e .. :try_end_3a3} :catch_3b8

    .line 334
    :cond_3a3
    :goto_3a3
    throw v0

    .line 322
    :cond_3a4
    :try_start_3a4
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {p0, v1}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 323
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Lcom/ss/android/socialbase/downloader/g/f;

    if-eqz v1, :cond_28d

    .line 324
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->h()V
    :try_end_3b0
    .catchall {:try_start_3a4 .. :try_end_3b0} :catchall_399

    goto/16 :goto_28d

    .line 332
    :catch_3b2
    move-exception v1

    .line 333
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_296

    .line 332
    :catch_3b8
    move-exception v1

    .line 333
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a3
.end method

.method public e()J
    .registers 3

    .prologue
    .line 420
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->w:J

    return-wide v0
.end method
