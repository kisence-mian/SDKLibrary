.class public Lcom/ss/android/socialbase/appdownloader/f/a;
.super Ljava/lang/Object;
.source "AppInstallUtils.java"


# direct methods
.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 1

    .line 31
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/f/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 32
    return-void
.end method

.method private static b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 6

    .line 36
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    .line 38
    nop

    .line 39
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoResumed()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isShowNotificationForNetworkResumed()Z

    move-result v1

    if-eqz v1, :cond_33

    :cond_13
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 42
    :cond_33
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v4, "auto_install_when_resume"

    invoke-virtual {v1, v4, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_44

    .line 44
    move v2, v3

    .line 48
    :cond_44
    if-eqz v2, :cond_4f

    .line 49
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;IZ)I

    move-result v1

    goto :goto_50

    :cond_4f
    const/4 v1, 0x2

    .line 52
    :goto_50
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 53
    new-instance v3, Lcom/ss/android/socialbase/appdownloader/f/a$1;

    invoke-direct {v3, v0, p0, v1}, Lcom/ss/android/socialbase/appdownloader/f/a$1;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method
