.class public Lcom/kwad/sdk/core/download/h/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/download/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/download/h/a$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/kwad/sdk/core/download/h/a$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/download/h/a$a;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/download/h/a;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    long-to-float v1, p0

    div-float/2addr v1, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%.2fMB"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(ILandroid/app/Notification;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/kwad/sdk/core/download/h/a;->b(ILandroid/app/Notification;)V

    return-void
.end method

.method private static b(ILandroid/app/Notification;)V
    .registers 7

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    :try_start_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_33

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "download_channel"

    const-string v3, "ksad"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_33
    invoke-virtual {v0, p0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_36} :catch_37

    goto :goto_6

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method


# virtual methods
.method public a(I)V
    .registers 4

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_6
.end method

.method public a(Lcom/ksad/download/DownloadTask;)V
    .registers 9

    const/4 v6, 0x1

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-void

    :cond_8
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ksad_notification_download_completed"

    invoke-static {v1, v3}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/kwad/sdk/core/download/DownloadParams;

    if-eqz v3, :cond_da

    check-cast v0, Lcom/kwad/sdk/core/download/DownloadParams;

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->c()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v3

    iget-object v4, v0, Lcom/kwad/sdk/core/download/DownloadParams;->mAppIcon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/kwad/sdk/core/diskcache/b/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_c9

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c9

    const-string v4, "ksad_download_icon"

    invoke-static {v1, v4}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_44
    const-string v3, "ksad_download_name"

    invoke-static {v1, v3}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-object v0, v0, Lcom/kwad/sdk/core/download/DownloadParams;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_4f
    const-string v0, "ksad_download_status"

    invoke-static {v1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v3, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v0, "ksad_download_size"

    invoke-static {v1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getSmallFileTotalBytes()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Lcom/kwad/sdk/core/download/h/a;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v0, "ksad_download_install"

    invoke-static {v1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v3, "\u7acb\u5373\u5b89\u88c5"

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v3, "download_channel"

    invoke-direct {v0, v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-static {p1}, Lcom/ksad/download/g;->a(Lcom/ksad/download/DownloadTask;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const-string v3, "ksad_notification_small_icon"

    invoke-static {v1, v3}, Lcom/kwad/sdk/e/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v1, Lcom/kwad/sdk/core/download/h/a;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v1, Lcom/kwad/sdk/core/download/h/a;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v6, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7

    :cond_c9
    const-string v3, "ksad_download_icon"

    invoke-static {v1, v3}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const-string v4, "ksad_notification_default_icon"

    invoke-static {v1, v4}, Lcom/kwad/sdk/e/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_44

    :cond_da
    const-string v0, "ksad_download_icon"

    invoke-static {v1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v3, "ksad_notification_default_icon"

    invoke-static {v1, v3}, Lcom/kwad/sdk/e/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_4f
.end method

.method public a(Lcom/ksad/download/DownloadTask;Z)V
    .registers 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ksad_notification_download_progress"

    invoke-static {v1, v3}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/kwad/sdk/core/download/DownloadParams;

    if-eqz v3, :cond_127

    check-cast v0, Lcom/kwad/sdk/core/download/DownloadParams;

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->c()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v3

    iget-object v4, v0, Lcom/kwad/sdk/core/download/DownloadParams;->mAppIcon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/kwad/sdk/core/diskcache/b/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_116

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_116

    const-string v4, "ksad_download_icon"

    invoke-static {v1, v4}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_45
    const-string v3, "ksad_download_name"

    invoke-static {v1, v3}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-object v0, v0, Lcom/kwad/sdk/core/download/DownloadParams;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_50
    const-string v0, "ksad_download_status"

    invoke-static {v1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v0, "ksad_download_size"

    invoke-static {v1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getSmallFileSoFarBytes()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/kwad/sdk/core/download/h/a;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getSmallFileTotalBytes()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/kwad/sdk/core/download/h/a;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getSmallFileSoFarBytes()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getSmallFileTotalBytes()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-int v0, v0

    const-string v3, "ksad_download_percent_num"

    invoke-static {v1, v3}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0b\u8f7d\u8fdb\u5ea6\uff1a  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v3, "ksad_download_progress"

    invoke-static {v1, v3}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v3, "download_channel"

    invoke-direct {v0, v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const-string v3, "ksad_notification_small_icon"

    invoke-static {v1, v3}, Lcom/kwad/sdk/e/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v1, Lcom/kwad/sdk/core/download/h/a;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v1, Lcom/kwad/sdk/core/download/h/a;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->isCompleted()Z

    move-result v3

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, p2, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_8

    :cond_116
    const-string v3, "ksad_download_icon"

    invoke-static {v1, v3}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const-string v4, "ksad_notification_default_icon"

    invoke-static {v1, v4}, Lcom/kwad/sdk/e/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_45

    :cond_127
    const-string v0, "ksad_download_icon"

    invoke-static {v1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v3, "ksad_notification_default_icon"

    invoke-static {v1, v3}, Lcom/kwad/sdk/e/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_50
.end method

.method public b(Lcom/ksad/download/DownloadTask;)V
    .registers 4

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/kwad/sdk/core/download/DownloadParams;

    if-eqz v1, :cond_29

    check-cast v0, Lcom/kwad/sdk/core/download/DownloadParams;

    iget-object v0, v0, Lcom/kwad/sdk/core/download/DownloadParams;->mAppIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->c()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/diskcache/b/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_29

    :cond_22
    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->c()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/diskcache/b/a;->a(Ljava/lang/String;)V

    :cond_29
    return-void
.end method
