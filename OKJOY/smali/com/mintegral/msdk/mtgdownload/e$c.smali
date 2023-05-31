.class final Lcom/mintegral/msdk/mtgdownload/e$c;
.super Landroid/os/AsyncTask;
.source "DownloadTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgdownload/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field final synthetic c:Lcom/mintegral/msdk/mtgdownload/e;

.field private d:Lcom/mintegral/msdk/mtgdownload/b$a;

.field private e:Landroid/content/Context;

.field private f:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/mtgdownload/e;Landroid/content/Context;ILcom/mintegral/msdk/mtgdownload/b$a;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 572
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->c:Lcom/mintegral/msdk/mtgdownload/e;

    .line 573
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 574
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->e:Landroid/content/Context;

    .line 575
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->e:Landroid/content/Context;

    const-string v1, "notification"

    .line 576
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->f:Landroid/app/NotificationManager;

    .line 577
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->f:Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/j;->a(Landroid/app/NotificationManager;)V

    .line 578
    iput p3, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->a:I

    .line 579
    iput-object p4, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->d:Lcom/mintegral/msdk/mtgdownload/b$a;

    .line 580
    iput-object p5, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->b:Ljava/lang/String;

    .line 581
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 2606
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 564
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 7

    .prologue
    const/16 v2, 0x18

    const/4 v1, 0x1

    .line 564
    check-cast p1, Ljava/lang/Integer;

    .line 1613
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_104

    .line 1614
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1615
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_17} :catch_f7

    .line 1617
    :try_start_17
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/c;->m(Landroid/content/Context;)I

    move-result v1

    .line 1618
    if-lt v1, v2, :cond_d2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_d2

    .line 1619
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->e:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mtgFileProvider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/base/utils/MTGFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1620
    if-eqz v1, :cond_58

    .line 1621
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1622
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_58} :catch_e4
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_58} :catch_f7

    .line 1630
    :cond_58
    :goto_58
    :try_start_58
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->e:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1633
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->e:Landroid/content/Context;

    sget-object v3, Lcom/mintegral/msdk/mtgdownload/f;->h:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v1

    .line 1634
    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1635
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->f:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->a:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1636
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;)Z

    move-result v1

    .line 1637
    if-eqz v1, :cond_8c

    .line 1638
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->f:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1639
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1641
    :cond_8c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1642
    const-string v1, "filename"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1646
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1647
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1648
    iget v2, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->a:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 1649
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_a9} :catch_f7

    .line 1652
    :try_start_a9
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->c:Lcom/mintegral/msdk/mtgdownload/e;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/e;->a(Lcom/mintegral/msdk/mtgdownload/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->d:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c8

    .line 1653
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->c:Lcom/mintegral/msdk/mtgdownload/e;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/e;->a(Lcom/mintegral/msdk/mtgdownload/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->d:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 1655
    :cond_c8
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->c:Lcom/mintegral/msdk/mtgdownload/e;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->e:Landroid/content/Context;

    iget v2, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_d1} :catch_f9
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_d1} :catch_f7

    .line 1683
    :goto_d1
    return-void

    .line 1625
    :cond_d2
    :try_start_d2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_e2} :catch_e4
    .catch Ljava/lang/Throwable; {:try_start_d2 .. :try_end_e2} :catch_f7

    goto/16 :goto_58

    .line 1628
    :catch_e4
    move-exception v1

    :try_start_e5
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_58

    .line 564
    :catch_f7
    move-exception v0

    goto :goto_d1

    .line 1657
    :catch_f9
    move-exception v0

    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->c:Lcom/mintegral/msdk/mtgdownload/e;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->e:Landroid/content/Context;

    iget v2, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V

    goto :goto_d1

    .line 1661
    :cond_104
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->f:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1662
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1663
    const-string v1, "filename"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1667
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1668
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1669
    iget v2, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->a:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 1670
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_12a
    .catch Ljava/lang/Throwable; {:try_start_e5 .. :try_end_12a} :catch_f7

    .line 1673
    :try_start_12a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->c:Lcom/mintegral/msdk/mtgdownload/e;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/e;->a(Lcom/mintegral/msdk/mtgdownload/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->d:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_149

    .line 1674
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->c:Lcom/mintegral/msdk/mtgdownload/e;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/e;->a(Lcom/mintegral/msdk/mtgdownload/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->d:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 1676
    :cond_149
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->c:Lcom/mintegral/msdk/mtgdownload/e;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->e:Landroid/content/Context;

    iget v2, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V
    :try_end_152
    .catch Landroid/os/RemoteException; {:try_start_12a .. :try_end_152} :catch_154
    .catch Ljava/lang/Throwable; {:try_start_12a .. :try_end_152} :catch_f7

    goto/16 :goto_d1

    .line 1678
    :catch_154
    move-exception v0

    :try_start_155
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->c:Lcom/mintegral/msdk/mtgdownload/e;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->e:Landroid/content/Context;

    iget v2, p0, Lcom/mintegral/msdk/mtgdownload/e$c;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V
    :try_end_15e
    .catch Ljava/lang/Throwable; {:try_start_155 .. :try_end_15e} :catch_f7

    goto/16 :goto_d1
.end method

.method protected final onPreExecute()V
    .registers 1

    .prologue
    .line 586
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 587
    return-void
.end method
