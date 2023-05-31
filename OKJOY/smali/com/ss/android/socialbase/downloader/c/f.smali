.class public Lcom/ss/android/socialbase/downloader/c/f;
.super Ljava/lang/Object;
.source "SqlDownloadCacheAidlWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/ss/android/socialbase/downloader/downloader/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/c/f$a;
    }
.end annotation


# static fields
.field private static b:Z

.field private static c:I

.field private static d:J


# instance fields
.field private a:Lcom/ss/android/socialbase/downloader/c/c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private f:Lcom/ss/android/socialbase/downloader/c/b;

.field private g:Ljava/util/concurrent/CountDownLatch;

.field private h:Lcom/ss/android/socialbase/downloader/c/f$a;

.field private i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ss/android/socialbase/downloader/c/f;->d:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->e:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->f:Lcom/ss/android/socialbase/downloader/c/b;

    .line 47
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->g:Ljava/util/concurrent/CountDownLatch;

    .line 49
    new-instance v0, Lcom/ss/android/socialbase/downloader/c/f$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/c/f$1;-><init>(Lcom/ss/android/socialbase/downloader/c/f;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->i:Ljava/lang/Runnable;

    .line 62
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/c/f;)Lcom/ss/android/socialbase/downloader/c/f$a;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->h:Lcom/ss/android/socialbase/downloader/c/f$a;

    return-object v0
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 32
    sput-boolean p0, Lcom/ss/android/socialbase/downloader/c/f;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/c/f;)Z
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/c/f;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/c/f;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/ss/android/socialbase/downloader/c/f;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e()Z
    .registers 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/c/f;->b:Z

    return v0
.end method

.method private f()Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 112
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_8

    .line 137
    :cond_7
    :goto_7
    return v0

    .line 116
    :cond_8
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/c/f;->b:Z

    if-nez v1, :cond_7

    .line 119
    sget v1, Lcom/ss/android/socialbase/downloader/c/f;->c:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_19

    .line 120
    const-string v1, "SqlDownloadCacheAidlWra"

    const-string v2, "bindMainProcess: bind too many times!!! "

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 123
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 125
    sget-wide v4, Lcom/ss/android/socialbase/downloader/c/f;->d:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3a98

    cmp-long v1, v4, v6

    if-gez v1, :cond_2f

    .line 126
    const-string v1, "SqlDownloadCacheAidlWra"

    const-string v2, "bindMainProcess: time too short since last bind!!! "

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 129
    :cond_2f
    sget v0, Lcom/ss/android/socialbase/downloader/c/f;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ss/android/socialbase/downloader/c/f;->c:I

    .line 130
    sput-wide v2, Lcom/ss/android/socialbase/downloader/c/f;->d:J

    .line 131
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->e:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/socialbase/downloader/c/f$3;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/c/f$3;-><init>(Lcom/ss/android/socialbase/downloader/c/f;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    const/4 v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method public a(II)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 4

    .prologue
    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 344
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/c/c;->a(II)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 349
    :goto_a
    return-object v0

    .line 346
    :catch_b
    move-exception v0

    .line 347
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 349
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 6

    .prologue
    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 427
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/c/c;->a(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 432
    :goto_a
    return-object v0

    .line 429
    :catch_b
    move-exception v0

    .line 430
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 432
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 12

    .prologue
    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_13

    .line 415
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/c/c;->a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    .line 420
    :goto_e
    return-object v0

    .line 417
    :catch_f
    move-exception v0

    .line 418
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 420
    :cond_13
    const/4 v0, 0x0

    goto :goto_e
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
    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 218
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/c/c;->a(Ljava/lang/String;)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 223
    :goto_a
    return-object v0

    .line 220
    :catch_b
    move-exception v0

    .line 221
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 223
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a()V
    .registers 5

    .prologue
    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->g:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x1388

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_13

    .line 182
    :goto_9
    :try_start_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_12

    .line 183
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/c/c;->a()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_18

    .line 188
    :cond_12
    :goto_12
    return-void

    .line 178
    :catch_13
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9

    .line 185
    :catch_18
    move-exception v0

    .line 186
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_12
.end method

.method public a(IIII)V
    .registers 6

    .prologue
    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_9

    .line 333
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/c/c;->a(IIII)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 338
    :cond_9
    :goto_9
    return-void

    .line 335
    :catch_a
    move-exception v0

    .line 336
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public a(IIIJ)V
    .registers 12

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_d

    .line 322
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/c/c;->a(IIIJ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 327
    :cond_d
    :goto_d
    return-void

    .line 324
    :catch_e
    move-exception v0

    .line 325
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method public a(IIJ)V
    .registers 6

    .prologue
    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_9

    .line 311
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/c/c;->a(IIJ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 316
    :cond_9
    :goto_9
    return-void

    .line 313
    :catch_a
    move-exception v0

    .line 314
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
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
    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_9

    .line 558
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/c/c;->a(ILjava/util/List;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 563
    :cond_9
    :goto_9
    return-void

    .line 560
    :catch_a
    move-exception v0

    .line 561
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/c/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;>;",
            "Lcom/ss/android/socialbase/downloader/c/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/c/f$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/c/f$4;-><init>(Lcom/ss/android/socialbase/downloader/c/f;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/c/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 157
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/c/b;)V
    .registers 3

    .prologue
    .line 161
    monitor-enter p0

    .line 162
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_14

    .line 164
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/c/c;->a(Lcom/ss/android/socialbase/downloader/c/b;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    .line 171
    :goto_a
    :try_start_a
    monitor-exit p0

    .line 172
    return-void

    .line 165
    :catch_c
    move-exception v0

    .line 166
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a

    .line 171
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v0

    .line 169
    :cond_14
    :try_start_14
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/c/f;->f:Lcom/ss/android/socialbase/downloader/c/b;
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_11

    goto :goto_a
.end method

.method public a(Lcom/ss/android/socialbase/downloader/c/f$a;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/c/f;->h:Lcom/ss/android/socialbase/downloader/c/f$a;

    .line 67
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/b;)V
    .registers 3

    .prologue
    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_9

    .line 289
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/c/c;->a(Lcom/ss/android/socialbase/downloader/g/b;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 294
    :cond_9
    :goto_9
    return-void

    .line 291
    :catch_a
    move-exception v0

    .line 292
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 3

    .prologue
    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 356
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/c/c;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 361
    :goto_a
    return v0

    .line 358
    :catch_b
    move-exception v0

    .line 359
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 361
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 3

    .prologue
    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 206
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/c/c;->b(I)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 211
    :goto_a
    return-object v0

    .line 208
    :catch_b
    move-exception v0

    .line 209
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 211
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 6

    .prologue
    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 439
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/c/c;->b(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 444
    :goto_a
    return-object v0

    .line 441
    :catch_b
    move-exception v0

    .line 442
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 444
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
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
    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 230
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/c/c;->b(Ljava/lang/String;)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 235
    :goto_a
    return-object v0

    .line 232
    :catch_b
    move-exception v0

    .line 233
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 235
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b()V
    .registers 2

    .prologue
    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_9

    .line 392
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/c/c;->b()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 397
    :cond_9
    :goto_9
    return-void

    .line 394
    :catch_a
    move-exception v0

    .line 395
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
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
    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_9

    .line 569
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/c/c;->b(ILjava/util/List;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 574
    :cond_9
    :goto_9
    return-void

    .line 571
    :catch_a
    move-exception v0

    .line 572
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/b;)V
    .registers 3

    .prologue
    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_9

    .line 300
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/c/c;->b(Lcom/ss/android/socialbase/downloader/g/b;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 305
    :cond_9
    :goto_9
    return-void

    .line 302
    :catch_a
    move-exception v0

    .line 303
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_9

    .line 547
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/c/c;->b(Lcom/ss/android/socialbase/downloader/g/c;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 552
    :cond_9
    :goto_9
    return-void

    .line 549
    :catch_a
    move-exception v0

    .line 550
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public c(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 6

    .prologue
    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 463
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/c/c;->c(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 468
    :goto_a
    return-object v0

    .line 465
    :catch_b
    move-exception v0

    .line 466
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 468
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
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
    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 266
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/c/c;->c(I)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 271
    :goto_a
    return-object v0

    .line 268
    :catch_b
    move-exception v0

    .line 269
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 271
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
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
    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 242
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/c/c;->c(Ljava/lang/String;)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 247
    :goto_a
    return-object v0

    .line 244
    :catch_b
    move-exception v0

    .line 245
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 247
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 523
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/c/c;->c()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 528
    :goto_a
    return v0

    .line 525
    :catch_b
    move-exception v0

    .line 526
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 528
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public d(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 6

    .prologue
    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 475
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/c/c;->d(IJ)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 480
    :goto_a
    return-object v0

    .line 477
    :catch_b
    move-exception v0

    .line 478
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 480
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
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
    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 254
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/c/c;->d(Ljava/lang/String;)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 259
    :goto_a
    return-object v0

    .line 256
    :catch_b
    move-exception v0

    .line 257
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 259
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public d(I)V
    .registers 3

    .prologue
    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_9

    .line 278
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/c/c;->d(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 283
    :cond_9
    :goto_9
    return-void

    .line 280
    :catch_a
    move-exception v0

    .line 281
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 535
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/c/c;->d()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 540
    :goto_a
    return v0

    .line 537
    :catch_b
    move-exception v0

    .line 538
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 540
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public e(I)Z
    .registers 3

    .prologue
    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 368
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/c/c;->e(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 373
    :goto_a
    return v0

    .line 370
    :catch_b
    move-exception v0

    .line 371
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 373
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public f(I)Z
    .registers 3

    .prologue
    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 380
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/c/c;->f(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 385
    :goto_a
    return v0

    .line 382
    :catch_b
    move-exception v0

    .line 383
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 385
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public g(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 3

    .prologue
    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 403
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/c/c;->g(I)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 408
    :goto_a
    return-object v0

    .line 405
    :catch_b
    move-exception v0

    .line 406
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 408
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 3

    .prologue
    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 451
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/c/c;->h(I)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 456
    :goto_a
    return-object v0

    .line 453
    :catch_b
    move-exception v0

    .line 454
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 456
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public i(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 3

    .prologue
    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 499
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/c/c;->i(I)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 504
    :goto_a
    return-object v0

    .line 501
    :catch_b
    move-exception v0

    .line 502
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 504
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public j(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 3

    .prologue
    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_f

    .line 511
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/c/c;->j(I)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 516
    :goto_a
    return-object v0

    .line 513
    :catch_b
    move-exception v0

    .line 514
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 516
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .prologue
    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/socialbase/downloader/c/f;->b:Z

    .line 72
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/f;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    monitor-enter p0

    .line 75
    :try_start_b
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/c/c$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    .line 76
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->f:Lcom/ss/android/socialbase/downloader/c/b;

    if-eqz v0, :cond_20

    .line 77
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    if-eqz v0, :cond_20

    .line 78
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/f;->f:Lcom/ss/android/socialbase/downloader/c/b;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/c/c;->a(Lcom/ss/android/socialbase/downloader/c/b;)V

    .line 83
    :cond_20
    new-instance v0, Lcom/ss/android/socialbase/downloader/c/f$2;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/c/f$2;-><init>(Lcom/ss/android/socialbase/downloader/c/f;)V

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_29} :catch_30
    .catchall {:try_start_b .. :try_end_29} :catchall_4a

    .line 100
    :try_start_29
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 102
    :goto_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_47

    .line 103
    return-void

    .line 94
    :catch_30
    move-exception v0

    .line 95
    :try_start_31
    const-string v1, "SqlDownloadCacheAidlWra"

    const-string v2, "onServiceConnected fail"

    invoke-static {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->h:Lcom/ss/android/socialbase/downloader/c/f$a;

    if-eqz v0, :cond_41

    .line 97
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->h:Lcom/ss/android/socialbase/downloader/c/f$a;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/c/f$a;->a()V
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_4a

    .line 100
    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2e

    .line 102
    :catchall_47
    move-exception v0

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_47

    throw v0

    .line 100
    :catchall_4a
    move-exception v0

    :try_start_4b
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/f;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_47
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/c/f;->a:Lcom/ss/android/socialbase/downloader/c/c;

    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ss/android/socialbase/downloader/c/f;->b:Z

    .line 109
    return-void
.end method
