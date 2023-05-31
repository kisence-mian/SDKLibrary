.class final Lcom/mintegral/msdk/mtgdownload/c$a;
.super Landroid/os/Handler;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgdownload/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgdownload/c;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgdownload/c;)V
    .registers 2

    .prologue
    .line 461
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/c$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 13

    .prologue
    const/high16 v2, 0x8000000

    const/16 v6, 0x18

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 466
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c8

    .line 548
    :goto_c
    return-void

    .line 468
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mintegral/msdk/mtgdownload/b$a;

    .line 469
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 471
    :try_start_13
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "filename"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 472
    sget-object v1, Lcom/mintegral/msdk/mtgdownload/c;->a:Ljava/lang/String;

    const-string v4, "Cancel old notification...."

    invoke-static {v1, v4}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v4, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    const/high16 v1, 0x10000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_30} :catch_fc
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_30} :catch_143

    .line 476
    :try_start_30
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgdownload/c;->b(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/Service;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 477
    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/c;->m(Landroid/content/Context;)I

    move-result v5

    .line 478
    if-lt v5, v6, :cond_122

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v6, :cond_122

    .line 479
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".mtgFileProvider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v5, v6}, Lcom/mintegral/msdk/base/utils/MTGFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 480
    if-eqz v1, :cond_73

    .line 481
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_73} :catch_132
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_73} :catch_143

    .line 490
    :cond_73
    :goto_73
    :try_start_73
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    .line 491
    invoke-static {v1}, Lcom/mintegral/msdk/mtgdownload/c;->b(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/Service;

    move-result-object v1

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v1, v5, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 494
    iget-boolean v5, v0, Lcom/mintegral/msdk/mtgdownload/b$a;->n:Z

    if-eqz v5, :cond_146

    .line 495
    iget-object v5, p0, Lcom/mintegral/msdk/mtgdownload/c$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v5}, Lcom/mintegral/msdk/mtgdownload/c;->b(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/Service;

    move-result-object v5

    sget-object v6, Lcom/mintegral/msdk/mtgdownload/f;->k:Ljava/lang/String;

    invoke-static {v5, v6, v1}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v1

    .line 499
    :goto_90
    const/16 v5, 0x10

    iput v5, v1, Landroid/app/Notification;->flags:I

    .line 501
    iget-object v5, p0, Lcom/mintegral/msdk/mtgdownload/c$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v5}, Lcom/mintegral/msdk/mtgdownload/c;->c(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/NotificationManager;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 503
    sget-object v1, Lcom/mintegral/msdk/mtgdownload/c;->a:Ljava/lang/String;

    const-string v5, "Show new  notification...."

    invoke-static {v1, v5}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgdownload/c;->a(Lcom/mintegral/msdk/mtgdownload/c;)Lcom/mintegral/msdk/mtgdownload/e;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgdownload/c;->b(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/Service;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;)Z

    move-result v1

    .line 506
    sget-object v5, Lcom/mintegral/msdk/mtgdownload/c;->a:Ljava/lang/String;

    const-string v6, "isAppOnForeground = %1$B"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 507
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    .line 506
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    if-eqz v1, :cond_e4

    iget-boolean v1, v0, Lcom/mintegral/msdk/mtgdownload/b$a;->n:Z

    if-nez v1, :cond_e4

    .line 514
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgdownload/c;->c(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/NotificationManager;

    move-result-object v1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 515
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgdownload/c;->b(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/Service;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    .line 518
    :cond_e4
    sget-object v1, Lcom/mintegral/msdk/mtgdownload/c;->a:Ljava/lang/String;

    const-string v4, "%1$10s downloaded. Saved to: %2$s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/b$a;->c:Ljava/lang/String;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_fa} :catch_fc
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_fa} :catch_143

    goto/16 :goto_c

    .line 520
    :catch_fc
    move-exception v0

    .line 521
    sget-object v1, Lcom/mintegral/msdk/mtgdownload/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can not install. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/c;->c(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/NotificationManager;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_c

    .line 485
    :cond_122
    :try_start_122
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_130} :catch_132
    .catch Ljava/lang/Throwable; {:try_start_122 .. :try_end_130} :catch_143

    goto/16 :goto_73

    .line 488
    :catch_132
    move-exception v1

    :try_start_133
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_73

    .line 527
    :catch_143
    move-exception v0

    goto/16 :goto_c

    .line 497
    :cond_146
    iget-object v5, p0, Lcom/mintegral/msdk/mtgdownload/c$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v5}, Lcom/mintegral/msdk/mtgdownload/c;->b(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/Service;

    move-result-object v5

    sget-object v6, Lcom/mintegral/msdk/mtgdownload/f;->j:Ljava/lang/String;

    invoke-static {v5, v6, v1}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_151} :catch_fc
    .catch Ljava/lang/Throwable; {:try_start_133 .. :try_end_151} :catch_143

    move-result-object v1

    goto/16 :goto_90

    .line 530
    :pswitch_154
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/mintegral/msdk/mtgdownload/b$a;

    .line 531
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 532
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 534
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/c;->c(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 536
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    .line 537
    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/c;->b(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/Service;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 536
    invoke-static {v0, v8, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgdownload/c;->b(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/Service;

    move-result-object v1

    sget-object v2, Lcom/mintegral/msdk/mtgdownload/f;->l:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    .line 540
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgdownload/c;->c(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/NotificationManager;

    move-result-object v1

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 541
    const-string v0, ".patch"

    const-string v1, ".apk"

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 542
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/c;->b(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/Service;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 543
    new-instance v0, Lcom/mintegral/msdk/mtgdownload/e$c;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgdownload/c;->a(Lcom/mintegral/msdk/mtgdownload/c;)Lcom/mintegral/msdk/mtgdownload/e;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/c$a;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgdownload/c;->b(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/Service;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/mtgdownload/e$c;-><init>(Lcom/mintegral/msdk/mtgdownload/e;Landroid/content/Context;ILcom/mintegral/msdk/mtgdownload/b$a;Ljava/lang/String;)V

    .line 544
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object v7, v1, v8

    aput-object v5, v1, v9

    aput-object v6, v1, v10

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgdownload/e$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_c

    .line 466
    nop

    :pswitch_data_1c8
    .packed-switch 0x5
        :pswitch_d
        :pswitch_154
    .end packed-switch
.end method
