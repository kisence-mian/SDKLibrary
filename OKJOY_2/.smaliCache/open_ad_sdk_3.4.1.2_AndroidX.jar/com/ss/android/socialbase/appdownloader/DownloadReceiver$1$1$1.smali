.class Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1$1;
.super Ljava/lang/Object;
.source "DownloadReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1$1;->a:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1$1;->a:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1;

    iget-object v0, v0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isSavePathRedirected()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 115
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1$1;->a:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1;

    iget-object v0, v0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 119
    :cond_11
    goto :goto_16

    .line 117
    :catchall_12
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    :goto_16
    return-void
.end method
