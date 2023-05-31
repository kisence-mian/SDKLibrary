.class Lcom/ss/android/socialbase/downloader/downloader/DownloadService$1;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/ss/android/socialbase/downloader/downloader/DownloadService;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/DownloadService;Landroid/content/Intent;II)V
    .registers 5

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService$1;->d:Lcom/ss/android/socialbase/downloader/downloader/DownloadService;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService$1;->a:Landroid/content/Intent;

    iput p3, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService$1;->b:I

    iput p4, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService$1;->d:Lcom/ss/android/socialbase/downloader/downloader/DownloadService;

    iget-object v0, v0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_13

    .line 53
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService$1;->d:Lcom/ss/android/socialbase/downloader/downloader/DownloadService;

    iget-object v0, v0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/p;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService$1;->a:Landroid/content/Intent;

    iget v2, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService$1;->b:I

    iget v3, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService$1;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(Landroid/content/Intent;II)V

    .line 55
    :cond_13
    return-void
.end method
