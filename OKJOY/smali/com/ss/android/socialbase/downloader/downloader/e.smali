.class public Lcom/ss/android/socialbase/downloader/downloader/e;
.super Ljava/lang/Object;
.source "DownloadStatusHandler.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/ss/android/socialbase/downloader/g/c;

.field private final c:Lcom/ss/android/socialbase/downloader/downloader/k;

.field private final d:Landroid/os/Handler;

.field private e:Lcom/ss/android/socialbase/downloader/g/d;

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/d/w;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/d/w;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/d/w;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private volatile j:J

.field private final k:Ljava/util/concurrent/atomic/AtomicLong;

.field private l:Z

.field private m:I

.field private n:J

.field private o:Lcom/ss/android/socialbase/downloader/d/l;

.field private p:Lcom/ss/android/socialbase/downloader/d/x;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/socialbase/downloader/g/d;Landroid/os/Handler;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->i:Z

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->j:J

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 63
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->l:Z

    .line 72
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/g/d;

    .line 73
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->j()V

    .line 74
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Landroid/os/Handler;

    .line 75
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/downloader/e;)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    return-object v0
.end method

.method private a(ILcom/ss/android/socialbase/downloader/e/a;)V
    .registers 4

    .prologue
    .line 397
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/e/a;Z)V

    .line 398
    return-void
.end method

.method private a(ILcom/ss/android/socialbase/downloader/e/a;Z)V
    .registers 11

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v6, -0x3

    const/4 v1, 0x0

    .line 410
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v3

    .line 411
    if-ne v3, v6, :cond_f

    if-ne p1, v4, :cond_f

    .line 478
    :cond_e
    :goto_e
    return-void

    .line 414
    :cond_f
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->j()V

    .line 416
    if-eq p1, v4, :cond_2a

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/b/f;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 417
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->e(Z)V

    .line 418
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/b/f;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 419
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->P()V

    .line 424
    :cond_2a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->p:Lcom/ss/android/socialbase/downloader/d/x;

    if-eqz v0, :cond_10f

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->p:Lcom/ss/android/socialbase/downloader/d/x;

    instance-of v0, v0, Lcom/ss/android/socialbase/downloader/d/c;

    if-eqz v0, :cond_10f

    .line 425
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->p:Lcom/ss/android/socialbase/downloader/d/x;

    check-cast v0, Lcom/ss/android/socialbase/downloader/d/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/d/c;->a()[I

    move-result-object v4

    .line 426
    if-eqz v4, :cond_10f

    array-length v0, v4

    if-lez v0, :cond_10f

    move v0, v1

    .line 427
    :goto_42
    array-length v5, v4

    if-ge v0, v5, :cond_10f

    .line 428
    aget v5, v4, v0

    if-ne p1, v5, :cond_e6

    move v0, v2

    .line 436
    :goto_4a
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/b/f;->c(I)Z

    move-result v4

    if-nez v4, :cond_52

    if-eqz v0, :cond_64

    .line 438
    :cond_52
    :try_start_52
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:Lcom/ss/android/socialbase/downloader/d/l;

    if-eqz v0, :cond_5d

    .line 439
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:Lcom/ss/android/socialbase/downloader/d/l;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v4, p2, p1}, Lcom/ss/android/socialbase/downloader/d/l;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_5d} :catch_10c

    .line 443
    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->p:Lcom/ss/android/socialbase/downloader/d/x;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-static {v0, v4, p2, p1}, Lcom/ss/android/socialbase/downloader/h/a;->a(Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    .line 446
    :cond_64
    const/4 v0, 0x6

    if-ne p1, v0, :cond_ea

    .line 447
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 453
    :goto_6d
    if-eq v3, v6, :cond_72

    const/4 v0, -0x1

    if-ne v3, v0, :cond_a5

    .line 454
    :cond_72
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aq()Lcom/ss/android/socialbase/downloader/b/j;

    move-result-object v0

    sget-object v3, Lcom/ss/android/socialbase/downloader/b/j;->c:Lcom/ss/android/socialbase/downloader/b/j;

    if-ne v0, v3, :cond_83

    .line 455
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    sget-object v3, Lcom/ss/android/socialbase/downloader/b/j;->d:Lcom/ss/android/socialbase/downloader/b/j;

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/b/j;)V

    .line 457
    :cond_83
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ar()Lcom/ss/android/socialbase/downloader/b/a;

    move-result-object v0

    sget-object v3, Lcom/ss/android/socialbase/downloader/b/a;->d:Lcom/ss/android/socialbase/downloader/b/a;

    if-ne v0, v3, :cond_94

    .line 458
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    sget-object v3, Lcom/ss/android/socialbase/downloader/b/a;->e:Lcom/ss/android/socialbase/downloader/b/a;

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/b/a;)V

    .line 460
    :cond_94
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aa()Lcom/ss/android/socialbase/downloader/b/b;

    move-result-object v0

    sget-object v3, Lcom/ss/android/socialbase/downloader/b/b;->c:Lcom/ss/android/socialbase/downloader/b/b;

    if-ne v0, v3, :cond_a5

    .line 461
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    sget-object v3, Lcom/ss/android/socialbase/downloader/b/b;->d:Lcom/ss/android/socialbase/downloader/b/b;

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/b/b;)V

    .line 465
    :cond_a5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->g:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-static {p1, v0, v2, v3, p2}, Lcom/ss/android/socialbase/downloader/m/e;->a(ILandroid/util/SparseArray;ZLcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 467
    const/4 v0, -0x4

    if-eq p1, v0, :cond_e

    .line 471
    if-eqz p3, :cond_fb

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_d1

    :cond_bd
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Landroid/util/SparseArray;

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_fb

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->af()Z

    move-result v0

    if-eqz v0, :cond_fb

    :cond_d1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Landroid/os/Handler;

    if-eqz v0, :cond_fb

    .line 472
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    invoke-virtual {v0, p1, v2, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_e

    .line 427
    :cond_e6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_42

    .line 448
    :cond_ea
    const/4 v0, -0x6

    if-ne p1, v0, :cond_f4

    .line 449
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0, v6}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    goto/16 :goto_6d

    .line 451
    :cond_f4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    goto/16 :goto_6d

    .line 474
    :cond_fb
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_e

    .line 476
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(II)V

    goto/16 :goto_e

    .line 441
    :catch_10c
    move-exception v0

    goto/16 :goto_5d

    :cond_10f
    move v0, v1

    goto/16 :goto_4a
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/downloader/e;ILcom/ss/android/socialbase/downloader/e/a;)V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/e/a;)V

    return-void
.end method

.method private a(JZ)Z
    .registers 11

    .prologue
    const/4 v6, 0x4

    const/4 v0, 0x0

    .line 348
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v2

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_29

    .line 350
    :try_start_12
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_24

    .line 364
    :goto_23
    return v0

    .line 351
    :catch_24
    move-exception v1

    .line 352
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    .line 357
    :cond_29
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->i:Z

    if-eqz v1, :cond_34

    .line 358
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->i:Z

    .line 359
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1, v6}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 362
    :cond_34
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->aE()Z

    move-result v2

    if-eqz v2, :cond_40

    if-eqz p3, :cond_40

    const/4 v0, 0x1

    :cond_40
    invoke-direct {p0, v6, v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/e/a;Z)V

    move v0, p3

    .line 364
    goto :goto_23
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/downloader/e;)Lcom/ss/android/socialbase/downloader/downloader/k;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    return-object v0
.end method

.method private b(Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 6

    .prologue
    .line 194
    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/e/a;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/e/a;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_4a

    .line 196
    :try_start_10
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->f(I)Z
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_1b} :catch_45

    .line 213
    :goto_1b
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/e;->c(Lcom/ss/android/socialbase/downloader/e/a;)Lcom/ss/android/socialbase/downloader/e/a;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 216
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/e/a;)V

    .line 218
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    const-string v1, "retry_schedule"

    const/4 v2, 0x0

    .line 219
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_44

    .line 220
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/r;->a()Lcom/ss/android/socialbase/downloader/impls/r;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 222
    :cond_44
    return-void

    .line 197
    :catch_45
    move-exception v0

    .line 198
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_1b

    .line 202
    :cond_4a
    :try_start_4a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_5b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4a .. :try_end_5b} :catch_5c

    goto :goto_1b

    .line 203
    :catch_5c
    move-exception v0

    .line 205
    :try_start_5d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->f(I)Z
    :try_end_68
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5d .. :try_end_68} :catch_69

    goto :goto_1b

    .line 206
    :catch_69
    move-exception v0

    .line 207
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_1b
.end method

.method private b(Lcom/ss/android/socialbase/downloader/e/a;Z)V
    .registers 5

    .prologue
    .line 392
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    .line 393
    if-eqz p2, :cond_12

    const/4 v0, 0x7

    :goto_e
    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/e/a;)V

    .line 394
    return-void

    .line 393
    :cond_12
    const/4 v0, 0x5

    goto :goto_e
.end method

.method private b(J)Z
    .registers 12

    .prologue
    const/4 v0, 0x1

    .line 368
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->l:Z

    if-nez v1, :cond_8

    .line 369
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->l:Z

    .line 379
    :cond_7
    :goto_7
    return v0

    .line 372
    :cond_8
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->j:J

    sub-long v2, p1, v2

    .line 374
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->n:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_1f

    iget v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->m:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2b

    .line 375
    :cond_1f
    :goto_1f
    if-eqz v0, :cond_7

    .line 376
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->j:J

    .line 377
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->k:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_7

    .line 374
    :cond_2b
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private c(Lcom/ss/android/socialbase/downloader/e/a;)Lcom/ss/android/socialbase/downloader/e/a;
    .registers 5

    .prologue
    .line 225
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    const-string v1, "download_failed_check_net"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3a

    .line 227
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/m/f;->h(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 228
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_3a

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 230
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    .line 231
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->x()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/16 v0, 0x3f5

    .line 232
    :goto_32
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/e/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    move-object p1, v1

    .line 236
    :cond_3a
    return-object p1

    .line 231
    :cond_3b
    const/16 v0, 0x419

    goto :goto_32
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/downloader/e;)V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->l()V

    return-void
.end method

.method static synthetic i()Ljava/lang/String;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/g/d;

    if-eqz v0, :cond_3a

    .line 80
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    .line 81
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/g/d;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/h;->a:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/b/h;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Landroid/util/SparseArray;

    .line 82
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/g/d;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/h;->c:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/b/h;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Landroid/util/SparseArray;

    .line 83
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/g/d;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/h;->b:Lcom/ss/android/socialbase/downloader/b/h;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/b/h;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->g:Landroid/util/SparseArray;

    .line 84
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->d()Lcom/ss/android/socialbase/downloader/d/l;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:Lcom/ss/android/socialbase/downloader/d/l;

    .line 85
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->e()Lcom/ss/android/socialbase/downloader/d/x;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->p:Lcom/ss/android/socialbase/downloader/d/x;

    .line 87
    :cond_3a
    return-void
.end method

.method private k()V
    .registers 3

    .prologue
    .line 97
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_e

    .line 99
    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/e$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/downloader/e$1;-><init>(Lcom/ss/android/socialbase/downloader/downloader/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 107
    :cond_e
    return-void
.end method

.method private l()V
    .registers 5

    .prologue
    .line 298
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    const-string v1, "saveFileAsTargetName onSuccess"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aS()Lcom/ss/android/socialbase/downloader/b/i;

    move-result-object v1

    .line 301
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/i;->a:Lcom/ss/android/socialbase/downloader/b/i;

    if-eq v1, v0, :cond_37

    .line 302
    const-string v0, ""

    .line 303
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/i;->b:Lcom/ss/android/socialbase/downloader/b/i;

    if-ne v1, v2, :cond_29

    .line 304
    const-string v0, "md5 invalid because of file not exist"

    .line 309
    :cond_19
    :goto_19
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x40a

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 310
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 324
    :goto_28
    return-void

    .line 305
    :cond_29
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/i;->c:Lcom/ss/android/socialbase/downloader/b/i;

    if-ne v1, v2, :cond_30

    .line 306
    const-string v0, "md5 invalid because of file md5 is empty"

    goto :goto_19

    .line 307
    :cond_30
    sget-object v2, Lcom/ss/android/socialbase/downloader/b/i;->d:Lcom/ss/android/socialbase/downloader/b/i;

    if-ne v1, v2, :cond_19

    .line 308
    const-string v0, "md5 invalid because of file md5 is not equals to task md5"

    goto :goto_19

    .line 314
    :cond_37
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->g(Z)V

    .line 316
    const/4 v0, -0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/e/a;)V

    .line 318
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(IJ)Lcom/ss/android/socialbase/downloader/g/c;

    .line 320
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->d(I)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5e} :catch_5f

    goto :goto_28

    .line 321
    :catch_5f
    move-exception v0

    .line 322
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x3f0

    const-string v3, "onCompleted"

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_28
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->as()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 94
    :goto_8
    return-void

    .line 92
    :cond_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 93
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->k()V

    goto :goto_8
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/g/c;->c(J)V

    .line 122
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0, p3}, Lcom/ss/android/socialbase/downloader/g/c;->b(Ljava/lang/String;)V

    .line 123
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 124
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0, p4}, Lcom/ss/android/socialbase/downloader/g/c;->c(Ljava/lang/String;)V

    .line 127
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2f} :catch_4f

    .line 132
    :goto_2f
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/e/a;)V

    .line 135
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/g/c;->d(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->n:J

    .line 136
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aG()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->m:I

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->i:Z

    .line 140
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/r;->a()Lcom/ss/android/socialbase/downloader/impls/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/r;->e()V

    .line 141
    return-void

    .line 128
    :catch_4f
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method

.method public a(Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->f(Z)V

    .line 190
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/e;->b(Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 191
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/e/a;Z)V
    .registers 7

    .prologue
    .line 176
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->f(Z)V

    .line 177
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->k:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/e;->b(Lcom/ss/android/socialbase/downloader/e/a;Z)V

    .line 179
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/b;Lcom/ss/android/socialbase/downloader/e/a;Z)V
    .registers 8

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->f(Z)V

    .line 183
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->k:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 184
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    .line 185
    if-eqz p3, :cond_21

    const/16 v0, 0xa

    :goto_1c
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/e/a;Z)V

    .line 186
    return-void

    .line 185
    :cond_21
    const/16 v0, 0x9

    goto :goto_1c
.end method

.method public a(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x3

    .line 334
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompleteForFileExist existTargetFileName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but curName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/16 v0, 0x4000

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v0

    .line 336
    if-eqz v0, :cond_42

    .line 337
    invoke-direct {p0, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/e/a;)V

    .line 338
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    .line 339
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V

    .line 345
    :goto_41
    return-void

    .line 341
    :cond_42
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    .line 342
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V

    .line 343
    invoke-direct {p0, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_41
.end method

.method public a(J)Z
    .registers 6

    .prologue
    .line 144
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 145
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/g/c;->b(J)V

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 147
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->b(J)Z

    move-result v2

    .line 148
    invoke-direct {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(JZ)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->as()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 111
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->at()V

    .line 118
    :goto_e
    return-void

    .line 114
    :cond_f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->g(I)Lcom/ss/android/socialbase/downloader/g/c;

    .line 115
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aR()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 116
    const/4 v0, 0x6

    invoke-direct {p0, v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/e/a;)V

    .line 117
    :cond_26
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_e
.end method

.method public c()V
    .registers 3

    .prologue
    .line 152
    const/4 v0, -0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/e/a;)V

    .line 153
    return-void
.end method

.method public d()V
    .registers 6

    .prologue
    const/4 v4, -0x2

    .line 156
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 158
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/k;->d(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_17} :catch_1c

    .line 162
    :goto_17
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/e/a;)V

    .line 163
    return-void

    .line 159
    :catch_1c
    move-exception v0

    .line 160
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_17
.end method

.method public e()V
    .registers 4

    .prologue
    const/4 v2, -0x7

    .line 166
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 168
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->j(I)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_11} :catch_16

    .line 172
    :goto_11
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/e/a;)V

    .line 173
    return-void

    .line 169
    :catch_16
    move-exception v0

    .line 170
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_11
.end method

.method public f()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 241
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->f(Z)V

    .line 242
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->V()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4f

    .line 243
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/f;

    const/16 v1, 0x403

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current bytes is not equals to total bytes, bytes changed with process : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->aa()Lcom/ss/android/socialbase/downloader/b/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 293
    :goto_4e
    return-void

    .line 246
    :cond_4f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_88

    .line 247
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/f;

    const/16 v1, 0x402

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curBytes is 0, bytes changed with process : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->aa()Lcom/ss/android/socialbase/downloader/b/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_4e

    .line 250
    :cond_88
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->V()Z

    move-result v0

    if-nez v0, :cond_c9

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_c9

    .line 251
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/f;

    const/16 v1, 0x414

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TotalBytes is 0, bytes changed with process : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->aa()Lcom/ss/android/socialbase/downloader/b/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_4e

    .line 256
    :cond_c9
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCompleted start save file as target name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->p:Lcom/ss/android/socialbase/downloader/d/x;

    .line 259
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/g/d;

    if-eqz v1, :cond_f9

    .line 260
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/g/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/d;->e()Lcom/ss/android/socialbase/downloader/d/x;

    move-result-object v0

    .line 263
    :cond_f9
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->W()Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 264
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    new-instance v2, Lcom/ss/android/socialbase/downloader/downloader/e$2;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/downloader/downloader/e$2;-><init>(Lcom/ss/android/socialbase/downloader/downloader/e;)V

    invoke-static {v1, v0, v2}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/d/ae;)V

    goto/16 :goto_4e

    .line 278
    :cond_10d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/e$3;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/downloader/e$3;-><init>(Lcom/ss/android/socialbase/downloader/downloader/e;)V

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/d/ae;)V

    goto/16 :goto_4e
.end method

.method public g()V
    .registers 5

    .prologue
    .line 327
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Ljava/lang/String;

    const-string v1, "onCompleteForFileExist"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/4 v0, -0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILcom/ss/android/socialbase/downloader/e/a;)V

    .line 329
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(IJ)Lcom/ss/android/socialbase/downloader/g/c;

    .line 330
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->d(I)V

    .line 331
    return-void
.end method

.method public h()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 401
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/g/c;->b(I)V

    .line 402
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/b/a;->b:Lcom/ss/android/socialbase/downloader/b/a;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/c;->a(Lcom/ss/android/socialbase/downloader/b/a;)V

    .line 403
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_1d

    .line 405
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(II)V

    .line 407
    :cond_1d
    return-void
.end method
