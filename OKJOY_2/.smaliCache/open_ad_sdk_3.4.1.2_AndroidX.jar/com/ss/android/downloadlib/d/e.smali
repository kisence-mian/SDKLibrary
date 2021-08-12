.class public Lcom/ss/android/downloadlib/d/e;
.super Ljava/lang/Object;
.source "NewDownloadCompletedEventDispatcher.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/d;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/downloadlib/d/e;->a:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;IJ)V
    .registers 19

    .line 46
    move-object v0, p0

    iget-object v1, v0, Lcom/ss/android/downloadlib/d/e;->a:Landroid/content/Context;

    .line 47
    if-nez v1, :cond_6

    .line 48
    return-void

    .line 50
    :cond_6
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v1

    move v2, p1

    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    .line 51
    if-eqz v3, :cond_8d

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_8d

    .line 55
    :cond_19
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v1

    .line 56
    if-nez v1, :cond_27

    .line 57
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    .line 58
    return-void

    .line 61
    :cond_27
    const-string v2, "download_notification"

    packed-switch p2, :pswitch_data_8e

    :pswitch_2c
    goto :goto_8c

    .line 82
    :pswitch_2d
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v3

    const-string v4, "download_notification_click"

    invoke-virtual {v3, v2, v4, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 83
    goto :goto_8c

    .line 74
    :pswitch_37
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v3

    const-string v4, "download_notification_continue"

    invoke-virtual {v3, v2, v4, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 75
    goto :goto_8c

    .line 71
    :pswitch_41
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v3

    const-string v4, "download_notification_pause"

    invoke-virtual {v3, v2, v4, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 72
    goto :goto_8c

    .line 77
    :pswitch_4b
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v4, v3}, Lcom/ss/android/downloadlib/a;->b(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lorg/json/JSONObject;

    move-result-object v3

    .line 78
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v4

    const-string v5, "download_notification_install"

    invoke-virtual {v4, v2, v5, v3, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 80
    goto :goto_8c

    .line 63
    :pswitch_5e
    invoke-static {v3, v1}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/a/b/b;)V

    .line 65
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 66
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/a;->a()Lcom/ss/android/downloadlib/addownload/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/b/b;->l()J

    move-result-wide v6

    .line 67
    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/b/b;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/b/b;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v11

    .line 66
    invoke-virtual/range {v2 .. v11}, Lcom/ss/android/downloadlib/addownload/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_8c
    :goto_8c
    return-void

    .line 52
    :cond_8d
    :goto_8d
    return-void

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_2c
        :pswitch_4b
        :pswitch_2c
        :pswitch_41
        :pswitch_37
        :pswitch_2d
    .end packed-switch
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 116
    iget-object p2, p0, Lcom/ss/android/downloadlib/d/e;->a:Landroid/content/Context;

    if-nez p2, :cond_5

    .line 117
    return-void

    .line 120
    :cond_5
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 121
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p2

    const/4 p3, -0x3

    if-eq p2, p3, :cond_17

    goto :goto_24

    .line 124
    :cond_17
    invoke-virtual {p1, p4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setPackageName(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b;->a()Lcom/ss/android/downloadlib/addownload/b;

    move-result-object p2

    iget-object p3, p0, Lcom/ss/android/downloadlib/d/e;->a:Landroid/content/Context;

    invoke-virtual {p2, p3, p1}, Lcom/ss/android/downloadlib/addownload/b;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 126
    return-void

    .line 122
    :cond_24
    :goto_24
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 41
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/downloadlib/a;->a(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 6

    .line 102
    if-nez p1, :cond_3

    .line 103
    return-void

    .line 105
    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/f;->a()Lcom/ss/android/downloadlib/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 107
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "report_download_cancel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    const-string v1, ""

    const/16 v3, 0x3f4

    if-ne v0, v2, :cond_2c

    .line 108
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {v2, v3, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcom/ss/android/downloadlib/e/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto :goto_38

    .line 110
    :cond_2c
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {v2, v3, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcom/ss/android/downloadlib/e/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 112
    :goto_38
    return-void
.end method

.method public a()Z
    .registers 2

    .line 130
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b;->a()Lcom/ss/android/downloadlib/addownload/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b;->b()Z

    move-result v0

    return v0
.end method

.method public a(IZ)Z
    .registers 3

    .line 92
    nop

    .line 93
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->n()Lcom/ss/android/a/a/a/d;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 94
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->n()Lcom/ss/android/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/ss/android/a/a/a/d;->a(Z)Z

    move-result p1

    goto :goto_11

    .line 93
    :cond_10
    const/4 p1, 0x0

    .line 96
    :goto_11
    return p1
.end method
