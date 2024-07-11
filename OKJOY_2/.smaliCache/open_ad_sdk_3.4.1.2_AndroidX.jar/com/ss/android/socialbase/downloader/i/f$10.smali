.class final Lcom/ss/android/socialbase/downloader/i/f$10;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/ag;)Lcom/ss/android/socialbase/downloader/depend/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/ag;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/ag;)V
    .registers 2

    .line 677
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$10;->a:Lcom/ss/android/socialbase/downloader/depend/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3

    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$10;->a:Lcom/ss/android/socialbase/downloader/depend/ag;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/ag;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 683
    :catch_7
    move-exception p1

    .line 684
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 686
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3

    .line 692
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$10;->a:Lcom/ss/android/socialbase/downloader/depend/ag;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/ag;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 693
    :catch_7
    move-exception p1

    .line 694
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 696
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$10;->a:Lcom/ss/android/socialbase/downloader/depend/ag;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/ag;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 703
    :catch_7
    move-exception p1

    .line 704
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 706
    const/4 p1, 0x0

    return p1
.end method
