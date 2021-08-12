.class public Lcom/ss/android/downloadlib/addownload/b;
.super Ljava/lang/Object;
.source "AdDownloadSecurityManager.java"


# static fields
.field private static volatile a:Lcom/ss/android/downloadlib/addownload/b;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/b;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/b;
    .registers 2

    .line 31
    sget-object v0, Lcom/ss/android/downloadlib/addownload/b;->a:Lcom/ss/android/downloadlib/addownload/b;

    if-nez v0, :cond_17

    .line 32
    const-class v0, Lcom/ss/android/downloadlib/addownload/b;

    monitor-enter v0

    .line 33
    :try_start_7
    sget-object v1, Lcom/ss/android/downloadlib/addownload/b;->a:Lcom/ss/android/downloadlib/addownload/b;

    if-nez v1, :cond_12

    .line 34
    new-instance v1, Lcom/ss/android/downloadlib/addownload/b;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/b;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/addownload/b;->a:Lcom/ss/android/downloadlib/addownload/b;

    .line 36
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 38
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/downloadlib/addownload/b;->a:Lcom/ss/android/downloadlib/addownload/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 6

    .line 47
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/b;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 48
    return-void

    .line 50
    :cond_7
    if-nez p2, :cond_a

    .line 51
    return-void

    .line 54
    :cond_a
    :try_start_a
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_26} :catch_27

    .line 60
    :cond_26
    goto :goto_2b

    .line 58
    :catch_27
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    :goto_2b
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b;->b:Landroid/os/Handler;

    if-nez v0, :cond_3a

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/b;->b:Landroid/os/Handler;

    .line 64
    :cond_3a
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->clearDownloadData(I)V

    .line 66
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/b;->b:Landroid/os/Handler;

    new-instance p2, Lcom/ss/android/downloadlib/addownload/b$1;

    invoke-direct {p2, p0, v0}, Lcom/ss/android/downloadlib/addownload/b$1;-><init>(Lcom/ss/android/downloadlib/addownload/b;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method

.method public b()Z
    .registers 4

    .line 85
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "forbid_invalidte_download_file_install"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 86
    return v1

    .line 89
    :cond_f
    return v2
.end method
