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


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 40
    const-class v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a:Ljava/lang/String;

    .line 46
    sput v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    .line 51
    sput v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

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
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Landroid/app/NotificationManager;I)V
    .registers 12

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 373
    sget v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-eq v0, p2, :cond_b

    sget v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-ne v0, p2, :cond_109

    .line 375
    :cond_b
    sget v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-ne v0, p2, :cond_74

    .line 376
    sput v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    move v6, v2

    .line 383
    :goto_12
    :try_start_12
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 384
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->b()Z

    move-result v4

    if-nez v4, :cond_45

    .line 388
    const/4 v4, 0x0

    sput-boolean v4, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->d:Z

    .line 389
    sget-object v4, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try to stopForeground when is not Foreground, id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", isIndependentProcess = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_45
    sget-object v4, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doCancel, ========== stopForeground id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", isIndependentProcess = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(ZZ)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_6c} :catch_78

    .line 403
    :goto_6c
    :try_start_6c
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6f} :catch_111

    .line 408
    :goto_6f
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->d:Z

    if-nez v0, :cond_7d

    .line 465
    :cond_73
    :goto_73
    return-void

    .line 379
    :cond_74
    sput v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    move v6, v1

    .line 380
    goto :goto_12

    .line 397
    :catch_78
    move-exception v0

    .line 398
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6c

    .line 419
    :cond_7d
    :try_start_7d
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/notification/b;->b()Landroid/util/SparseArray;

    move-result-object v7

    .line 420
    if-eqz v7, :cond_c4

    .line 421
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    :goto_8e
    if-ltz v5, :cond_c4

    .line 422
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/notification/a;

    .line 423
    if-eqz v0, :cond_fe

    .line 424
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/notification/a;->a()I

    move-result v4

    .line 425
    if-eq v4, p2, :cond_fe

    sget v8, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-eq v4, v8, :cond_fe

    sget v8, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-eq v4, v8, :cond_fe

    .line 426
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/notification/a;->i()Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 427
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/notification/a;->a()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(I)I

    move-result v4

    if-ne v4, v1, :cond_fc

    .line 428
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->c()Z

    move-result v4

    if-nez v4, :cond_fc

    move v4, v1

    .line 429
    :goto_c1
    if-ne v4, v6, :cond_fe

    move-object v3, v0

    .line 438
    :cond_c4
    if-eqz v3, :cond_73

    .line 439
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/notification/a;->a()I
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_c9} :catch_f6

    move-result v4

    .line 441
    :try_start_ca
    invoke-virtual {p1, v4}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_cd} :catch_102

    .line 447
    :goto_cd
    :try_start_cd
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/downloader/downloader/f;->f(I)I

    move-result v0

    if-ne v0, v1, :cond_107

    move v0, v1

    .line 452
    :goto_d8
    sget-object v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doCancel, updateNotification id = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/4 v1, 0x0

    invoke-virtual {v3, v1, v0}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/e/a;Z)V
    :try_end_f4
    .catch Ljava/lang/Throwable; {:try_start_cd .. :try_end_f4} :catch_f6

    goto/16 :goto_73

    .line 455
    :catch_f6
    move-exception v0

    .line 456
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_73

    :cond_fc
    move v4, v2

    .line 428
    goto :goto_c1

    .line 421
    :cond_fe
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_8e

    .line 442
    :catch_102
    move-exception v0

    .line 443
    :try_start_103
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_106
    .catch Ljava/lang/Throwable; {:try_start_103 .. :try_end_106} :catch_f6

    goto :goto_cd

    :cond_107
    move v0, v2

    .line 450
    goto :goto_d8

    .line 460
    :cond_109
    :try_start_109
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_10c
    .catch Ljava/lang/Throwable; {:try_start_109 .. :try_end_10c} :catch_10e

    goto/16 :goto_73

    .line 461
    :catch_10e
    move-exception v0

    goto/16 :goto_73

    .line 404
    :catch_111
    move-exception v0

    goto/16 :goto_6f
.end method

.method private a(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .registers 14

    .prologue
    const-wide/16 v0, 0x4e20

    const-wide/16 v4, 0x0

    .line 243
    sget-wide v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->i:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->f:J

    sub-long/2addr v6, v8

    sub-long/2addr v2, v6

    .line 244
    cmp-long v6, v2, v4

    if-gtz v6, :cond_13

    move-wide v2, v4

    .line 247
    :cond_13
    cmp-long v6, v2, v0

    if-lez v6, :cond_37

    .line 250
    :goto_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    sput-wide v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->g:J

    sput-wide v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->f:J

    .line 251
    cmp-long v2, v0, v4

    if-gtz v2, :cond_28

    .line 252
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    .line 263
    :cond_27
    :goto_27
    return-void

    .line 254
    :cond_28
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/os/Handler;

    if-eqz v2, :cond_27

    .line 255
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/os/Handler;

    new-instance v3, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$2;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$2;-><init>(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_27

    :cond_37
    move-wide v0, v2

    goto :goto_17
.end method

.method private a(Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 148
    if-nez p1, :cond_3

    .line 240
    :cond_2
    :goto_2
    return-void

    .line 150
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;-><init>(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;I)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Landroid/app/NotificationManager;I)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .registers 4

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic a()Z
    .registers 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->h:Z

    return v0
.end method

.method private a(ILandroid/app/Notification;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 271
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->d:Z

    if-nez v1, :cond_6

    .line 295
    :cond_5
    :goto_5
    return v0

    .line 275
    :cond_6
    sget v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-eq v1, p1, :cond_5

    sget v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-eq v1, p1, :cond_5

    .line 279
    sget v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-eqz v1, :cond_16

    sget v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-nez v1, :cond_5

    .line 283
    :cond_16
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->e:Z

    if-eqz v1, :cond_20

    .line 285
    iget v1, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 289
    :cond_20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_30

    .line 291
    invoke-virtual {p2}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 295
    :cond_30
    const/4 v0, 0x1

    goto :goto_5
.end method

.method static synthetic b()J
    .registers 2

    .prologue
    .line 38
    sget-wide v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->g:J

    return-wide v0
.end method

.method private b(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 305
    invoke-direct {p0, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(ILandroid/app/Notification;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 308
    :try_start_8
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(I)I

    move-result v2

    if-ne v2, v0, :cond_6e

    .line 309
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->c()Z

    move-result v2

    if-nez v2, :cond_6e

    move v2, v0

    .line 311
    :goto_19
    if-nez v2, :cond_70

    sget v3, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-nez v3, :cond_70

    .line 318
    :cond_1f
    :goto_1f
    if-eqz v0, :cond_5e

    .line 319
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(I)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    .line 320
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->g()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->b()Z

    move-result v1

    if-nez v1, :cond_80

    .line 321
    sget-object v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a:Ljava/lang/String;

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

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    if-eqz v2, :cond_78

    .line 323
    sput p2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    .line 327
    :goto_5b
    invoke-interface {v0, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(ILandroid/app/Notification;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_5e} :catch_7b

    .line 356
    :cond_5e
    :goto_5e
    :try_start_5e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 357
    sget-wide v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->f:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_6a

    .line 358
    sput-wide v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->f:J

    .line 360
    :cond_6a
    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_6d} :catch_af

    .line 365
    :goto_6d
    return-void

    :cond_6e
    move v2, v1

    .line 309
    goto :goto_19

    .line 314
    :cond_70
    if-eqz v2, :cond_76

    :try_start_72
    sget v3, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-eqz v3, :cond_1f

    :cond_76
    move v0, v1

    goto :goto_1f

    .line 325
    :cond_78
    sput p2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_7a} :catch_7b

    goto :goto_5b

    .line 338
    :catch_7b
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5e

    .line 334
    :cond_80
    :try_start_80
    sget-object v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doNotify: canStartForeground = true, but proxy can not startForeground, isIndependentProcess = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_98} :catch_7b

    goto :goto_5e

    .line 343
    :cond_99
    sget v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-eq v0, p2, :cond_a1

    sget v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-ne v0, p2, :cond_5e

    .line 344
    :cond_a1
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->e:Z

    if-eqz v0, :cond_5e

    .line 345
    iget v0, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5e

    .line 348
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Landroid/app/NotificationManager;I)V

    goto :goto_5e

    .line 361
    :catch_af
    move-exception v0

    goto :goto_6d
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .registers 4

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic c()J
    .registers 2

    .prologue
    .line 38
    sget-wide v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->i:J

    return-wide v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Landroid/os/HandlerThread;

    if-nez v0, :cond_1f

    .line 121
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DownloaderNotifyThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Landroid/os/HandlerThread;

    .line 122
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/os/Handler;

    .line 125
    :cond_1f
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 267
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x384

    const/4 v5, 0x3

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 88
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 90
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->d()V

    .line 92
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 93
    invoke-static {}, Lcom/ss/android/socialbase/downloader/k/a;->b()Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    .line 94
    const-string v1, "download_service_foreground"

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v1

    .line 95
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1d

    if-ne v1, v5, :cond_23

    .line 97
    :cond_1d
    sget v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-ne v2, v4, :cond_23

    .line 98
    sput v3, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    .line 101
    :cond_23
    const/4 v2, 0x2

    if-eq v1, v2, :cond_28

    if-ne v1, v5, :cond_2e

    .line 103
    :cond_28
    sget v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-ne v1, v4, :cond_2e

    .line 104
    sput v3, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    .line 107
    :cond_2e
    const-string v1, "non_going_notification_foreground"

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/socialbase/downloader/k/a;->b(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->e:Z

    .line 109
    const-string v1, "notify_too_fast"

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/socialbase/downloader/k/a;->b(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->h:Z

    .line 110
    const-string v1, "notification_time_window"

    invoke-virtual {v0, v1, v6, v7}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->i:J

    .line 111
    sget-wide v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_56

    sget-wide v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->i:J

    const-wide/16 v2, 0x4b0

    cmp-long v0, v0, v2

    if-lez v0, :cond_58

    .line 112
    :cond_56
    sput-wide v6, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->i:J

    .line 114
    :cond_58
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 130
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_11

    .line 132
    :try_start_8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_12

    .line 135
    :goto_d
    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Landroid/os/HandlerThread;

    .line 136
    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/os/Handler;

    .line 138
    :cond_11
    return-void

    .line 133
    :catch_12
    move-exception v0

    goto :goto_d
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Landroid/content/Intent;)V

    .line 144
    const/4 v0, 0x2

    return v0
.end method
