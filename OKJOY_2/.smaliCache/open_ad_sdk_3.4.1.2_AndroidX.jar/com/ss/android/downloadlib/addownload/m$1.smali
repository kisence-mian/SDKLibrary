.class final Lcom/ss/android/downloadlib/addownload/m$1;
.super Ljava/lang/Object;
.source "ReverseWifiHelper.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/m;->a(Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/downloadlib/addownload/d/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ss/android/downloadad/a/b/b;

.field final synthetic c:Lcom/ss/android/downloadlib/addownload/d/c;


# direct methods
.method constructor <init>(ILcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/addownload/d/c;)V
    .registers 4

    .line 67
    iput p1, p0, Lcom/ss/android/downloadlib/addownload/m$1;->a:I

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/m$1;->b:Lcom/ss/android/downloadad/a/b/b;

    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/m$1;->c:Lcom/ss/android/downloadlib/addownload/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 70
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/m;->a(Lcom/ss/android/downloadlib/addownload/a/c;)V

    .line 71
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadlib/addownload/m$1;->a:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_29

    .line 73
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->startPauseReserveOnWifi()V

    .line 74
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/r;->a()Lcom/ss/android/socialbase/downloader/impls/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 75
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/m$1;->b:Lcom/ss/android/downloadad/a/b/b;

    const-string v2, "pause_reserve_wifi_confirm"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 77
    :cond_29
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/m$1;->c:Lcom/ss/android/downloadlib/addownload/d/c;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/m$1;->b:Lcom/ss/android/downloadad/a/b/b;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/addownload/d/c;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 78
    return-void
.end method

.method public b()V
    .registers 4

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/m;->a(Lcom/ss/android/downloadlib/addownload/a/c;)V

    .line 83
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadlib/addownload/m$1;->a:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_17

    .line 86
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->stopPauseReserveOnWifi()V

    .line 88
    :cond_17
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/m$1;->b:Lcom/ss/android/downloadad/a/b/b;

    const-string v2, "pause_reserve_wifi_cancel"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 89
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/m$1;->c:Lcom/ss/android/downloadlib/addownload/d/c;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/m$1;->b:Lcom/ss/android/downloadad/a/b/b;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/addownload/d/c;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 90
    return-void
.end method
