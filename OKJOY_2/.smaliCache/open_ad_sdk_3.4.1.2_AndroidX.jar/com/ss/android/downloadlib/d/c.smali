.class public Lcom/ss/android/downloadlib/d/c;
.super Ljava/lang/Object;
.source "AppDownloadLaunchResumeListener.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/g;
.implements Lcom/ss/android/socialbase/downloader/depend/k;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 97
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;IZ)V
    .registers 9

    .line 57
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/f;->b()V

    .line 58
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v0

    .line 59
    if-nez v0, :cond_15

    .line 60
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    .line 61
    return-void

    .line 65
    :cond_15
    if-eqz p3, :cond_1f

    .line 66
    :try_start_17
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getFailedResumeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/b/b;->c(I)V

    goto :goto_2a

    .line 68
    :cond_1f
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->C()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_27

    .line 69
    return-void

    .line 71
    :cond_27
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/b/b;->c(I)V

    .line 74
    :goto_2a
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/i;->a()Lcom/ss/android/downloadlib/addownload/b/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 76
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 77
    const-string v2, "download_id"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    const-string v2, "name"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v2, "url"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v2, "download_time"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadTime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 81
    const-string v2, "download_status"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    const-string p2, "cur_bytes"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 83
    const-string p2, "total_bytes"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 84
    const-string p2, "only_wifi"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7c

    move v2, v3

    goto :goto_7d

    :cond_7c
    const/4 v2, 0x0

    :goto_7d
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    const-string p2, "chunk_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    const-string p2, "launch_resumed"

    if-eqz p3, :cond_8e

    goto :goto_8f

    :cond_8e
    const/4 v3, 0x2

    :goto_8f
    invoke-virtual {v1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string p2, "failed_resume_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getFailedResumeCount()I

    move-result p1

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    const-string p2, "embeded_ad"

    const-string p3, "download_uncompleted"

    invoke-virtual {p1, p2, p3, v1, v0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V
    :try_end_a6
    .catchall {:try_start_17 .. :try_end_a6} :catchall_a7

    .line 91
    goto :goto_ab

    .line 89
    :catchall_a7
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    :goto_ab
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V
    .registers 4

    .line 38
    if-nez p1, :cond_3

    .line 39
    return-void

    .line 44
    :cond_3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ss/android/downloadlib/d/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;IZ)V

    .line 45
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .line 34
    return-void
.end method

.method public b()V
    .registers 5

    .line 101
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/d/c$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/d/c$1;-><init>(Lcom/ss/android/downloadlib/d/c;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;J)V

    .line 141
    return-void
.end method
