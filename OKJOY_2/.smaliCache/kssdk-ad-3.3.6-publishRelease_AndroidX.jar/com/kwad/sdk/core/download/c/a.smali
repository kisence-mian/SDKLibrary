.class public Lcom/kwad/sdk/core/download/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ksad/download/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/download/c/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/download/c/a;->a:Ljava/util/HashMap;

    new-instance v0, Lcom/kwad/sdk/core/download/c/a$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/download/c/a$a;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/download/c/a;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    sget-object v0, Lcom/kwad/sdk/core/download/c/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_1a
    invoke-static {p1}, Lcom/kwad/sdk/utils/w;->a(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/kwad/sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object p1, Lcom/kwad/sdk/core/download/c/a;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    return-object v0
.end method

.method private static a(J)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    long-to-float p0, p0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    const-string p0, "%.2fMB"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(ILandroid/app/Notification;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/kwad/sdk/core/download/c/a;->b(ILandroid/app/Notification;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/kwad/sdk/api/core/ICompletedRemoteView;Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/kwad/sdk/core/download/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/kwad/sdk/api/core/ICompletedRemoteView;->setIcon(Landroid/graphics/Bitmap;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    const/4 p1, 0x1

    return p1

    :catch_9
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/kwad/sdk/core/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/content/Context;Lcom/kwad/sdk/api/core/IProgressRemoteView;Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/kwad/sdk/core/download/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/kwad/sdk/api/core/IProgressRemoteView;->setIcon(Landroid/graphics/Bitmap;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    const/4 p1, 0x1

    return p1

    :catch_9
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/kwad/sdk/core/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private a(Lcom/kwad/sdk/api/core/ICompletedRemoteView;Ljava/io/File;)Z
    .registers 3

    :try_start_0
    invoke-direct {p0, p2}, Lcom/kwad/sdk/core/download/c/a;->b(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/kwad/sdk/api/core/ICompletedRemoteView;->setIcon(Landroid/graphics/Bitmap;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    const/4 p1, 0x1

    return p1

    :catch_9
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/kwad/sdk/core/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private a(Lcom/kwad/sdk/api/core/IProgressRemoteView;Ljava/io/File;)Z
    .registers 3

    :try_start_0
    invoke-direct {p0, p2}, Lcom/kwad/sdk/core/download/c/a;->b(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/kwad/sdk/api/core/IProgressRemoteView;->setIcon(Landroid/graphics/Bitmap;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    const/4 p1, 0x1

    return p1

    :catch_9
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/kwad/sdk/core/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/kwad/sdk/core/download/c/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_1e
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/kwad/sdk/core/download/c/a;->a:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    return-object v0
.end method

.method private static b(ILandroid/app/Notification;)V
    .registers 7

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    :try_start_13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_34

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "download_channel"

    const-string v3, "ksad"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_34
    invoke-virtual {v0, p0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_3c
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public a(Lcom/ksad/download/DownloadTask;)V
    .registers 3

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/kwad/sdk/core/download/DownloadParams;

    if-eqz v0, :cond_29

    check-cast p1, Lcom/kwad/sdk/core/download/DownloadParams;

    iget-object p1, p1, Lcom/kwad/sdk/core/download/DownloadParams;->mAppIcon:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->a()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/diskcache/b/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_29

    :cond_22
    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->a()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/diskcache/b/a;->a(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public a(Lcom/ksad/download/DownloadTask;Z)V
    .registers 9

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-static {v0}, Lcom/kwad/sdk/api/core/RemoteViewBuilder;->createProgressView(Landroid/content/Context;)Lcom/kwad/sdk/api/core/IProgressRemoteView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/kwad/sdk/core/download/DownloadParams;

    const-string v4, "ksad_notification_default_icon"

    if-eqz v3, :cond_3c

    check-cast v2, Lcom/kwad/sdk/core/download/DownloadParams;

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->a()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v3

    iget-object v5, v2, Lcom/kwad/sdk/core/download/DownloadParams;->mAppIcon:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/kwad/sdk/core/diskcache/b/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-direct {p0, v1, v3}, Lcom/kwad/sdk/core/download/c/a;->a(Lcom/kwad/sdk/api/core/IProgressRemoteView;Ljava/io/File;)Z

    move-result v3

    goto :goto_36

    :cond_32
    invoke-direct {p0, v0, v1, v4}, Lcom/kwad/sdk/core/download/c/a;->a(Landroid/content/Context;Lcom/kwad/sdk/api/core/IProgressRemoteView;Ljava/lang/String;)Z

    move-result v3

    :goto_36
    iget-object v2, v2, Lcom/kwad/sdk/core/download/DownloadParams;->mAppName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/kwad/sdk/api/core/IProgressRemoteView;->setName(Ljava/lang/String;)V

    goto :goto_40

    :cond_3c
    invoke-direct {p0, v0, v1, v4}, Lcom/kwad/sdk/core/download/c/a;->a(Landroid/content/Context;Lcom/kwad/sdk/api/core/IProgressRemoteView;Ljava/lang/String;)Z

    move-result v3

    :goto_40
    if-nez v3, :cond_4a

    const-string p1, "AdDownloadNotificationPerformer"

    const-string p2, "set icon failed "

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4a
    const-string v2, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-interface {v1, v2}, Lcom/kwad/sdk/api/core/IProgressRemoteView;->setStatus(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getSmallFileSoFarBytes()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/kwad/sdk/core/download/c/a;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getSmallFileTotalBytes()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/kwad/sdk/core/download/c/a;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/kwad/sdk/api/core/IProgressRemoteView;->setSize(Ljava/lang/String;)V

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getSmallFileSoFarBytes()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getSmallFileTotalBytes()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    float-to-int v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0b\u8f7d\u8fdb\u5ea6\uff1a  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/kwad/sdk/api/core/IProgressRemoteView;->setPercentNum(Ljava/lang/String;)V

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v1, v3, v2, v4}, Lcom/kwad/sdk/api/core/IProgressRemoteView;->setProgress(IIZ)V

    new-instance v2, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    const-string v3, "download_channel"

    invoke-direct {v2, v0, v3}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/kwad/sdk/api/core/IProgressRemoteView;->build()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setWhen(J)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setOngoing(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setOnlyAlertOnce(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setPriority(I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v1

    const-string v3, "ksad_notification_small_icon"

    invoke-static {v0, v3}, Lcom/kwad/sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setSmallIcon(I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    sget-object v0, Lcom/kwad/sdk/core/download/c/a;->b:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->isCompleted()Z

    move-result p1

    invoke-virtual {v2}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 8

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/core/a;->a()Lcom/kwad/sdk/core/a;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/a;->a(Ljava/lang/String;)Lcom/kwad/sdk/core/download/DownloadParams;

    move-result-object v1

    invoke-static {}, Lcom/kwad/sdk/core/a;->a()Lcom/kwad/sdk/core/a;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/a;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_de

    if-nez v1, :cond_25

    goto/16 :goto_de

    :cond_25
    invoke-static {}, Lcom/kwad/sdk/core/a;->a()Lcom/kwad/sdk/core/a;

    move-result-object v2

    iget-object v3, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mDownloadid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/a;->c(Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v2

    if-eqz v2, :cond_3c

    const-string v3, "recall"

    iput-object v3, v2, Lcom/kwad/sdk/core/response/model/AdTemplate;->installFrom:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/core/download/DownloadStatusManager;->a()Lcom/kwad/sdk/core/download/DownloadStatusManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kwad/sdk/core/download/DownloadStatusManager;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    :cond_3c
    invoke-static {v0}, Lcom/kwad/sdk/api/core/RemoteViewBuilder;->createCompletedView(Landroid/content/Context;)Lcom/kwad/sdk/api/core/ICompletedRemoteView;

    move-result-object v2

    iget-object v3, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mAppIcon:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "ksad_notification_default_icon"

    if-nez v3, :cond_6b

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->a()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v3

    iget-object v5, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mAppIcon:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/kwad/sdk/core/diskcache/b/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_61

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-direct {p0, v2, v3}, Lcom/kwad/sdk/core/download/c/a;->a(Lcom/kwad/sdk/api/core/ICompletedRemoteView;Ljava/io/File;)Z

    move-result v3

    goto :goto_65

    :cond_61
    invoke-direct {p0, v0, v2, v4}, Lcom/kwad/sdk/core/download/c/a;->a(Landroid/content/Context;Lcom/kwad/sdk/api/core/ICompletedRemoteView;Ljava/lang/String;)Z

    move-result v3

    :goto_65
    iget-object v4, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mAppName:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/kwad/sdk/api/core/ICompletedRemoteView;->setName(Ljava/lang/String;)V

    goto :goto_6f

    :cond_6b
    invoke-direct {p0, v0, v2, v4}, Lcom/kwad/sdk/core/download/c/a;->a(Landroid/content/Context;Lcom/kwad/sdk/api/core/ICompletedRemoteView;Ljava/lang/String;)Z

    move-result v3

    :goto_6f
    if-nez v3, :cond_79

    const-string p1, "AdDownloadNotificationPerformer"

    const-string v0, "set icon failed "

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_79
    const-string v3, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-interface {v2, v3}, Lcom/kwad/sdk/api/core/ICompletedRemoteView;->setStatus(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mAppSize:J

    invoke-static {v3, v4}, Lcom/kwad/sdk/core/download/c/a;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/kwad/sdk/api/core/ICompletedRemoteView;->setSize(Ljava/lang/String;)V

    const-string v3, "\u7acb\u5373\u5b89\u88c5"

    invoke-interface {v2, v3}, Lcom/kwad/sdk/api/core/ICompletedRemoteView;->setInstallText(Ljava/lang/String;)V

    new-instance v3, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    const-string v4, "download_channel"

    invoke-direct {v3, v0, v4}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/kwad/sdk/api/core/ICompletedRemoteView;->build()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setWhen(J)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setOngoing(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setAutoCancel(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setOnlyAlertOnce(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v2

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setPriority(I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v2

    iget v5, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mTaskId:I

    invoke-static {p1, v5}, Lcom/ksad/download/g;->a(Ljava/io/File;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object p1

    const-string v2, "ksad_notification_small_icon"

    invoke-static {v0, v2}, Lcom/kwad/sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setSmallIcon(I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    sget-object p1, Lcom/kwad/sdk/core/download/c/a;->b:Landroid/os/Handler;

    iget v0, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mTaskId:I

    const/4 v1, 0x2

    invoke-virtual {v3}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_de
    :goto_de
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/core/a;->a()Lcom/kwad/sdk/core/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kwad/sdk/core/a;->a(Ljava/lang/String;)Lcom/kwad/sdk/core/download/DownloadParams;

    move-result-object v1

    invoke-static {}, Lcom/kwad/sdk/core/a;->a()Lcom/kwad/sdk/core/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/kwad/sdk/core/a;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_ca

    if-nez v1, :cond_1d

    goto/16 :goto_ca

    :cond_1d
    invoke-static {}, Lcom/kwad/sdk/core/a;->a()Lcom/kwad/sdk/core/a;

    move-result-object p1

    iget-object v2, v1, Lcom/kwad/sdk/core/download/DownloadParams;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/kwad/sdk/core/a;->b(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwad/sdk/api/core/RemoteViewBuilder;->createCompletedView(Landroid/content/Context;)Lcom/kwad/sdk/api/core/ICompletedRemoteView;

    move-result-object p1

    iget-object v2, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mAppIcon:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "ksad_notification_default_icon"

    if-nez v2, :cond_55

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->a()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v2

    iget-object v4, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mAppIcon:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/kwad/sdk/core/diskcache/b/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-direct {p0, p1, v2}, Lcom/kwad/sdk/core/download/c/a;->a(Lcom/kwad/sdk/api/core/ICompletedRemoteView;Ljava/io/File;)Z

    move-result v2

    goto :goto_4f

    :cond_4b
    invoke-direct {p0, v0, p1, v3}, Lcom/kwad/sdk/core/download/c/a;->a(Landroid/content/Context;Lcom/kwad/sdk/api/core/ICompletedRemoteView;Ljava/lang/String;)Z

    move-result v2

    :goto_4f
    iget-object v3, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mAppName:Ljava/lang/String;

    invoke-interface {p1, v3}, Lcom/kwad/sdk/api/core/ICompletedRemoteView;->setName(Ljava/lang/String;)V

    goto :goto_59

    :cond_55
    invoke-direct {p0, v0, p1, v3}, Lcom/kwad/sdk/core/download/c/a;->a(Landroid/content/Context;Lcom/kwad/sdk/api/core/ICompletedRemoteView;Ljava/lang/String;)Z

    move-result v2

    :goto_59
    if-nez v2, :cond_63

    const-string p1, "AdDownloadNotificationPerformer"

    const-string v0, "set icon failed "

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_63
    const-string v2, "\u5b89\u88c5\u5b8c\u6210"

    invoke-interface {p1, v2}, Lcom/kwad/sdk/api/core/ICompletedRemoteView;->setStatus(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mAppSize:J

    invoke-static {v2, v3}, Lcom/kwad/sdk/core/download/c/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/kwad/sdk/api/core/ICompletedRemoteView;->setSize(Ljava/lang/String;)V

    const-string v2, "\u7acb\u523b\u6253\u5f00"

    invoke-interface {p1, v2}, Lcom/kwad/sdk/api/core/ICompletedRemoteView;->setInstallText(Ljava/lang/String;)V

    new-instance v2, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    const-string v3, "download_channel"

    invoke-direct {v2, v0, v3}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/kwad/sdk/api/core/ICompletedRemoteView;->build()Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setWhen(J)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setOngoing(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setAutoCancel(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setOnlyAlertOnce(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object p1

    const/4 v4, -0x1

    invoke-virtual {p1, v4}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setPriority(I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object p1

    iget-object v4, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mPkgname:Ljava/lang/String;

    iget v5, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mTaskId:I

    invoke-static {v4, v5}, Lcom/ksad/download/g;->a(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object p1

    const-string v4, "ksad_notification_small_icon"

    invoke-static {v0, v4}, Lcom/kwad/sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setSmallIcon(I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    sget-object p1, Lcom/kwad/sdk/core/download/c/a;->b:Landroid/os/Handler;

    iget v0, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mTaskId:I

    const/4 v1, 0x2

    invoke-virtual {v2}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_ca
    :goto_ca
    return-void
.end method

.method public b(Lcom/ksad/download/DownloadTask;)V
    .registers 8

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-static {v0}, Lcom/kwad/sdk/api/core/RemoteViewBuilder;->createCompletedView(Landroid/content/Context;)Lcom/kwad/sdk/api/core/ICompletedRemoteView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/kwad/sdk/core/download/DownloadParams;

    const-string v4, "ksad_notification_default_icon"

    if-eqz v3, :cond_3c

    check-cast v2, Lcom/kwad/sdk/core/download/DownloadParams;

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->a()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v3

    iget-object v5, v2, Lcom/kwad/sdk/core/download/DownloadParams;->mAppIcon:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/kwad/sdk/core/diskcache/b/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-direct {p0, v1, v3}, Lcom/kwad/sdk/core/download/c/a;->a(Lcom/kwad/sdk/api/core/ICompletedRemoteView;Ljava/io/File;)Z

    move-result v3

    goto :goto_36

    :cond_32
    invoke-direct {p0, v0, v1, v4}, Lcom/kwad/sdk/core/download/c/a;->a(Landroid/content/Context;Lcom/kwad/sdk/api/core/ICompletedRemoteView;Ljava/lang/String;)Z

    move-result v3

    :goto_36
    iget-object v4, v2, Lcom/kwad/sdk/core/download/DownloadParams;->mAppName:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/kwad/sdk/api/core/ICompletedRemoteView;->setName(Ljava/lang/String;)V

    goto :goto_45

    :cond_3c
    invoke-direct {p0, v0, v1, v4}, Lcom/kwad/sdk/core/download/c/a;->a(Landroid/content/Context;Lcom/kwad/sdk/api/core/ICompletedRemoteView;Ljava/lang/String;)Z

    move-result v3

    new-instance v2, Lcom/kwad/sdk/core/download/DownloadParams;

    invoke-direct {v2}, Lcom/kwad/sdk/core/download/DownloadParams;-><init>()V

    :goto_45
    if-nez v3, :cond_4f

    const-string p1, "AdDownloadNotificationPerformer"

    const-string v0, "set icon failed "

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4f
    const-string v3, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-interface {v1, v3}, Lcom/kwad/sdk/api/core/ICompletedRemoteView;->setStatus(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getSmallFileTotalBytes()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/kwad/sdk/core/download/DownloadParams;->mAppSize:J

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v3

    iput v3, v2, Lcom/kwad/sdk/core/download/DownloadParams;->mTaskId:I

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getTargetFilePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kwad/sdk/core/download/DownloadParams;->filePath:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/core/a;->a()Lcom/kwad/sdk/core/a;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getTargetFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/kwad/sdk/core/a;->a(Ljava/lang/String;Lcom/kwad/sdk/core/download/DownloadParams;)V

    invoke-static {}, Lcom/kwad/sdk/core/a;->a()Lcom/kwad/sdk/core/a;

    move-result-object v3

    iget-object v4, v2, Lcom/kwad/sdk/core/download/DownloadParams;->mPkgname:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/kwad/sdk/core/a;->a(Ljava/lang/String;Lcom/kwad/sdk/core/download/DownloadParams;)V

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getSmallFileTotalBytes()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/kwad/sdk/core/download/c/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/kwad/sdk/api/core/ICompletedRemoteView;->setSize(Ljava/lang/String;)V

    const-string v2, "\u7acb\u5373\u5b89\u88c5"

    invoke-interface {v1, v2}, Lcom/kwad/sdk/api/core/ICompletedRemoteView;->setInstallText(Ljava/lang/String;)V

    new-instance v2, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    const-string v3, "download_channel"

    invoke-direct {v2, v0, v3}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/kwad/sdk/api/core/ICompletedRemoteView;->build()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setWhen(J)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setOngoing(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setAutoCancel(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setOnlyAlertOnce(Z)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setPriority(I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v1

    invoke-static {p1}, Lcom/ksad/download/g;->a(Lcom/ksad/download/DownloadTask;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    move-result-object v1

    const-string v4, "ksad_notification_small_icon"

    invoke-static {v0, v4}, Lcom/kwad/sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->setSmallIcon(I)Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;

    sget-object v0, Lcom/kwad/sdk/core/download/c/a;->b:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result p1

    invoke-virtual {v2}, Lcom/kwad/sdk/api/push/KsNotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
