.class Lcom/sigmob/sdk/base/services/c;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;JLcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 15

    const-string v0, "1"

    const-string v1, "app_install_start"

    if-eqz p4, :cond_f8

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/services/c;->a(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/sigmob/sdk/base/common/l;->a(Landroid/app/DownloadManager;J)Ljava/util/Map;

    move-result-object p2

    sget-object p3, Lcom/sigmob/sdk/base/common/a;->z:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p4, p3}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    const-string p3, "0"

    const-string v2, "download_end"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "download info is null"

    if-eqz p2, :cond_de

    const-string v6, "fileName"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "status"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "reason"

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "uri"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    if-eqz v6, :cond_a2

    const/16 v6, 0x8

    if-ne v7, v6, :cond_a2

    :try_start_4b
    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/e;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p4}, Lcom/sigmob/sdk/base/common/l;->b(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    invoke-static {p4, v2, p1, v0}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    sget-object p2, Lcom/sigmob/sdk/base/common/a;->A:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p4, p2}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    if-eqz p1, :cond_85

    new-instance p2, Ljava/io/File;

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/sigmob/sdk/common/f/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_85
    invoke-static {p4, v1, p1, v0}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_4b .. :try_end_88} :catchall_89

    goto :goto_a1

    :catchall_89
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object p2, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_INSTALL_FAIL:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1, p4}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {v1, p3, p4}, Lcom/sigmob/sdk/base/common/s;->b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :goto_a1
    return-void

    :cond_a2
    :try_start_a2
    const-string v0, "status %d, reason %d"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    const/4 v6, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/e;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/sdk/common/f/e;->b(Ljava/lang/String;)Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDownloadComplete:fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_d5
    .catchall {:try_start_a2 .. :try_end_d5} :catchall_d6

    goto :goto_de

    :catchall_d6
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_de
    :goto_de
    :try_start_de
    const-string p2, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {p1, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_e7
    .catchall {:try_start_de .. :try_end_e7} :catchall_e8

    goto :goto_f0

    :catchall_e8
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_f0
    const-string p1, "download_failed"

    invoke-static {p1, v3, v5, p4}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {v2, p3, p4}, Lcom/sigmob/sdk/base/common/s;->b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_f8
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Landroid/app/DownloadManager;
    .registers 3

    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    return-object p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const-string v0, "extra_download_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/l;->b(JLjava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/common/f/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_39

    instance-of v5, v4, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v5, :cond_39

    move-object v2, v4

    check-cast v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :cond_39
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/sdk/common/f/e;->b(Ljava/lang/String;)Z

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_62

    goto :goto_56

    :pswitch_4d
    const-string v4, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_56

    const/4 v3, 0x0

    :cond_56
    :goto_56
    packed-switch v3, :pswitch_data_68

    goto :goto_60

    :pswitch_5a
    if-nez v2, :cond_5d

    return-void

    :cond_5d
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sigmob/sdk/base/services/c;->a(Landroid/content/Context;JLcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :goto_60
    return-void

    nop

    :pswitch_data_62
    .packed-switch 0x4a702ceb
        :pswitch_4d
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5a
    .end packed-switch
.end method
