.class Lcom/ss/android/socialbase/appdownloader/d/b$2;
.super Landroid/content/BroadcastReceiver;
.source "DefaultDownloadLaunchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/d/b;->b(Ljava/util/List;I)V
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

    .line 101
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2;->a:Lcom/ss/android/socialbase/appdownloader/d/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 105
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 106
    return-void

    .line 108
    :cond_b
    const-string p2, "LaunchResume"

    const-string v0, "onReceive : wifi connected !!!"

    invoke-static {p2, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    .line 110
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/appdownloader/d/b$2$1;-><init>(Lcom/ss/android/socialbase/appdownloader/d/b$2;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 135
    :try_start_1e
    iget-object p2, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2;->a:Lcom/ss/android/socialbase/appdownloader/d/b;

    invoke-static {p2}, Lcom/ss/android/socialbase/appdownloader/d/b;->b(Lcom/ss/android/socialbase/appdownloader/d/b;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_28

    .line 138
    goto :goto_2c

    .line 136
    :catchall_28
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    :goto_2c
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d/b$2;->a:Lcom/ss/android/socialbase/appdownloader/d/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/appdownloader/d/b;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 140
    return-void
.end method
