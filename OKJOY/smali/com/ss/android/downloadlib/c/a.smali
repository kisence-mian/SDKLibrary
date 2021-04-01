.class public Lcom/ss/android/downloadlib/c/a;
.super Ljava/lang/Object;
.source "AppDownloadLaunchResumeListener.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/g/c;IZ)V
    .registers 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/downloadlib/a/b/c;->b()V

    .line 54
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ss/android/downloadlib/a/b/c;->a(Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/downloadad/a/b/a;

    move-result-object v3

    .line 55
    if-nez v3, :cond_17

    .line 56
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->b()V

    .line 76
    :goto_16
    return-void

    .line 59
    :cond_17
    invoke-static {v3}, Lcom/ss/android/downloadad/a/b/a;->a(Lcom/ss/android/downloadad/a/b/a;)Lorg/json/JSONObject;

    move-result-object v4

    .line 61
    :try_start_1b
    const-string v2, "download_id"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    const-string v2, "name"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v2, "url"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v2, "download_time"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aw()J

    move-result-wide v6

    invoke-virtual {v4, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 65
    const-string v2, "download_status"

    invoke-virtual {v4, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    const-string v2, "cur_bytes"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v6

    invoke-virtual {v4, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 67
    const-string v2, "total_bytes"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v6

    invoke-virtual {v4, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 68
    const-string v5, "only_wifi"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->x()Z

    move-result v2

    if-eqz v2, :cond_87

    move v2, v0

    :goto_5f
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    const-string v2, "chunk_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    const-string v2, "launch_resumed"

    if-eqz p3, :cond_89

    :goto_6f
    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    const-string v0, "failed_resume_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aZ()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_7b} :catch_8b

    .line 75
    :goto_7b
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "embeded_ad"

    const-string v2, "download_uncompleted"

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_16

    :cond_87
    move v2, v1

    .line 68
    goto :goto_5f

    :cond_89
    move v0, v1

    .line 70
    goto :goto_6f

    .line 72
    :catch_8b
    move-exception v0

    .line 73
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7b
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;Z)V
    .registers 6

    .prologue
    .line 30
    if-nez p1, :cond_3

    .line 41
    :cond_2
    :goto_2
    return-void

    .line 33
    :cond_3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    const-string v1, "report_download_uncompleted_event"

    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->w()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ss/android/downloadlib/c/a;->a(Lcom/ss/android/socialbase/downloader/g/c;IZ)V

    goto :goto_2
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    return-void
.end method
