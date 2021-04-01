.class public Lcom/ss/android/downloadlib/c/b;
.super Ljava/lang/Object;
.source "NewDownloadCompletedEventDispatcher.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/d;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/c/b;->a:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;IJ)V
    .registers 17

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ss/android/downloadlib/c/b;->a:Landroid/content/Context;

    .line 45
    if-nez v0, :cond_5

    .line 85
    :cond_4
    :goto_4
    return-void

    .line 48
    :cond_5
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    if-eqz v0, :cond_4

    .line 53
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/b/c;->a(Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/downloadad/a/b/a;

    move-result-object v8

    .line 54
    if-nez v8, :cond_23

    .line 55
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->b()V

    goto :goto_4

    .line 58
    :cond_23
    packed-switch p2, :pswitch_data_90

    :pswitch_26
    goto :goto_4

    .line 60
    :pswitch_27
    invoke-static {v1, v8}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/downloadad/a/b/a;)V

    .line 62
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    invoke-static {}, Lcom/ss/android/downloadlib/a/b;->a()Lcom/ss/android/downloadlib/a/b;

    move-result-object v0

    invoke-virtual {v8}, Lcom/ss/android/downloadad/a/b/a;->a()J

    move-result-wide v2

    invoke-virtual {v8}, Lcom/ss/android/downloadad/a/b/a;->b()J

    move-result-wide v4

    .line 64
    invoke-virtual {v8}, Lcom/ss/android/downloadad/a/b/a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/ss/android/downloadad/a/b/a;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->n()Ljava/lang/String;

    move-result-object v9

    .line 63
    invoke-virtual/range {v0 .. v9}, Lcom/ss/android/downloadlib/a/b;->a(Lcom/ss/android/socialbase/downloader/g/c;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 68
    :pswitch_56
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "download_notification"

    const-string v2, "download_notification_pause"

    invoke-virtual {v0, v1, v2, v8}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_4

    .line 71
    :pswitch_62
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "download_notification"

    const-string v2, "download_notification_continue"

    invoke-virtual {v0, v1, v2, v8}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_4

    .line 74
    :pswitch_6e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/a;->a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/c;)Lorg/json/JSONObject;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    const-string v2, "download_notification"

    const-string v3, "download_notification_install"

    invoke-virtual {v1, v2, v3, v0, v8}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_4

    .line 79
    :pswitch_83
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "download_notification"

    const-string v2, "download_notification_click"

    invoke-virtual {v0, v1, v2, v8}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    goto/16 :goto_4

    .line 58
    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_6e
        :pswitch_26
        :pswitch_56
        :pswitch_62
        :pswitch_83
    .end packed-switch
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ss/android/downloadlib/c/b;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 118
    :cond_4
    :goto_4
    return-void

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/ss/android/downloadlib/c/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_4

    .line 116
    invoke-virtual {v0, p4}, Lcom/ss/android/socialbase/downloader/g/c;->d(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/ss/android/downloadlib/a/c;->a()Lcom/ss/android/downloadlib/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/c/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/ss/android/downloadlib/a/c;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_4
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 39
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/downloadlib/a;->a(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 6

    .prologue
    .line 99
    if-nez p1, :cond_3

    .line 104
    :goto_2
    return-void

    .line 102
    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/g;->a()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/g;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 103
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v2, 0x3f4

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/ss/android/downloadlib/d/a;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    goto :goto_2
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 122
    invoke-static {}, Lcom/ss/android/downloadlib/a/c;->a()Lcom/ss/android/downloadlib/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a/c;->b()Z

    move-result v0

    return v0
.end method

.method public a(IZ)Z
    .registers 5

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->n()Lcom/ss/android/a/a/a/c;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 91
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->n()Lcom/ss/android/a/a/a/c;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/ss/android/a/a/a/c;->a(Z)Z

    move-result v0

    .line 93
    :cond_f
    return v0
.end method
