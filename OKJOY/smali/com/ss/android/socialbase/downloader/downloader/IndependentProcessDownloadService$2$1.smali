.class Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$2$1;
.super Ljava/lang/Object;
.source "IndependentProcessDownloadService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$2;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$2;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$2$1;->a:Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->a(Z)Z

    .line 101
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binderDied:"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$2$1;->a:Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$2;

    iget-object v0, v0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$2;->a:Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->b(Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;)V

    .line 103
    return-void
.end method
