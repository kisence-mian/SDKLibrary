.class final Lcom/ss/android/socialbase/downloader/i/f$26;
.super Lcom/ss/android/socialbase/downloader/depend/ag$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/ah;)Lcom/ss/android/socialbase/downloader/depend/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/ah;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/ah;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$26;->a:Lcom/ss/android/socialbase/downloader/depend/ah;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/ag$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$26;->a:Lcom/ss/android/socialbase/downloader/depend/ah;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/ah;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$26;->a:Lcom/ss/android/socialbase/downloader/depend/ah;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/ah;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$26;->a:Lcom/ss/android/socialbase/downloader/depend/ah;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/ah;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1
.end method
