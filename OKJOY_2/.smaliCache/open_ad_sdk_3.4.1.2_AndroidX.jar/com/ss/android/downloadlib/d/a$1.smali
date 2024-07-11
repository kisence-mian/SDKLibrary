.class Lcom/ss/android/downloadlib/d/a$1;
.super Ljava/lang/Object;
.source "ApkModifyNameManager.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/d/a;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field final synthetic b:Lcom/ss/android/downloadlib/d/a;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/d/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3

    .line 96
    iput-object p1, p0, Lcom/ss/android/downloadlib/d/a$1;->b:Lcom/ss/android/downloadlib/d/a;

    iput-object p2, p0, Lcom/ss/android/downloadlib/d/a$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    .line 99
    if-eqz p2, :cond_16

    .line 100
    iget-object p1, p0, Lcom/ss/android/downloadlib/d/a$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "file_content_uri"

    invoke-virtual {p1, v0, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->x()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/downloadlib/d/a$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 103
    :cond_16
    return-void
.end method
