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

    .prologue
    .line 104
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1$1;->a:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1$1;->a:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1;

    iget-object v0, v0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->be()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 110
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1$1;->a:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1;

    iget-object v0, v0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver$1$1;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->b(Lcom/ss/android/socialbase/downloader/g/c;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    .line 115
    :cond_11
    :goto_11
    return-void

    .line 112
    :catch_12
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11
.end method
