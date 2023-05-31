.class public Lcom/ss/android/socialbase/downloader/impls/r;
.super Ljava/lang/Object;
.source "RetryScheduler.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/ss/android/socialbase/downloader/a/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/impls/r$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/ss/android/socialbase/downloader/impls/r;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
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

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->c:Landroid/os/Handler;

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    .line 102
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->b:Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/r;->f()V

    .line 104
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->e:Z

    .line 105
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/r;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/r;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/r;->h:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/impls/r;
    .registers 2

    .prologue
    .line 109
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/r;->a:Lcom/ss/android/socialbase/downloader/impls/r;

    if-nez v0, :cond_13

    .line 110
    const-class v1, Lcom/ss/android/socialbase/downloader/impls/r;

    monitor-enter v1

    .line 111
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/r;->a:Lcom/ss/android/socialbase/downloader/impls/r;

    if-nez v0, :cond_12

    .line 112
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/r;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/r;->a:Lcom/ss/android/socialbase/downloader/impls/r;

    .line 114
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 116
    :cond_13
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/r;->a:Lcom/ss/android/socialbase/downloader/impls/r;

    return-object v0

    .line 114
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(IIZ)V
    .registers 13

    .prologue
    const/4 v8, -0x1

    const/4 v1, 0x0

    .line 335
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/r;->b:Landroid/content/Context;

    .line 336
    if-nez v3, :cond_7

    .line 419
    :cond_6
    :goto_6
    return-void

    .line 340
    :cond_7
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    monitor-enter v2

    .line 341
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/impls/r$a;

    .line 342
    if-nez v0, :cond_19

    .line 343
    monitor-exit v2

    goto :goto_6

    .line 352
    :catchall_16
    move-exception v0

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_16

    throw v0

    .line 345
    :cond_19
    :try_start_19
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/r$a;->b(Lcom/ss/android/socialbase/downloader/impls/r$a;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 346
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/ss/android/socialbase/downloader/impls/r$a;->b(Lcom/ss/android/socialbase/downloader/impls/r$a;Z)Z

    .line 347
    iget v4, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    .line 348
    iget v4, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    if-gez v4, :cond_30

    .line 349
    const/4 v4, 0x0

    iput v4, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    .line 352
    :cond_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_16

    .line 353
    const-string v2, "RetryScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doSchedulerRetryInSubThread: downloadId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", retryCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 354
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a(Lcom/ss/android/socialbase/downloader/impls/r$a;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mWaitingRetryTasksCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 353
    invoke-static {v2, v4}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v4

    .line 357
    if-nez v4, :cond_71

    .line 359
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/r;->c(I)V

    goto :goto_6

    .line 363
    :cond_71
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->w()I

    move-result v2

    .line 364
    const/4 v5, -0x3

    if-eq v2, v5, :cond_7b

    const/4 v5, -0x4

    if-ne v2, v5, :cond_7f

    .line 367
    :cond_7b
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/r;->c(I)V

    goto :goto_6

    .line 370
    :cond_7f
    const/4 v5, -0x5

    if-ne v2, v5, :cond_94

    .line 371
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->o()Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_8f

    .line 373
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(Ljava/util/List;)V

    .line 375
    :cond_8f
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/r;->c(I)V

    goto/16 :goto_6

    .line 378
    :cond_94
    if-ne v2, v8, :cond_6

    .line 384
    const/4 v2, 0x1

    .line 385
    if-nez p2, :cond_100

    .line 386
    iget-boolean v2, v0, Lcom/ss/android/socialbase/downloader/impls/r$a;->f:Z

    if-eqz v2, :cond_6

    .line 395
    :goto_9d
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->aW()Lcom/ss/android/socialbase/downloader/e/a;

    move-result-object v2

    .line 396
    if-eqz v1, :cond_ad

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/m/f;->g(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 397
    invoke-direct {p0, v4, v2}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)Z

    move-result v1

    .line 400
    :cond_ad
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/r$a;->b()V

    .line 401
    if-eqz v1, :cond_f2

    .line 402
    const-string v1, "RetryScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doSchedulerRetry: restart task, ****** id = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Lcom/ss/android/socialbase/downloader/impls/r$a;->a:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a(J)V

    .line 404
    if-eqz p3, :cond_d8

    .line 405
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a()V

    .line 407
    :cond_d8
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a(Lcom/ss/android/socialbase/downloader/impls/r$a;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/ss/android/socialbase/downloader/g/c;->a(I)V

    .line 408
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    if-ne v0, v8, :cond_6

    .line 410
    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->e(I)V

    goto/16 :goto_6

    .line 414
    :cond_f2
    if-eqz p3, :cond_f7

    .line 415
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a()V

    .line 417
    :cond_f7
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/c;->x()Z

    move-result v0

    invoke-direct {p0, v4, v0, p2}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/g/c;ZI)V

    goto/16 :goto_6

    :cond_100
    move v1, v2

    goto :goto_9d
.end method

.method private a(IZ)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 254
    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    if-gtz v1, :cond_6

    .line 275
    :goto_5
    return-void

    .line 258
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 259
    monitor-enter p0

    .line 260
    if-nez p2, :cond_1c

    :try_start_d
    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/impls/r;->f:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x4e20

    cmp-long v1, v4, v6

    if-gez v1, :cond_1c

    .line 262
    monitor-exit p0

    goto :goto_5

    .line 265
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_19

    throw v0

    .line 264
    :cond_1c
    :try_start_1c
    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/impls/r;->f:J

    .line 265
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_19

    .line 266
    const-string v1, "RetryScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleAllTaskRetry, level = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], force = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    if-eqz p2, :cond_4e

    .line 268
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    :cond_4e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 271
    iput v0, v1, Landroid/os/Message;->what:I

    .line 272
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 273
    if-eqz p2, :cond_59

    const/4 v0, 0x1

    :cond_59
    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 274
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/c;ZI)V
    .registers 10

    .prologue
    .line 159
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aW()Lcom/ss/android/socialbase/downloader/e/a;

    move-result-object v0

    .line 160
    if-nez v0, :cond_7

    .line 217
    :cond_6
    :goto_6
    return-void

    .line 164
    :cond_7
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ss/android/socialbase/downloader/impls/r;->b(I)Lcom/ss/android/socialbase/downloader/impls/r$a;

    move-result-object v1

    .line 165
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a(Lcom/ss/android/socialbase/downloader/impls/r$a;)I

    move-result v2

    iget v3, v1, Lcom/ss/android/socialbase/downloader/impls/r$a;->c:I

    if-le v2, v3, :cond_4c

    .line 166
    const-string v0, "RetryScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryStartScheduleRetry, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/ss/android/socialbase/downloader/impls/r$a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRetryCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 167
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a(Lcom/ss/android/socialbase/downloader/impls/r$a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", maxCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/ss/android/socialbase/downloader/impls/r$a;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 171
    :cond_4c
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v2

    .line 172
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->g(Ljava/lang/Throwable;)Z

    move-result v3

    .line 173
    if-nez v3, :cond_86

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->h(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 175
    invoke-direct {p0, v1, v2}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/impls/r$a;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 179
    const-string v0, "RetryScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "white error code, id = "

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

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_86
    invoke-static {v1, p2}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a(Lcom/ss/android/socialbase/downloader/impls/r$a;Z)Z

    .line 183
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    monitor-enter v2

    .line 184
    :try_start_8c
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/r$a;->b(Lcom/ss/android/socialbase/downloader/impls/r$a;)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 185
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/impls/r$a;->b(Lcom/ss/android/socialbase/downloader/impls/r$a;Z)Z

    .line 186
    iget v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    .line 188
    :cond_9c
    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_8c .. :try_end_9d} :catchall_f1

    .line 190
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/r$a;->d()I

    move-result v0

    .line 191
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

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/impls/r$a;->f:Z

    if-eqz v2, :cond_f4

    .line 196
    if-nez p3, :cond_da

    .line 198
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/r$a;->c()V

    .line 200
    :cond_da
    int-to-long v2, v0

    invoke-static {p1, v2, v3, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/RetryJobSchedulerService;->a(Lcom/ss/android/socialbase/downloader/g/c;JZI)V

    .line 201
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->e:Z

    if-eqz v0, :cond_6

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a(J)V

    .line 206
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/r$a;->b()V

    .line 207
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a()V

    goto/16 :goto_6

    .line 188
    :catchall_f1
    move-exception v0

    :try_start_f2
    monitor-exit v2
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f1

    throw v0

    .line 210
    :cond_f4
    if-nez p2, :cond_6

    .line 214
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r;->c:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r;->c:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_6
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/r;IIZ)V
    .registers 4

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/r;->a(IIZ)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/r;IZ)V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/r;->a(IZ)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)Z
    .registers 15

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 544
    .line 547
    :try_start_4
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->c(Ljava/lang/String;)J
    :try_end_b
    .catch Lcom/ss/android/socialbase/downloader/e/a; {:try_start_4 .. :try_end_b} :catch_86

    move-result-wide v0

    .line 551
    :goto_c
    instance-of v6, p2, Lcom/ss/android/socialbase/downloader/e/e;

    if-eqz v6, :cond_8c

    .line 552
    check-cast p2, Lcom/ss/android/socialbase/downloader/e/e;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/e/e;->d()J

    move-result-wide v6

    .line 557
    :goto_16
    cmp-long v6, v0, v6

    if-gez v6, :cond_a2

    .line 559
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v6

    invoke-static {v6}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v6

    .line 560
    const-string v7, "space_fill_part_download"

    invoke-virtual {v6, v7, v4}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_a0

    .line 561
    cmp-long v7, v0, v2

    if-lez v7, :cond_96

    .line 562
    const-string v7, "space_fill_min_keep_mb"

    const/16 v8, 0x64

    invoke-virtual {v6, v7, v8}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v6

    .line 565
    if-lez v6, :cond_a2

    .line 566
    int-to-long v8, v6

    const-wide/32 v10, 0x100000

    mul-long/2addr v8, v10

    sub-long v8, v0, v8

    .line 567
    const-string v7, "RetryScheduler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "retry schedule: available = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/m/f;->a(J)D

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB, minKeep = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB, canDownload = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 569
    invoke-static {v8, v9}, Lcom/ss/android/socialbase/downloader/m/f;->a(J)D

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-static {v7, v0}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    cmp-long v0, v8, v2

    if-gtz v0, :cond_a2

    .line 571
    const-string v0, "RetryScheduler"

    const-string v1, "doSchedulerRetryInSubThread: canDownload <= 0 , canRetry = false !!!!"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 586
    :goto_85
    return v0

    .line 548
    :catch_86
    move-exception v0

    .line 549
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/e/a;->printStackTrace()V

    move-wide v0, v2

    goto :goto_c

    .line 554
    :cond_8c
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v8

    sub-long/2addr v6, v8

    goto :goto_16

    .line 578
    :cond_96
    const-string v0, "download_when_space_negative"

    invoke-virtual {v6, v0, v4}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_a2

    move v0, v4

    .line 579
    goto :goto_85

    :cond_a0
    move v0, v4

    .line 583
    goto :goto_85

    :cond_a2
    move v0, v5

    .line 586
    goto :goto_85
.end method

.method private a(Lcom/ss/android/socialbase/downloader/impls/r$a;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 422
    iget-object v2, p1, Lcom/ss/android/socialbase/downloader/impls/r$a;->g:[I

    .line 423
    if-eqz v2, :cond_8

    array-length v1, v2

    if-nez v1, :cond_9

    .line 431
    :cond_8
    :goto_8
    return v0

    .line 426
    :cond_9
    array-length v3, v2

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_8

    aget v4, v2, v1

    .line 427
    if-ne v4, p2, :cond_13

    .line 428
    const/4 v0, 0x1

    goto :goto_8

    .line 426
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method private a(Ljava/lang/String;)[I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 485
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 501
    :cond_7
    :goto_7
    return-object v0

    .line 489
    :cond_8
    :try_start_8
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 490
    array-length v1, v3

    if-lez v1, :cond_7

    .line 493
    array-length v1, v3

    new-array v1, v1, [I

    .line 494
    const/4 v2, 0x0

    :goto_15
    array-length v4, v3

    if-ge v2, v4, :cond_23

    .line 495
    aget-object v4, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v2
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_20} :catch_25

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_23
    move-object v0, v1

    .line 497
    goto :goto_7

    .line 498
    :catch_25
    move-exception v1

    goto :goto_7
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/impls/r;)Landroid/net/ConnectivityManager;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->h:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private b(I)Lcom/ss/android/socialbase/downloader/impls/r$a;
    .registers 5

    .prologue
    .line 435
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/impls/r$a;

    .line 436
    if-nez v0, :cond_21

    .line 437
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    monitor-enter v1

    .line 438
    :try_start_d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/impls/r$a;

    .line 439
    if-nez v0, :cond_1b

    .line 440
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/r;->d(I)Lcom/ss/android/socialbase/downloader/impls/r$a;

    move-result-object v0

    .line 442
    :cond_1b
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    monitor-exit v1

    .line 445
    :cond_21
    return-object v0

    .line 443
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_22

    throw v0
.end method

.method private b(IZ)V
    .registers 5

    .prologue
    .line 278
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 279
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/r$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/r$2;-><init>(Lcom/ss/android/socialbase/downloader/impls/r;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 318
    return-void
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/impls/r;)I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->g:I

    return v0
.end method

.method private c(I)V
    .registers 4

    .prologue
    .line 449
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    monitor-enter v1

    .line 450
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 451
    monitor-exit v1

    .line 452
    return-void

    .line 451
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method static synthetic d(Lcom/ss/android/socialbase/downloader/impls/r;)I
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/r;->g()I

    move-result v0

    return v0
.end method

.method private d(I)Lcom/ss/android/socialbase/downloader/impls/r$a;
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x3c

    .line 455
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v4

    .line 456
    const-string v2, "retry_schedule"

    invoke-virtual {v4, v2, v1}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v2

    .line 460
    const-string v5, "retry_schedule_config"

    invoke-virtual {v4, v5}, Lcom/ss/android/socialbase/downloader/k/a;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 461
    if-eqz v6, :cond_50

    .line 462
    const-string v4, "max_count"

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 464
    const-string v4, "interval_sec"

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 466
    const-string v7, "interval_sec_acceleration"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 468
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_4e

    const-string v7, "use_job_scheduler"

    .line 469
    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v0, :cond_4e

    .line 470
    :goto_36
    const-string v1, "white_error_code"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Ljava/lang/String;)[I

    move-result-object v7

    move v6, v0

    move v1, v3

    move v3, v5

    .line 478
    :goto_43
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/r$a;

    mul-int/lit16 v4, v4, 0x3e8

    mul-int/lit16 v5, v1, 0x3e8

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/socialbase/downloader/impls/r$a;-><init>(IIIIIZ[I)V

    return-object v0

    :cond_4e
    move v0, v1

    .line 469
    goto :goto_36

    .line 476
    :cond_50
    const/4 v7, 0x0

    move v6, v1

    move v4, v3

    move v1, v3

    goto :goto_43
.end method

.method static synthetic e(Lcom/ss/android/socialbase/downloader/impls/r;)Landroid/util/SparseArray;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->d:Landroid/util/SparseArray;

    return-object v0
.end method

.method private f()V
    .registers 4

    .prologue
    .line 124
    invoke-static {}, Lcom/ss/android/socialbase/downloader/k/a;->b()Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    const-string v1, "use_network_callback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 149
    :goto_e
    return-void

    .line 127
    :cond_f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/r$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/impls/r$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/r;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_e
.end method

.method private g()I
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 524
    :try_start_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->h:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_16

    .line 525
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->b:Landroid/content/Context;

    .line 526
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->h:Landroid/net/ConnectivityManager;

    .line 529
    :cond_16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r;->h:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_26

    :cond_24
    move v0, v2

    .line 540
    :goto_25
    return v0

    .line 533
    :cond_26
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_30

    move-result v0

    if-ne v0, v1, :cond_2e

    .line 534
    const/4 v0, 0x2

    goto :goto_25

    :cond_2e
    move v0, v1

    .line 536
    goto :goto_25

    .line 537
    :catch_30
    move-exception v0

    move v0, v2

    .line 540
    goto :goto_25
.end method


# virtual methods
.method a(I)V
    .registers 4

    .prologue
    .line 321
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 322
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/r$3;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/impls/r$3;-><init>(Lcom/ss/android/socialbase/downloader/impls/r;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 4

    .prologue
    .line 152
    if-eqz p1, :cond_e

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 156
    :cond_e
    :goto_e
    return-void

    .line 155
    :cond_f
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->x()Z

    move-result v0

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/r;->g()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/g/c;ZI)V

    goto :goto_e
.end method

.method public b()V
    .registers 3

    .prologue
    .line 506
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/r;->a(IZ)V

    .line 507
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 511
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/r;->a(IZ)V

    .line 512
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 515
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/r;->a(IZ)V

    .line 516
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 519
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/r;->a(IZ)V

    .line 520
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 244
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_12

    .line 245
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v1, :cond_10

    move v0, v1

    :goto_c
    invoke-direct {p0, v2, v0}, Lcom/ss/android/socialbase/downloader/impls/r;->b(IZ)V

    .line 250
    :goto_f
    return v1

    .line 245
    :cond_10
    const/4 v0, 0x0

    goto :goto_c

    .line 247
    :cond_12
    const-string v0, "RetryScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage, doSchedulerRetry, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/r;->a(I)V

    goto :goto_f
.end method
