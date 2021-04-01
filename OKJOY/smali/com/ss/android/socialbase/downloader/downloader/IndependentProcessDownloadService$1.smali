.class Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$1;
.super Ljava/lang/Object;
.source "IndependentProcessDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->b()V
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
    .line 70
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$1;->a:Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService$1;->a:Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;->a(Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;)V

    .line 74
    return-void
.end method
