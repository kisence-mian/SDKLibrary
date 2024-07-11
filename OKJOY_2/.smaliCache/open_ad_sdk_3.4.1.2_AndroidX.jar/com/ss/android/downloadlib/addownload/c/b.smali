.class public Lcom/ss/android/downloadlib/addownload/c/b;
.super Ljava/lang/Object;
.source "CleanSpaceTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/c/b;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 35
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 39
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/c/b;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-nez v0, :cond_5

    .line 40
    return-void

    .line 42
    :cond_5
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/c/b;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v0

    .line 43
    if-nez v0, :cond_12

    .line 44
    return-void

    .line 46
    :cond_12
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v1

    const-string v2, "cleanspace_task"

    invoke-virtual {v1, v2, v0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/b;)V

    .line 48
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/c/b;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/downloadlib/h/e;->a(I)D

    move-result-wide v1

    .line 49
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/c/b;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    long-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/c/b;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    sub-long v9, v1, v3

    .line 50
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/ss/android/downloadlib/h/k;->a(J)J

    move-result-wide v3

    .line 52
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object v5

    if-eqz v5, :cond_53

    .line 53
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object v5

    invoke-interface {v5}, Lcom/ss/android/a/a/a/m;->e()V

    .line 57
    :cond_53
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c/c;->a()V

    .line 58
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c/c;->b()V

    .line 60
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v5

    invoke-static {v5}, Lcom/ss/android/downloadlib/h/e;->g(I)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 61
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/ss/android/downloadlib/addownload/c/c;->a(Landroid/content/Context;)V

    .line 64
    :cond_6a
    invoke-static {v1, v2}, Lcom/ss/android/downloadlib/h/k;->a(J)J

    move-result-wide v1

    .line 66
    cmp-long v5, v1, v9

    const/4 v11, 0x1

    const/4 v6, 0x0

    if-ltz v5, :cond_76

    move v5, v11

    goto :goto_77

    :cond_76
    move v5, v6

    .line 67
    :goto_77
    if-eqz v5, :cond_b4

    .line 68
    const-string v5, "1"

    invoke-virtual {v0, v5}, Lcom/ss/android/downloadad/a/b/b;->l(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/i;->a()Lcom/ss/android/downloadlib/addownload/b/i;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 70
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 72
    :try_start_8a
    const-string v6, "quite_clean_size"

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_94
    .catch Lorg/json/JSONException; {:try_start_8a .. :try_end_94} :catch_95

    .line 75
    goto :goto_99

    .line 73
    :catch_95
    move-exception v1

    .line 74
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 76
    :goto_99
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v1

    const-string v2, "cleanspace_download_after_quite_clean"

    invoke-virtual {v1, v2, v5, v0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/b;)V

    .line 77
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/c/b;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->restart(I)V

    .line 78
    goto :goto_105

    .line 79
    :cond_b4
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object v1

    if-eqz v1, :cond_e8

    .line 80
    invoke-virtual {v0, v6}, Lcom/ss/android/downloadad/a/b/b;->d(Z)V

    .line 81
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c/d;->a()Lcom/ss/android/downloadlib/addownload/c/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ss/android/downloadlib/addownload/c/b$1;

    invoke-direct {v3, p0, v0}, Lcom/ss/android/downloadlib/addownload/c/b$1;-><init>(Lcom/ss/android/downloadlib/addownload/c/b;Lcom/ss/android/downloadad/a/b/b;)V

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadlib/addownload/c/d;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/c/e;)V

    .line 90
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object v5

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/c/b;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v6

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/c/b;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v10}, Lcom/ss/android/a/a/a/m;->a(ILjava/lang/String;ZJ)Z

    move-result v1

    .line 91
    if-eqz v1, :cond_e7

    .line 92
    invoke-virtual {v0, v11}, Lcom/ss/android/downloadad/a/b/b;->e(Z)V

    .line 94
    :cond_e7
    goto :goto_105

    .line 95
    :cond_e8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 97
    :try_start_ed
    const-string v2, "show_dialog_result"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f7
    .catch Lorg/json/JSONException; {:try_start_ed .. :try_end_f7} :catch_f8

    .line 100
    goto :goto_fc

    .line 98
    :catch_f8
    move-exception v2

    .line 99
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 101
    :goto_fc
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v2

    const-string v3, "cleanspace_window_show"

    invoke-virtual {v2, v3, v1, v0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/b;)V

    .line 104
    :goto_105
    return-void
.end method
