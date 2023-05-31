.class Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$2;
.super Ljava/lang/Object;
.source "IndependentProcessDownloadService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$2;->a:Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->a(Z)Z

    .line 94
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected: "

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :try_start_d
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$2$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$2$1;-><init>(Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$2;)V

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_17

    .line 108
    :goto_16
    return-void

    .line 105
    :catch_17
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->a(Z)Z

    .line 113
    return-void
.end method
