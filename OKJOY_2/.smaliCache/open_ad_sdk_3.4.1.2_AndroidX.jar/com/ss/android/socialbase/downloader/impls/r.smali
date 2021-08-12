.class public Lcom/ss/android/socialbase/downloader/impls/r;
.super Ljava/lang/Object;
.source "RetryScheduler.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/ss/android/socialbase/downloader/a/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/impls/r$a;,
        Lcom/ss/android/socialbase/downloader/impls/r$b;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/ss/android/socialbase/downloader/impls/r;

.field private static i:Lcom/ss/android/socialbase/downloader/impls/r$b;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/impls/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z

.field private f:J

.field private g:I

.field private h:Landroid/net/ConnectivityManager;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->c:Landroid/os/Handler;

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    .line 127
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->b:Landroid/content/Context;

    .line 128
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/r;->f()V

    .line 129
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->e:Z

    .line 130
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    .line 131
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/r;)Landroid/content/Context;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/r;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/r;->h:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/impls/r;
    .registers 2

    .line 134
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/r;->a:Lcom/ss/android/socialbase/downloader/impls/r;

    if-nez v0, :cond_17

    .line 135
    const-class v0, Lcom/ss/android/socialbase/downloader/impls/r;

    monitor-enter v0

    .line 136
    :try_start_7
    sget-object v1, Lcom/ss/android/socialbase/downloader/impls/r;->a:Lcom/ss/android/socialbase/downloader/impls/r;

    if-nez v1, :cond_12

    .line 137
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/r;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/impls/r;->a:Lcom/ss/android/socialbase/downloader/impls/r;

    .line 139
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 141
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/r;->a:Lcom/ss/android/socialbase/downloader/impls/r;

    return-object v0
.end method

.method private a(IIZ)V
    .registers 12

    .line 374
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->b:Landroid/content/Context;

    .line 375
    if-nez v0, :cond_5

    .line 376
    return-void

    .line 379
    :cond_5
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    monitor-enter v1

    .line 380
    :try_start_8
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/impls/r$a;

    .line 381
    if-nez v2, :cond_14

    .line 382
    monitor-exit v1

    return-void

    .line 384
    :cond_14
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/impls/r$a;->b(Lcom/ss/android/socialbase/downloader/impls/r$a;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_28

    .line 385
    invoke-static {v2, v5}, Lcom/ss/android/socialbase/downloader/impls/r$a;->b(Lcom/ss/android/socialbase/downloader/impls/r$a;Z)Z

    .line 386
    iget v3, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    .line 387
    if-gez v3, :cond_28

    .line 388
    iput v5, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    .line 391
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_13f

    .line 392
    const-string v1, "RetryScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSchedulerRetryInSubThread: downloadId = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", retryCount = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 393
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a(Lcom/ss/android/socialbase/downloader/impls/r$a;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mWaitingRetryTasksCount = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 392
    invoke-static {v1, v3}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    .line 396
    if-nez v1, :cond_69

    .line 398
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/r;->c(I)V

    .line 399
    return-void

    .line 401
    :cond_69
    const-string v3, "RetryScheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doSchedulerRetryInSubThread\uff0cid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v3

    .line 404
    const/4 v6, -0x3

    if-eq v3, v6, :cond_13b

    const/4 v6, -0x4

    if-ne v3, v6, :cond_8d

    goto/16 :goto_13b

    .line 410
    :cond_8d
    const/4 v6, -0x5

    const/4 v7, -0x2

    if-eq v3, v6, :cond_115

    if-ne v3, v7, :cond_9b

    .line 411
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v6

    if-eqz v6, :cond_9b

    goto/16 :goto_115

    .line 429
    :cond_9b
    const/4 p1, -0x1

    if-eq v3, p1, :cond_9f

    .line 431
    return-void

    .line 435
    :cond_9f
    nop

    .line 436
    if-nez p2, :cond_a9

    .line 437
    iget-boolean v3, v2, Lcom/ss/android/socialbase/downloader/impls/r$a;->f:Z

    if-eqz v3, :cond_a8

    .line 439
    move v3, v5

    goto :goto_aa

    .line 442
    :cond_a8
    return-void

    .line 436
    :cond_a9
    move v3, v4

    .line 446
    :goto_aa
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getFailedException()Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-result-object v6

    .line 447
    if-eqz v3, :cond_ba

    invoke-static {v6}, Lcom/ss/android/socialbase/downloader/i/e;->g(Ljava/lang/Throwable;)Z

    move-result v7

    if-eqz v7, :cond_ba

    .line 448
    invoke-direct {p0, v1, v6}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result v3

    .line 451
    :cond_ba
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/impls/r$a;->b()V

    .line 452
    if-eqz v3, :cond_fe

    .line 453
    const-string p2, "RetryScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doSchedulerRetry: restart task, ****** id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/ss/android/socialbase/downloader/impls/r$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a(J)V

    .line 455
    if-eqz p3, :cond_e5

    .line 456
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a()V

    .line 458
    :cond_e5
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a(Lcom/ss/android/socialbase/downloader/impls/r$a;)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setRetryScheduleCount(I)V

    .line 459
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p2

    if-ne p2, p1, :cond_114

    .line 461
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->restart(I)V

    goto :goto_114

    .line 465
    :cond_fe
    if-eqz p3, :cond_103

    .line 466
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a()V

    .line 468
    :cond_103
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result p1

    if-nez p1, :cond_111

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result p1

    if-eqz p1, :cond_110

    goto :goto_111

    :cond_110
    move v4, v5

    .line 469
    :cond_111
    :goto_111
    invoke-direct {p0, v1, v4, p2}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V

    .line 471
    :cond_114
    :goto_114
    return-void

    .line 413
    :cond_115
    :goto_115
    const/4 p2, 0x3

    if-ne v3, v7, :cond_12a

    .line 414
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getReserveWifiStatusListener()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object p3

    .line 415
    if-eqz p3, :cond_12a

    .line 416
    const/4 v0, 0x4

    invoke-interface {p3, v1, v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;II)V

    .line 420
    :cond_12a
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->w()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object p3

    .line 421
    if-eqz p3, :cond_137

    .line 422
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Ljava/util/List;I)V

    .line 424
    :cond_137
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/r;->c(I)V

    .line 425
    return-void

    .line 407
    :cond_13b
    :goto_13b
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/r;->c(I)V

    .line 408
    return-void

    .line 391
    :catchall_13f
    move-exception p1

    :try_start_140
    monitor-exit v1
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_13f

    throw p1
.end method

.method private a(IZ)V
    .registers 9

    .line 293
    iget v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    if-gtz v0, :cond_5

    .line 295
    return-void

    .line 297
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 298
    monitor-enter p0

    .line 299
    if-nez p2, :cond_18

    :try_start_c
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/impls/r;->f:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_18

    .line 301
    monitor-exit p0

    return-void

    .line 303
    :cond_18
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->f:J

    .line 304
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_5d

    .line 305
    const-string v0, "RetryScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleAllTaskRetry, level = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], force = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    if-eqz p2, :cond_4b

    .line 307
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    :cond_4b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 310
    iput v0, v1, Landroid/os/Message;->what:I

    .line 311
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 312
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 313
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/r;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 314
    return-void

    .line 304
    :catchall_5d
    move-exception p1

    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p1
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/impls/r$b;)V
    .registers 1

    .line 145
    sput-object p0, Lcom/ss/android/socialbase/downloader/impls/r;->i:Lcom/ss/android/socialbase/downloader/impls/r$b;

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/r;IIZ)V
    .registers 4

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/r;->a(IIZ)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/r;IZ)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/r;->a(IZ)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V
    .registers 13

    .line 189
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getFailedException()Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-result-object v0

    .line 190
    if-nez v0, :cond_7

    .line 191
    return-void

    .line 194
    :cond_7
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ss/android/socialbase/downloader/impls/r;->b(I)Lcom/ss/android/socialbase/downloader/impls/r$a;

    move-result-object v1

    .line 195
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a(Lcom/ss/android/socialbase/downloader/impls/r$a;)I

    move-result v2

    iget v3, v1, Lcom/ss/android/socialbase/downloader/impls/r$a;->c:I

    if-le v2, v3, :cond_4c

    .line 196
    const-string p1, "RetryScheduler"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "tryStartScheduleRetry, id = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, v1, Lcom/ss/android/socialbase/downloader/impls/r$a;->a:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", mRetryCount = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 197
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a(Lcom/ss/android/socialbase/downloader/impls/r$a;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", maxCount = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, v1, Lcom/ss/android/socialbase/downloader/impls/r$a;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 196
    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void

    .line 201
    :cond_4c
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v2

    .line 202
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->g(Ljava/lang/Throwable;)Z

    move-result v3

    .line 203
    if-nez v3, :cond_93

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->h(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 205
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->statusInPause()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 206
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v0

    if-nez v0, :cond_93

    .line 208
    :cond_68
    invoke-direct {p0, v1, v2}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/impls/r$a;I)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 210
    return-void

    .line 212
    :cond_6f
    const-string v0, "RetryScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allow error code, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/ss/android/socialbase/downloader/impls/r$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_93
    invoke-static {v1, p2}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a(Lcom/ss/android/socialbase/downloader/impls/r$a;Z)Z

    .line 216
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    monitor-enter v0

    .line 217
    :try_start_99
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/r$a;->b(Lcom/ss/android/socialbase/downloader/impls/r$a;)Z

    move-result v2

    if-nez v2, :cond_a8

    .line 218
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/impls/r$a;->b(Lcom/ss/android/socialbase/downloader/impls/r$a;Z)Z

    .line 219
    iget v3, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    .line 221
    :cond_a8
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_99 .. :try_end_a9} :catchall_11a

    .line 223
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/r$a;->d()I

    move-result v0

    .line 224
    const-string v2, "RetryScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryStartScheduleRetry: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/ss/android/socialbase/downloader/impls/r$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", delayTimeMills = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWaitingRetryTasks = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/impls/r$a;->f:Z

    if-eqz v2, :cond_103

    .line 229
    if-nez p3, :cond_e6

    .line 231
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/r$a;->c()V

    .line 233
    :cond_e6
    sget-object v3, Lcom/ss/android/socialbase/downloader/impls/r;->i:Lcom/ss/android/socialbase/downloader/impls/r$b;

    .line 234
    if-eqz v3, :cond_f1

    .line 235
    int-to-long v5, v0

    move-object v4, p1

    move v7, p2

    move v8, p3

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/impls/r$b;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;JZI)V

    .line 237
    :cond_f1
    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/impls/r;->e:Z

    if-eqz p1, :cond_102

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a(J)V

    .line 242
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/r$a;->b()V

    .line 243
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a()V

    .line 245
    :cond_102
    goto :goto_119

    .line 246
    :cond_103
    if-eqz p2, :cond_106

    .line 248
    return-void

    .line 250
    :cond_106
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/r;->c:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/r;->c:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    int-to-long v0, v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 253
    :goto_119
    return-void

    .line 221
    :catchall_11a
    move-exception p1

    :try_start_11b
    monitor-exit v0
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11a

    throw p1
.end method

.method private a(Lcom/ss/android/socialbase/downloader/impls/r$a;I)Z
    .registers 7

    .line 474
    iget-object p1, p1, Lcom/ss/android/socialbase/downloader/impls/r$a;->g:[I

    .line 475
    const/4 v0, 0x0

    if-eqz p1, :cond_17

    array-length v1, p1

    if-nez v1, :cond_9

    goto :goto_17

    .line 478
    :cond_9
    array-length v1, p1

    move v2, v0

    :goto_b
    if-ge v2, v1, :cond_16

    aget v3, p1, v2

    .line 479
    if-ne v3, p2, :cond_13

    .line 480
    const/4 p1, 0x1

    return p1

    .line 478
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 483
    :cond_16
    return v0

    .line 476
    :cond_17
    :goto_17
    return v0
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z
    .registers 13

    .line 597
    nop

    .line 600
    const-wide/16 v0, 0x0

    :try_start_3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->d(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_b
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_3 .. :try_end_b} :catch_c

    .line 603
    goto :goto_11

    .line 601
    :catch_c
    move-exception v2

    .line 602
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->printStackTrace()V

    move-wide v2, v0

    .line 604
    :goto_11
    instance-of v4, p2, Lcom/ss/android/socialbase/downloader/exception/d;

    if-eqz v4, :cond_1c

    .line 605
    check-cast p2, Lcom/ss/android/socialbase/downloader/exception/d;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/d;->b()J

    move-result-wide v4

    goto :goto_25

    .line 607
    :cond_1c
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 610
    :goto_25
    cmp-long p2, v2, v4

    const/4 v4, 0x1

    if-gez p2, :cond_9f

    .line 612
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    .line 613
    const-string p2, "space_fill_part_download"

    const/4 v5, 0x0

    invoke-virtual {p1, p2, v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v4, :cond_9e

    .line 614
    cmp-long p2, v2, v0

    if-lez p2, :cond_95

    .line 615
    const/16 p2, 0x64

    const-string v6, "space_fill_min_keep_mb"

    invoke-virtual {p1, v6, p2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    .line 618
    if-lez p1, :cond_94

    .line 619
    int-to-long v6, p1

    const-wide/32 v8, 0x100000

    mul-long/2addr v6, v8

    sub-long v6, v2, v6

    .line 620
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retry schedule: available = "

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/i/e;->a(J)D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "MB, minKeep = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "MB, canDownload = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 622
    invoke-static {v6, v7}, Lcom/ss/android/socialbase/downloader/i/e;->a(J)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "MB"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 620
    const-string p2, "RetryScheduler"

    invoke-static {p2, p1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    cmp-long p1, v6, v0

    if-gtz p1, :cond_94

    .line 624
    const-string p1, "doSchedulerRetryInSubThread: canDownload <= 0 , canRetry = false !!!!"

    invoke-static {p2, p1}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    return v5

    .line 629
    :cond_94
    goto :goto_9f

    .line 631
    :cond_95
    const-string p2, "download_when_space_negative"

    invoke-virtual {p1, p2, v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v4, :cond_9f

    .line 632
    return v5

    .line 636
    :cond_9e
    return v5

    .line 639
    :cond_9f
    :goto_9f
    return v4
.end method

.method private a(Ljava/lang/String;)[I
    .registers 6

    .line 538
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 539
    return-object v1

    .line 542
    :cond_8
    :try_start_8
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 543
    array-length v0, p1

    if-gtz v0, :cond_12

    .line 544
    return-object v1

    .line 546
    :cond_12
    array-length v0, p1

    new-array v0, v0, [I

    .line 547
    const/4 v2, 0x0

    :goto_16
    array-length v3, p1

    if-ge v2, v3, :cond_24

    .line 548
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_25

    .line 547
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 550
    :cond_24
    return-object v0

    .line 551
    :catchall_25
    move-exception p1

    .line 554
    return-object v1
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/impls/r;)Landroid/net/ConnectivityManager;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->h:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private b(I)Lcom/ss/android/socialbase/downloader/impls/r$a;
    .registers 5

    .line 487
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/impls/r$a;

    .line 488
    if-nez v0, :cond_25

    .line 489
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    monitor-enter v1

    .line 490
    :try_start_d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/impls/r$a;

    .line 491
    if-nez v0, :cond_1b

    .line 492
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/r;->d(I)Lcom/ss/android/socialbase/downloader/impls/r$a;

    move-result-object v0

    .line 494
    :cond_1b
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 495
    monitor-exit v1

    goto :goto_25

    :catchall_22
    move-exception p1

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_22

    throw p1

    .line 497
    :cond_25
    :goto_25
    return-object v0
.end method

.method private b(IZ)V
    .registers 5

    .line 317
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 318
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/r$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/r$2;-><init>(Lcom/ss/android/socialbase/downloader/impls/r;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 357
    return-void
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/impls/r;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    return p0
.end method

.method private c(I)V
    .registers 4

    .line 501
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    monitor-enter v0

    .line 502
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 503
    monitor-exit v0

    .line 504
    return-void

    .line 503
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method static synthetic d(Lcom/ss/android/socialbase/downloader/impls/r;)I
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/r;->g()I

    move-result p0

    return p0
.end method

.method private d(I)Lcom/ss/android/socialbase/downloader/impls/r$a;
    .registers 13

    .line 507
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 508
    const-string v1, "retry_schedule"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v5

    .line 512
    const-string v1, "retry_schedule_config"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 513
    const/16 v1, 0x3c

    if-eqz v0, :cond_4d

    .line 514
    const-string v3, "max_count"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 516
    const-string v4, "interval_sec"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 518
    const-string v6, "interval_sec_acceleration"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 520
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    const/4 v8, 0x1

    if-lt v6, v7, :cond_3c

    sget-object v6, Lcom/ss/android/socialbase/downloader/impls/r;->i:Lcom/ss/android/socialbase/downloader/impls/r$b;

    if-eqz v6, :cond_3c

    .line 522
    const-string v6, "use_job_scheduler"

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_3c

    move v2, v8

    goto :goto_3d

    :cond_3c
    nop

    .line 523
    :goto_3d
    const-string v6, "allow_error_code"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Ljava/lang/String;)[I

    move-result-object v0

    move-object v10, v0

    move v0, v1

    move v9, v2

    move v6, v3

    move v1, v4

    goto :goto_56

    .line 525
    :cond_4d
    nop

    .line 526
    nop

    .line 527
    nop

    .line 528
    nop

    .line 529
    const/4 v0, 0x0

    move-object v10, v0

    move v0, v1

    move v6, v0

    move v9, v2

    .line 531
    :goto_56
    new-instance v2, Lcom/ss/android/socialbase/downloader/impls/r$a;

    mul-int/lit16 v7, v1, 0x3e8

    mul-int/lit16 v8, v0, 0x3e8

    move-object v3, v2

    move v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/ss/android/socialbase/downloader/impls/r$a;-><init>(IIIIIZ[I)V

    return-object v2
.end method

.method static synthetic e(Lcom/ss/android/socialbase/downloader/impls/r;)Landroid/util/SparseArray;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    return-object p0
.end method

.method private f()V
    .registers 4

    .line 153
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "use_network_callback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 154
    return-void

    .line 156
    :cond_f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 157
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/r$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/impls/r$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/r;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method private g()I
    .registers 4

    .line 577
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r;->h:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_15

    .line 578
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r;->b:Landroid/content/Context;

    .line 579
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r;->h:Landroid/net/ConnectivityManager;

    .line 582
    :cond_15
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r;->h:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 583
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_2e

    .line 586
    :cond_24
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2f

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 587
    const/4 v0, 0x2

    return v0

    .line 589
    :cond_2d
    return v1

    .line 584
    :cond_2e
    :goto_2e
    return v0

    .line 590
    :catch_2f
    move-exception v1

    .line 593
    return v0
.end method


# virtual methods
.method public a(I)V
    .registers 4

    .line 360
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 361
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/r$3;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/impls/r$3;-><init>(Lcom/ss/android/socialbase/downloader/impls/r;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 371
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4

    .line 181
    if-eqz p1, :cond_2f

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/e;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_2f

    .line 184
    :cond_17
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_26

    :cond_24
    const/4 v0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v0, 0x1

    .line 185
    :goto_27
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/r;->g()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V

    .line 186
    return-void

    .line 182
    :cond_2f
    :goto_2f
    return-void
.end method

.method public b()V
    .registers 3

    .line 559
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/r;->a(IZ)V

    .line 560
    return-void
.end method

.method public c()V
    .registers 3

    .line 564
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/r;->a(IZ)V

    .line 565
    return-void
.end method

.method public d()V
    .registers 3

    .line 568
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/r;->a(IZ)V

    .line 569
    return-void
.end method

.method public e()V
    .registers 3

    .line 572
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/r;->a(IZ)V

    .line 573
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 283
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 284
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v1, :cond_d

    move p1, v1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/impls/r;->b(IZ)V

    goto :goto_31

    .line 286
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage, doSchedulerRetry, id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RetryScheduler"

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/r;->a(I)V

    .line 289
    :goto_31
    return v1
.end method
