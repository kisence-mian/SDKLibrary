.class public Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;
.super Landroid/app/Activity;
.source "DownloadTaskDeleteActivity.java"


# instance fields
.field private a:Lcom/ss/android/socialbase/appdownloader/c/k;

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 4

    .line 53
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 55
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V
    .registers 6

    .line 162
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->b()Lcom/ss/android/socialbase/appdownloader/c/d;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_d

    .line 164
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 167
    :cond_d
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadNotificationEventListener(I)Lcom/ss/android/socialbase/downloader/depend/ab;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_22

    .line 169
    const/16 v1, 0xa

    const-string v2, ""

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/ss/android/socialbase/downloader/depend/ab;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_22
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 173
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->cancel(I)V

    .line 174
    :cond_33
    return-void
.end method

.method private b()V
    .registers 14

    .line 73
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/k;

    if-nez v0, :cond_de

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->b:Landroid/content/Intent;

    if-nez v0, :cond_a

    goto/16 :goto_de

    .line 78
    :cond_a
    :try_start_a
    const-string v1, "extra_click_download_ids"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 79
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    .line 80
    if-nez v1, :cond_20

    .line 81
    return-void

    .line 83
    :cond_20
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 85
    const-string v0, "DeleteActivity"

    const-string v1, "Missing appName; skipping handle"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 89
    :cond_32
    const-string v4, "tt_appdownloader_notification_download_delete"

    invoke-static {p0, v4}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 90
    invoke-virtual {p0, v4}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/d;->a()Lcom/ss/android/socialbase/appdownloader/c/c;

    move-result-object v4

    .line 92
    const/4 v6, 0x0

    .line 93
    if-eqz v4, :cond_54

    .line 94
    invoke-interface {v4, p0}, Lcom/ss/android/socialbase/appdownloader/c/c;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/appdownloader/c/l;

    move-result-object v6

    .line 96
    :cond_54
    if-nez v6, :cond_5b

    .line 97
    new-instance v6, Lcom/ss/android/socialbase/appdownloader/d/a;

    invoke-direct {v6, p0}, Lcom/ss/android/socialbase/appdownloader/d/a;-><init>(Landroid/content/Context;)V

    .line 99
    :cond_5b
    if-eqz v6, :cond_d8

    .line 101
    const-string v4, "tt_appdownloader_tip"

    invoke-static {p0, v4}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 102
    const-string v7, "tt_appdownloader_label_ok"

    invoke-static {p0, v7}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 103
    const-string v8, "tt_appdownloader_label_cancel"

    invoke-static {p0, v8}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 106
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v9

    invoke-static {v9}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v9

    const-string v10, "cancel_with_net_opt"

    invoke-virtual {v9, v10, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v5, :cond_93

    .line 107
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->g()Z

    move-result v9

    if-eqz v9, :cond_93

    .line 108
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_93

    move v2, v5

    goto :goto_94

    :cond_93
    nop

    .line 109
    :goto_94
    if-eqz v2, :cond_b0

    .line 110
    const-string v3, "tt_appdownloader_label_reserve_wifi"

    invoke-static {p0, v3}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 111
    const-string v3, "tt_appdownloader_label_cancel_directly"

    invoke-static {p0, v3}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 112
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "tt_appdownloader_resume_in_wifi"

    invoke-static {p0, v5}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 115
    :cond_b0
    invoke-interface {v6, v4}, Lcom/ss/android/socialbase/appdownloader/c/l;->a(I)Lcom/ss/android/socialbase/appdownloader/c/l;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/ss/android/socialbase/appdownloader/c/l;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/c/l;

    move-result-object v3

    new-instance v4, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;-><init>(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;ZLcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    .line 116
    invoke-interface {v3, v7, v4}, Lcom/ss/android/socialbase/appdownloader/c/l;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c/l;

    move-result-object v3

    new-instance v4, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$2;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$2;-><init>(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;ZLcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    .line 136
    invoke-interface {v3, v8, v4}, Lcom/ss/android/socialbase/appdownloader/c/l;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c/l;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$1;-><init>(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;)V

    .line 146
    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/appdownloader/c/l;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/ss/android/socialbase/appdownloader/c/l;

    .line 152
    invoke-interface {v6}, Lcom/ss/android/socialbase/appdownloader/c/l;->a()Lcom/ss/android/socialbase/appdownloader/c/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/k;
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d8} :catch_d9

    .line 156
    :cond_d8
    goto :goto_dd

    .line 154
    :catch_d9
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    :goto_dd
    return-void

    .line 74
    :cond_de
    :goto_de
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a()V

    .line 46
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->setIntent(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->b:Landroid/content/Intent;

    .line 64
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->b()V

    .line 65
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/k;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/k;->b()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 66
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/k;

    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/k;->a()V

    goto :goto_23

    .line 67
    :cond_1c
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/k;

    if-nez v0, :cond_23

    .line 68
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->finish()V

    .line 70
    :cond_23
    :goto_23
    return-void
.end method
