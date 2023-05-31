.class Lcom/ss/android/socialbase/appdownloader/d/b$2;
.super Landroid/content/BroadcastReceiver;
.source "DefaultDownloadLaunchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/d/b;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/appdownloader/d/b;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/d/b;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2;->a:Lcom/ss/android/socialbase/appdownloader/d/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 136
    :goto_a
    return-void

    .line 106
    :cond_b
    const-string v1, "LaunchResume"

    const-string v2, "onReceive : wifi connected !!!"

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 108
    new-instance v2, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;

    invoke-direct {v2, p0, v0}, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;-><init>(Lcom/ss/android/socialbase/appdownloader/d/b$2;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 131
    :try_start_1e
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2;->a:Lcom/ss/android/socialbase/appdownloader/d/b;

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/d/b;->b(Lcom/ss/android/socialbase/appdownloader/d/b;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_27} :catch_2e

    .line 135
    :goto_27
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2;->a:Lcom/ss/android/socialbase/appdownloader/d/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/appdownloader/d/b;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    goto :goto_a

    .line 132
    :catch_2e
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_27
.end method
