.class public Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;
.super Landroid/app/Activity;
.source "DownloadTaskDeleteActivity.java"


# instance fields
.field private a:Lcom/ss/android/socialbase/appdownloader/c/j;

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 50
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 52
    return-void
.end method

.method private b()V
    .registers 8

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/j;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->b:Landroid/content/Intent;

    if-nez v0, :cond_9

    .line 135
    :cond_8
    :goto_8
    return-void

    .line 73
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->b:Landroid/content/Intent;

    const-string v1, "extra_click_download_ids"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 74
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_8

    .line 78
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->i()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 80
    const-string v0, "DeleteActivity"

    const-string v1, "Missing appName; skipping handle"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_31} :catch_32

    goto :goto_8

    .line 130
    :catch_32
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 84
    :cond_37
    :try_start_37
    const-string v3, "appdownloader_notification_download_delete"

    invoke-static {p0, v3}, Lcom/ss/android/socialbase/appdownloader/k;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 85
    invoke-virtual {p0, v3}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->a()Lcom/ss/android/socialbase/appdownloader/c/c;

    move-result-object v4

    .line 87
    const/4 v0, 0x0

    .line 88
    if-eqz v4, :cond_5a

    .line 89
    invoke-interface {v4, p0}, Lcom/ss/android/socialbase/appdownloader/c/c;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/appdownloader/c/k;

    move-result-object v0

    .line 91
    :cond_5a
    if-nez v0, :cond_61

    .line 92
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/d/a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/appdownloader/d/a;-><init>(Landroid/content/Context;)V

    .line 94
    :cond_61
    if-eqz v0, :cond_8

    .line 96
    const-string v4, "appdownloader_tip"

    invoke-static {p0, v4}, Lcom/ss/android/socialbase/appdownloader/k;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 97
    const-string v5, "appdownloader_label_ok"

    invoke-static {p0, v5}, Lcom/ss/android/socialbase/appdownloader/k;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 98
    const-string v6, "appdownloader_label_cancel"

    invoke-static {p0, v6}, Lcom/ss/android/socialbase/appdownloader/k;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 100
    invoke-interface {v0, v4}, Lcom/ss/android/socialbase/appdownloader/c/k;->a(I)Lcom/ss/android/socialbase/appdownloader/c/k;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/ss/android/socialbase/appdownloader/c/k;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/c/k;

    move-result-object v3

    new-instance v4, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;

    invoke-direct {v4, p0, v2, v1}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;-><init>(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;Lcom/ss/android/socialbase/downloader/g/c;I)V

    .line 101
    invoke-interface {v3, v5, v4}, Lcom/ss/android/socialbase/appdownloader/c/k;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c/k;

    move-result-object v1

    new-instance v2, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$2;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$2;-><init>(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;)V

    .line 117
    invoke-interface {v1, v6, v2}, Lcom/ss/android/socialbase/appdownloader/c/k;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c/k;

    move-result-object v1

    new-instance v2, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$1;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$1;-><init>(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;)V

    .line 122
    invoke-interface {v1, v2}, Lcom/ss/android/socialbase/appdownloader/c/k;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/ss/android/socialbase/appdownloader/c/k;

    .line 128
    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/k;->a()Lcom/ss/android/socialbase/appdownloader/c/j;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/j;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_9d} :catch_32

    goto/16 :goto_8
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a()V

    .line 41
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->setIntent(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 57
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->b:Landroid/content/Intent;

    .line 59
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->b()V

    .line 60
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/j;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/j;

    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/j;->b()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 61
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/j;

    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/j;->a()V

    .line 65
    :cond_1d
    :goto_1d
    return-void

    .line 62
    :cond_1e
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/j;

    if-nez v0, :cond_1d

    .line 63
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->finish()V

    goto :goto_1d
.end method
