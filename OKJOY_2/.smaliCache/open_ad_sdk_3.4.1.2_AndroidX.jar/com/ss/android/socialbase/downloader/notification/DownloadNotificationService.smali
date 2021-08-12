.class public Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;
.super Landroid/app/Service;
.source "DownloadNotificationService.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I

.field private static c:I

.field private static d:Z

.field private static e:Z

.field private static volatile f:J

.field private static volatile g:J

.field private static h:Z

.field private static i:J


# instance fields
.field private j:Landroid/os/HandlerThread;

.field private k:Landroid/os/Handler;

.field private final l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    const-class v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a:Ljava/lang/String;

    .line 46
    const/4 v0, -0x1

    sput v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    .line 51
    sput v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->d:Z

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->e:Z

    .line 80
    const-wide/16 v0, 0x384

    sput-wide v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->i:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->l:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;)Landroid/os/Handler;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/os/Handler;

    return-object p0
.end method

.method private a(Landroid/app/NotificationManager;I)V
    .registers 6

    .line 290
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->l:Landroid/util/SparseArray;

    monitor-enter v0

    .line 291
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    .line 292
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->l:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 293
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_17

    .line 294
    if-eqz v1, :cond_16

    .line 295
    invoke-direct {p0, p1, p2, v1}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    .line 297
    :cond_16
    return-void

    .line 293
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method private a(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .registers 11

    .line 253
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->l:Landroid/util/SparseArray;

    monitor-enter v0

    .line 254
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 255
    if-ltz v1, :cond_1a

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->l:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 258
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->l:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, p3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 259
    monitor-exit v0

    return-void

    .line 261
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_60

    .line 263
    sget-wide v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->i:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->f:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 264
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2c

    .line 265
    move-wide v0, v2

    .line 267
    :cond_2c
    const-wide/16 v4, 0x4e20

    cmp-long v6, v0, v4

    if-lez v6, :cond_33

    .line 268
    move-wide v0, v4

    .line 270
    :cond_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    sput-wide v4, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->g:J

    sput-wide v4, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->f:J

    .line 271
    cmp-long v2, v0, v2

    if-gtz v2, :cond_44

    .line 272
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    goto :goto_5f

    .line 274
    :cond_44
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/os/Handler;

    if-eqz v2, :cond_5f

    .line 275
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->l:Landroid/util/SparseArray;

    monitor-enter v2

    .line 276
    :try_start_4b
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->l:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_5c

    .line 278
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$2;-><init>(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;I)V

    invoke-virtual {p3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5f

    .line 277
    :catchall_5c
    move-exception p1

    :try_start_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p1

    .line 286
    :cond_5f
    :goto_5f
    return-void

    .line 261
    :catchall_60
    move-exception p1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p1
.end method

.method private a(Landroid/content/Intent;)V
    .registers 5

    .line 154
    if-nez p1, :cond_3

    .line 155
    return-void

    .line 156
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 158
    return-void

    .line 161
    :cond_e
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/os/Handler;

    if-eqz v1, :cond_1a

    .line 162
    new-instance v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;-><init>(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    :cond_1a
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;I)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b(Landroid/app/NotificationManager;I)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic a()Z
    .registers 1

    .line 38
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->h:Z

    return v0
.end method

.method private a(ILandroid/app/Notification;)Z
    .registers 6

    .line 305
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 307
    return v1

    .line 309
    :cond_6
    sget v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-eq v0, p1, :cond_32

    sget v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-ne v2, p1, :cond_f

    goto :goto_32

    .line 313
    :cond_f
    if-eqz v0, :cond_14

    if-eqz v2, :cond_14

    .line 315
    return v1

    .line 317
    :cond_14
    sget-boolean p1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->e:Z

    if-eqz p1, :cond_1f

    .line 319
    iget p1, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1f

    .line 320
    return v1

    .line 323
    :cond_1f
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_30

    .line 325
    invoke-virtual {p2}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 326
    return v1

    .line 329
    :cond_30
    const/4 p1, 0x1

    return p1

    .line 311
    :cond_32
    :goto_32
    return v1
.end method

.method static synthetic b()J
    .registers 2

    .line 38
    sget-wide v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->g:J

    return-wide v0
.end method

.method private b(Landroid/app/NotificationManager;I)V
    .registers 12

    .line 407
    sget v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-eq v0, p2, :cond_11

    sget v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-ne v1, p2, :cond_9

    goto :goto_11

    .line 494
    :cond_9
    :try_start_9
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    .line 497
    goto/16 :goto_109

    .line 495
    :catchall_e
    move-exception p1

    goto/16 :goto_109

    .line 409
    :cond_11
    :goto_11
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p2, :cond_19

    .line 410
    sput v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    .line 411
    move v0, v2

    goto :goto_1c

    .line 413
    :cond_19
    sput v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    .line 414
    move v0, v1

    .line 417
    :goto_1c
    :try_start_1c
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v3

    .line 418
    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/downloader/l;->b()Z

    move-result v4
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_72

    const-string v5, ", isIndependentProcess = "

    if-nez v4, :cond_4e

    .line 422
    :try_start_2c
    sput-boolean v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->d:Z

    .line 423
    sget-object v4, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try to stopForeground when is not Foreground, id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_4e
    sget-object v4, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doCancel, ========== stopForeground id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-interface {v3, v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(ZZ)V
    :try_end_71
    .catchall {:try_start_2c .. :try_end_71} :catchall_72

    .line 433
    goto :goto_76

    .line 431
    :catchall_72
    move-exception v3

    .line 432
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 437
    :goto_76
    :try_start_76
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a

    .line 440
    goto :goto_7b

    .line 438
    :catchall_7a
    move-exception v3

    .line 442
    :goto_7b
    sget-boolean v3, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->d:Z

    if-nez v3, :cond_80

    .line 443
    return-void

    .line 452
    :cond_80
    nop

    .line 453
    :try_start_81
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/notification/b;->b()Landroid/util/SparseArray;

    move-result-object v3

    .line 454
    const/4 v4, 0x0

    if-eqz v3, :cond_cd

    .line 455
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v1

    :goto_91
    if-ltz v5, :cond_cd

    .line 456
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ss/android/socialbase/downloader/notification/a;

    .line 457
    if-eqz v6, :cond_ca

    .line 458
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/notification/a;->a()I

    move-result v7

    .line 459
    if-eq v7, p2, :cond_ca

    sget v8, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-eq v7, v8, :cond_ca

    sget v8, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-eq v7, v8, :cond_ca

    .line 460
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/notification/a;->i()Z

    move-result v7

    if-eqz v7, :cond_ca

    .line 461
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v7

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/notification/a;->a()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(I)I

    move-result v7

    if-ne v7, v1, :cond_c5

    .line 462
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->c()Z

    move-result v7

    if-nez v7, :cond_c5

    move v7, v1

    goto :goto_c6

    :cond_c5
    move v7, v2

    .line 463
    :goto_c6
    if-ne v7, v0, :cond_ca

    .line 464
    nop

    .line 465
    goto :goto_ce

    .line 455
    :cond_ca
    add-int/lit8 v5, v5, -0x1

    goto :goto_91

    .line 472
    :cond_cd
    move-object v6, v4

    :goto_ce
    if-eqz v6, :cond_103

    .line 473
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/notification/a;->a()I

    move-result p2
    :try_end_d4
    .catchall {:try_start_81 .. :try_end_d4} :catchall_104

    .line 475
    :try_start_d4
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_d8

    .line 478
    goto :goto_dc

    .line 476
    :catchall_d8
    move-exception p1

    .line 477
    :try_start_d9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 481
    :goto_dc
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getStatus(I)I

    move-result p1

    if-ne p1, v1, :cond_e7

    .line 482
    goto :goto_e8

    .line 484
    :cond_e7
    move v1, v2

    .line 486
    :goto_e8
    sget-object p1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCancel, updateNotification id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {v6, v4, v1}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    :try_end_103
    .catchall {:try_start_d9 .. :try_end_103} :catchall_104

    .line 491
    :cond_103
    goto :goto_108

    .line 489
    :catchall_104
    move-exception p1

    .line 490
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 492
    :goto_108
    nop

    .line 499
    :goto_109
    return-void
.end method

.method private b(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .registers 9

    .line 339
    invoke-direct {p0, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(ILandroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 342
    :try_start_6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    .line 343
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->c()Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v2

    goto :goto_1b

    :cond_1a
    move v0, v1

    .line 344
    :goto_1b
    nop

    .line 345
    if-nez v0, :cond_24

    sget v3, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-nez v3, :cond_24

    .line 347
    move v1, v2

    goto :goto_2b

    .line 348
    :cond_24
    if-eqz v0, :cond_2b

    sget v3, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-nez v3, :cond_2b

    .line 350
    move v1, v2

    .line 352
    :cond_2b
    :goto_2b
    if-eqz v1, :cond_8b

    .line 353
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v1

    .line 354
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/l;->g()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/l;->b()Z

    move-result v2

    if-nez v2, :cond_6e

    .line 355
    sget-object v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doNotify, startForeground, ======== id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isIndependentProcess = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    if-eqz v0, :cond_68

    .line 357
    sput p2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    goto :goto_6a

    .line 359
    :cond_68
    sput p2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    .line 361
    :goto_6a
    invoke-interface {v1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(ILandroid/app/Notification;)V

    goto :goto_8b

    .line 368
    :cond_6e
    sget-object v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doNotify: canStartForeground = true, but proxy can not startForeground, isIndependentProcess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_6 .. :try_end_86} :catchall_87

    goto :goto_8b

    .line 372
    :catchall_87
    move-exception v0

    .line 373
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 374
    :cond_8b
    :goto_8b
    goto :goto_a1

    .line 377
    :cond_8c
    sget v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-eq v0, p2, :cond_94

    sget v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-ne v0, p2, :cond_a1

    .line 378
    :cond_94
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->e:Z

    if-eqz v0, :cond_a1

    .line 379
    iget v0, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a1

    .line 382
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b(Landroid/app/NotificationManager;I)V

    .line 390
    :cond_a1
    :goto_a1
    :try_start_a1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 391
    sget-wide v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->f:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_ad

    .line 392
    sput-wide v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->f:J

    .line 394
    :cond_ad
    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_b0
    .catchall {:try_start_a1 .. :try_end_b0} :catchall_b1

    .line 397
    goto :goto_b2

    .line 395
    :catchall_b1
    move-exception p1

    .line 399
    :goto_b2
    return-void
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;I)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Landroid/app/NotificationManager;I)V

    return-void
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic c()J
    .registers 2

    .line 38
    sget-wide v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->i:J

    return-wide v0
.end method

.method private d()V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Landroid/os/HandlerThread;

    if-nez v0, :cond_1d

    .line 127
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DownloaderNotifyThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Landroid/os/HandlerThread;

    .line 128
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 129
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/os/Handler;

    .line 131
    :cond_1d
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 301
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 7

    .line 94
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 96
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->d()V

    .line 98
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 99
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 100
    const-string v1, "download_service_foreground"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    .line 101
    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1b

    if-ne v1, v3, :cond_21

    .line 103
    :cond_1b
    sget v5, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-ne v5, v4, :cond_21

    .line 104
    sput v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    .line 107
    :cond_21
    const/4 v5, 0x2

    if-eq v1, v5, :cond_26

    if-ne v1, v3, :cond_2c

    .line 109
    :cond_26
    sget v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-ne v1, v4, :cond_2c

    .line 110
    sput v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    .line 113
    :cond_2c
    const-string v1, "non_going_notification_foreground"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->e:Z

    .line 115
    const-string v1, "notify_too_fast"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->h:Z

    .line 116
    const-string v1, "notification_time_window"

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->i:J

    .line 117
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_52

    const-wide/16 v4, 0x4b0

    cmp-long v0, v0, v4

    if-lez v0, :cond_54

    .line 118
    :cond_52
    sput-wide v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->i:J

    .line 120
    :cond_54
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 135
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 136
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_11

    .line 138
    :try_start_7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    .line 140
    goto :goto_c

    .line 139
    :catchall_b
    move-exception v0

    .line 141
    :goto_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Landroid/os/HandlerThread;

    .line 142
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/os/Handler;

    .line 144
    :cond_11
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 148
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Landroid/content/Intent;)V

    .line 150
    const/4 p1, 0x2

    return p1
.end method
