.class Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1;
.super Ljava/lang/Object;
.source "DownloadReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1;->c:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 75
    if-nez v0, :cond_b

    .line 123
    :cond_a
    :goto_a
    return-void

    .line 78
    :cond_b
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->b()Lcom/ss/android/socialbase/appdownloader/c/d;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_1e

    .line 81
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1;->b:Landroid/content/Context;

    invoke-interface {v0, v4, v3}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    :cond_1e
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/downloader/downloader/f;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_a

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 87
    :cond_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 88
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 89
    if-eqz v0, :cond_30

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/appdownloader/c;->a(Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 90
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/f;->i(I)Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v4

    .line 91
    if-eqz v4, :cond_65

    invoke-interface {v4}, Lcom/ss/android/socialbase/downloader/d/z;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/m/f;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 92
    const/16 v5, 0x9

    const-string v6, ""

    invoke-interface {v4, v5, v0, v3, v6}, Lcom/ss/android/socialbase/downloader/d/z;->a(ILcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_65
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v4

    const-string v5, "install_queue_enable"

    invoke-virtual {v4, v5, v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_90

    .line 95
    :goto_75
    if-eqz v1, :cond_7e

    .line 96
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/i;->a()Lcom/ss/android/socialbase/appdownloader/i;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/ss/android/socialbase/appdownloader/i;->a(Lcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;)V

    .line 100
    :cond_7e
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1;->c:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;->a(Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1;

    invoke-direct {v2, p0, v0}, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1;-><init>(Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1;Lcom/ss/android/socialbase/downloader/g/c;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_a

    :cond_90
    move v1, v2

    .line 94
    goto :goto_75
.end method
