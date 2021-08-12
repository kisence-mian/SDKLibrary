.class public Lcom/ss/android/socialbase/appdownloader/e/b;
.super Lcom/ss/android/socialbase/downloader/depend/d;
.source "DownloadNotificationListener.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/ss/android/socialbase/downloader/notification/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 26
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/d;-><init>()V

    .line 27
    if-eqz p1, :cond_c

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->a:Landroid/content/Context;

    goto :goto_12

    .line 30
    :cond_c
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->a:Landroid/content/Context;

    .line 31
    :goto_12
    iput p2, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->b:I

    .line 32
    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->c:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->d:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->e:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->f:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/ss/android/socialbase/downloader/notification/a;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/d;-><init>()V

    .line 40
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->a:Landroid/content/Context;

    .line 41
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->g:Lcom/ss/android/socialbase/downloader/notification/a;

    .line 42
    return-void
.end method


# virtual methods
.method public a()Lcom/ss/android/socialbase/downloader/notification/a;
    .registers 10

    .line 60
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->g:Lcom/ss/android/socialbase/downloader/notification/a;

    if-nez v0, :cond_1b

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->a:Landroid/content/Context;

    if-eqz v1, :cond_1b

    .line 61
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/e/a;

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->a:Landroid/content/Context;

    iget v4, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->b:I

    iget-object v5, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->f:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/ss/android/socialbase/appdownloader/e/a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 63
    :cond_1b
    return-object v0
.end method

.method public onFailed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 4

    .line 106
    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canShowNotification()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_17

    .line 108
    :cond_13
    invoke-super {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/d;->onFailed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 109
    return-void

    .line 107
    :cond_17
    :goto_17
    return-void
.end method

.method public onPause(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 82
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_d

    .line 84
    :cond_9
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/d;->onPause(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 85
    return-void

    .line 83
    :cond_d
    :goto_d
    return-void
.end method

.method public onPrepare(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 68
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_d

    .line 70
    :cond_9
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/d;->onPrepare(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 71
    return-void

    .line 69
    :cond_d
    :goto_d
    return-void
.end method

.method public onProgress(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 89
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_d

    .line 91
    :cond_9
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/d;->onProgress(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 92
    return-void

    .line 90
    :cond_d
    :goto_d
    return-void
.end method

.method public onStart(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 75
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_d

    .line 77
    :cond_9
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/d;->onStart(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 78
    return-void

    .line 76
    :cond_d
    :goto_d
    return-void
.end method

.method public onSuccessed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 96
    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/b;->a:Landroid/content/Context;

    if-nez v0, :cond_7

    goto :goto_1a

    .line 98
    :cond_7
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canShowNotification()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification()Z

    move-result v0

    if-nez v0, :cond_16

    .line 99
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/d;->onSuccessed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 101
    :cond_16
    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/f/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 102
    return-void

    .line 97
    :cond_1a
    :goto_1a
    return-void
.end method
