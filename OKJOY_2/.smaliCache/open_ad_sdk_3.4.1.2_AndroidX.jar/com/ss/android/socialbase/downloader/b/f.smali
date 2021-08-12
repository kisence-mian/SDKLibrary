.class public Lcom/ss/android/socialbase/downloader/b/f;
.super Ljava/lang/Object;
.source "SqlDownloadCacheAidlWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/ss/android/socialbase/downloader/downloader/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/b/f$a;
    }
.end annotation


# static fields
.field private static b:Z

.field private static c:I

.field private static d:J


# instance fields
.field private a:Lcom/ss/android/socialbase/downloader/b/c;

.field private e:Landroid/os/Handler;

.field private f:Lcom/ss/android/socialbase/downloader/b/b;

.field private g:Lcom/ss/android/socialbase/downloader/b/f$a;

.field private h:Ljava/lang/Runnable;

.field private i:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ss/android/socialbase/downloader/b/f;->d:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->e:Landroid/os/Handler;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->f:Lcom/ss/android/socialbase/downloader/b/b;

    .line 50
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/f$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/b/f$1;-><init>(Lcom/ss/android/socialbase/downloader/b/f;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->h:Ljava/lang/Runnable;

    .line 64
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->j:Ljava/util/concurrent/CountDownLatch;

    .line 67
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/f;)Lcom/ss/android/socialbase/downloader/b/f$a;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/b/f;->g:Lcom/ss/android/socialbase/downloader/b/f$a;

    return-object p0
.end method

.method static synthetic a(Z)Z
    .registers 1

    .line 34
    sput-boolean p0, Lcom/ss/android/socialbase/downloader/b/f;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/b/f;)Lcom/ss/android/socialbase/downloader/b/b;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/b/f;->f:Lcom/ss/android/socialbase/downloader/b/b;

    return-object p0
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/b/f;)Lcom/ss/android/socialbase/downloader/b/c;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    return-object p0
.end method

.method static synthetic d(Lcom/ss/android/socialbase/downloader/b/f;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/b/f;->j:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic e()Z
    .registers 1

    .line 34
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/b/f;->b:Z

    return v0
.end method

.method static synthetic e(Lcom/ss/android/socialbase/downloader/b/f;)Z
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/f;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/ss/android/socialbase/downloader/b/f;)Ljava/lang/Runnable;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/b/f;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method private f()Z
    .registers 11

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_8

    .line 128
    return v1

    .line 130
    :cond_8
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/b/f;->b:Z

    if-eqz v0, :cond_d

    .line 131
    return v1

    .line 133
    :cond_d
    sget v0, Lcom/ss/android/socialbase/downloader/b/f;->c:I

    const/4 v2, 0x5

    const-string v3, "SqlDownloadCacheAidlWra"

    if-le v0, v2, :cond_1a

    .line 134
    const-string v0, "bindMainProcess: bind too many times!!! "

    invoke-static {v3, v0}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return v1

    .line 137
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 138
    sget-wide v6, Lcom/ss/android/socialbase/downloader/b/f;->d:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3a98

    cmp-long v0, v6, v8

    if-gez v0, :cond_2e

    .line 139
    const-string v0, "bindMainProcess: time too short since last bind!!! "

    invoke-static {v3, v0}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return v1

    .line 142
    :cond_2e
    sget v0, Lcom/ss/android/socialbase/downloader/b/f;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/ss/android/socialbase/downloader/b/f;->c:I

    .line 143
    sput-wide v4, Lcom/ss/android/socialbase/downloader/b/f;->d:J

    .line 144
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->e:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/socialbase/downloader/b/f$3;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/downloader/b/f$3;-><init>(Lcom/ss/android/socialbase/downloader/b/f;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    return v1
.end method

.method static synthetic g(Lcom/ss/android/socialbase/downloader/b/f;)Landroid/os/Handler;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/b/f;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcom/ss/android/socialbase/downloader/b/f;)Ljava/util/concurrent/Future;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/b/f;->i:Ljava/util/concurrent/Future;

    return-object p0
.end method


# virtual methods
.method public a(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 4

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 372
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/c;->a(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return-object p1

    .line 376
    :cond_9
    goto :goto_e

    .line 374
    :catch_a
    move-exception p1

    .line 375
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 377
    :goto_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 5

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 455
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/b/c;->a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return-object p1

    .line 459
    :cond_9
    goto :goto_e

    .line 457
    :catch_a
    move-exception p1

    .line 458
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 460
    :goto_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 12

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_d

    .line 443
    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/b/c;->a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return-object p1

    .line 447
    :cond_d
    goto :goto_12

    .line 445
    :catch_e
    move-exception p1

    .line 446
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 448
    :goto_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation

    .line 607
    const/4 p1, 0x0

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

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 246
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return-object p1

    .line 250
    :cond_9
    goto :goto_e

    .line 248
    :catch_a
    move-exception p1

    .line 249
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 251
    :goto_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .registers 2

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_7

    .line 211
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/b/c;->a()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 215
    :cond_7
    goto :goto_c

    .line 213
    :catch_8
    move-exception v0

    .line 214
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 216
    :goto_c
    return-void
.end method

.method public a(IIII)V
    .registers 6

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_7

    .line 361
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/b/c;->a(IIII)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 365
    :cond_7
    goto :goto_c

    .line 363
    :catch_8
    move-exception p1

    .line 364
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 366
    :goto_c
    return-void
.end method

.method public a(IIIJ)V
    .registers 12

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_b

    .line 350
    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/b/c;->a(IIIJ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 354
    :cond_b
    goto :goto_10

    .line 352
    :catch_c
    move-exception p1

    .line 353
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 355
    :goto_10
    return-void
.end method

.method public a(IIJ)V
    .registers 6

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_7

    .line 339
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/b/c;->a(IIJ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 343
    :cond_7
    goto :goto_c

    .line 341
    :catch_8
    move-exception p1

    .line 342
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 344
    :goto_c
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

    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_7

    .line 586
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/c;->a(ILjava/util/List;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 590
    :cond_7
    goto :goto_c

    .line 588
    :catch_8
    move-exception p1

    .line 589
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 591
    :goto_c
    return-void
.end method

.method public a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/b/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;>;",
            "Lcom/ss/android/socialbase/downloader/b/d;",
            ")V"
        }
    .end annotation

    .line 155
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/b/f$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/b/f$4;-><init>(Lcom/ss/android/socialbase/downloader/b/f;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/b/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 190
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/b/b;)V
    .registers 3

    .line 194
    monitor-enter p0

    .line 195
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-eqz v0, :cond_e

    .line 197
    :try_start_5
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->a(Lcom/ss/android/socialbase/downloader/b/b;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_12

    .line 200
    :goto_8
    goto :goto_10

    .line 198
    :catch_9
    move-exception p1

    .line 199
    :try_start_a
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8

    .line 202
    :cond_e
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/f;->f:Lcom/ss/android/socialbase/downloader/b/b;

    .line 204
    :goto_10
    monitor-exit p0

    .line 205
    return-void

    .line 204
    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/b/f$a;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/f;->g:Lcom/ss/android/socialbase/downloader/b/f$a;

    .line 72
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/b;)V
    .registers 3

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_7

    .line 317
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->a(Lcom/ss/android/socialbase/downloader/model/b;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 321
    :cond_7
    goto :goto_c

    .line 319
    :catch_8
    move-exception p1

    .line 320
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 322
    :goto_c
    return-void
.end method

.method public a(ILjava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)Z"
        }
    .end annotation

    .line 617
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 384
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return p1

    .line 388
    :cond_9
    goto :goto_e

    .line 386
    :catch_a
    move-exception p1

    .line 387
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 389
    :goto_e
    const/4 p1, 0x0

    return p1
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 234
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return-object p1

    .line 238
    :cond_9
    goto :goto_e

    .line 236
    :catch_a
    move-exception p1

    .line 237
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 239
    :goto_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 5

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 467
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/b/c;->b(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return-object p1

    .line 471
    :cond_9
    goto :goto_e

    .line 469
    :catch_a
    move-exception p1

    .line 470
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 472
    :goto_e
    const/4 p1, 0x0

    return-object p1
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

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 258
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return-object p1

    .line 262
    :cond_9
    goto :goto_e

    .line 260
    :catch_a
    move-exception p1

    .line 261
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 263
    :goto_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()V
    .registers 2

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_7

    .line 420
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/b/c;->b()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 424
    :cond_7
    goto :goto_c

    .line 422
    :catch_8
    move-exception v0

    .line 423
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 425
    :goto_c
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

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_7

    .line 597
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/c;->b(ILjava/util/List;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 601
    :cond_7
    goto :goto_c

    .line 599
    :catch_8
    move-exception p1

    .line 600
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 602
    :goto_c
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_7

    .line 575
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 579
    :cond_7
    goto :goto_c

    .line 577
    :catch_8
    move-exception p1

    .line 578
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 580
    :goto_c
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/b;)V
    .registers 3

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_7

    .line 328
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->b(Lcom/ss/android/socialbase/downloader/model/b;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 332
    :cond_7
    goto :goto_c

    .line 330
    :catch_8
    move-exception p1

    .line 331
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 333
    :goto_c
    return-void
.end method

.method public c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 5

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 491
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/b/c;->c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return-object p1

    .line 495
    :cond_9
    goto :goto_e

    .line 493
    :catch_a
    move-exception p1

    .line 494
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 496
    :goto_e
    const/4 p1, 0x0

    return-object p1
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

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 294
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->c(I)Ljava/util/List;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return-object p1

    .line 298
    :cond_9
    goto :goto_e

    .line 296
    :catch_a
    move-exception p1

    .line 297
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 299
    :goto_e
    const/4 p1, 0x0

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

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 270
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return-object p1

    .line 274
    :cond_9
    goto :goto_e

    .line 272
    :catch_a
    move-exception p1

    .line 273
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 275
    :goto_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Z
    .registers 2

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 551
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/b/c;->c()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return v0

    .line 555
    :cond_9
    goto :goto_e

    .line 553
    :catch_a
    move-exception v0

    .line 554
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 556
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method public d(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 5

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 503
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/b/c;->d(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return-object p1

    .line 507
    :cond_9
    goto :goto_e

    .line 505
    :catch_a
    move-exception p1

    .line 506
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 508
    :goto_e
    const/4 p1, 0x0

    return-object p1
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

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 282
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return-object p1

    .line 286
    :cond_9
    goto :goto_e

    .line 284
    :catch_a
    move-exception p1

    .line 285
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 287
    :goto_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)V
    .registers 3

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_7

    .line 306
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->d(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 310
    :cond_7
    goto :goto_c

    .line 308
    :catch_8
    move-exception p1

    .line 309
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 311
    :goto_c
    return-void
.end method

.method public d()Z
    .registers 2

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 563
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/b/c;->d()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return v0

    .line 567
    :cond_9
    goto :goto_e

    .line 565
    :catch_a
    move-exception v0

    .line 566
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 568
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method public e(I)Z
    .registers 3

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 396
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->e(I)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return p1

    .line 400
    :cond_9
    goto :goto_e

    .line 398
    :catch_a
    move-exception p1

    .line 399
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 401
    :goto_e
    const/4 p1, 0x0

    return p1
.end method

.method public f(I)Z
    .registers 3

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 408
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->f(I)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return p1

    .line 412
    :cond_9
    goto :goto_e

    .line 410
    :catch_a
    move-exception p1

    .line 411
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 413
    :goto_e
    const/4 p1, 0x0

    return p1
.end method

.method public g(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 431
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->g(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return-object p1

    .line 435
    :cond_9
    goto :goto_e

    .line 433
    :catch_a
    move-exception p1

    .line 434
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 436
    :goto_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 479
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return-object p1

    .line 483
    :cond_9
    goto :goto_e

    .line 481
    :catch_a
    move-exception p1

    .line 482
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 484
    :goto_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public i(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 527
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->i(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return-object p1

    .line 531
    :cond_9
    goto :goto_e

    .line 529
    :catch_a
    move-exception p1

    .line 530
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 532
    :goto_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public j(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_9

    .line 539
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->j(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return-object p1

    .line 543
    :cond_9
    goto :goto_e

    .line 541
    :catch_a
    move-exception p1

    .line 542
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 544
    :goto_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public l(I)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation

    .line 612
    const/4 p1, 0x0

    return-object p1
.end method

.method public m(I)V
    .registers 2

    .line 623
    return-void
.end method

.method public synthetic n(I)Ljava/util/List;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/f;->a(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 76
    const/4 p1, 0x1

    sput-boolean p1, Lcom/ss/android/socialbase/downloader/b/f;->b:Z

    .line 77
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/b/f;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    :try_start_a
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/b/c$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_11

    .line 82
    goto :goto_15

    .line 80
    :catchall_11
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    :goto_15
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/ss/android/socialbase/downloader/b/f$2;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/socialbase/downloader/b/f$2;-><init>(Lcom/ss/android/socialbase/downloader/b/f;Landroid/os/IBinder;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/f;->i:Ljava/util/concurrent/Future;

    .line 118
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 122
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    .line 123
    const/4 p1, 0x0

    sput-boolean p1, Lcom/ss/android/socialbase/downloader/b/f;->b:Z

    .line 124
    return-void
.end method
