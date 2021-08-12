.class Lcom/ss/android/socialbase/downloader/i/f$12$6;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f$12;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field final synthetic b:Lcom/ss/android/socialbase/downloader/i/f$12;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/i/f$12;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 192
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$12$6;->b:Lcom/ss/android/socialbase/downloader/i/f$12;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/i/f$12$6;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$12$6;->b:Lcom/ss/android/socialbase/downloader/i/f$12;

    iget-object v0, v0, Lcom/ss/android/socialbase/downloader/i/f$12;->a:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/i/f$12$6;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onProgress(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 196
    return-void
.end method
