.class final Lcom/ss/android/socialbase/downloader/i/f$1;
.super Lcom/ss/android/socialbase/downloader/model/a$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->e(I)Lcom/ss/android/socialbase/downloader/constants/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListenerSize(Lcom/ss/android/socialbase/downloader/constants/g;)I

    move-result p1

    return p1
.end method

.method public a(II)Lcom/ss/android/socialbase/downloader/depend/i;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->e(I)Lcom/ss/android/socialbase/downloader/constants/g;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListenerByIndex(Lcom/ss/android/socialbase/downloader/constants/g;I)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object p2

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/g;->b:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/constants/g;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_14

    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    const/4 p1, 0x1

    :goto_15
    invoke-static {p2, p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/ss/android/socialbase/downloader/depend/e;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getChunkStrategy()Lcom/ss/android/socialbase/downloader/downloader/g;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/downloader/g;)Lcom/ss/android/socialbase/downloader/depend/e;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/depend/i;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->e(I)Lcom/ss/android/socialbase/downloader/constants/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getSingleDownloadListener(Lcom/ss/android/socialbase/downloader/constants/g;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/g;->b:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/constants/g;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_14

    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    const/4 p1, 0x1

    :goto_15
    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)Lcom/ss/android/socialbase/downloader/depend/i;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/ss/android/socialbase/downloader/depend/aa;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationEventListener()Lcom/ss/android/socialbase/downloader/depend/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/ab;)Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/ss/android/socialbase/downloader/depend/l;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadCompleteHandlerByIndex(I)Lcom/ss/android/socialbase/downloader/depend/m;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/m;)Lcom/ss/android/socialbase/downloader/depend/l;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/ss/android/socialbase/downloader/depend/ag;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/ah;)Lcom/ss/android/socialbase/downloader/depend/ag;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/ss/android/socialbase/downloader/depend/h;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getInterceptor()Lcom/ss/android/socialbase/downloader/depend/y;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/y;)Lcom/ss/android/socialbase/downloader/depend/h;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/ss/android/socialbase/downloader/depend/f;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDepend()Lcom/ss/android/socialbase/downloader/depend/n;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/n;)Lcom/ss/android/socialbase/downloader/depend/f;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/ss/android/socialbase/downloader/depend/v;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getForbiddenHandler()Lcom/ss/android/socialbase/downloader/depend/x;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/x;)Lcom/ss/android/socialbase/downloader/depend/v;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/ss/android/socialbase/downloader/depend/ai;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getRetryDelayTimeCalculator()Lcom/ss/android/socialbase/downloader/downloader/q;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/downloader/q;)Lcom/ss/android/socialbase/downloader/depend/ai;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/ss/android/socialbase/downloader/depend/p;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDiskSpaceHandler()Lcom/ss/android/socialbase/downloader/depend/r;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/r;)Lcom/ss/android/socialbase/downloader/depend/p;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/ss/android/socialbase/downloader/depend/j;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/z;)Lcom/ss/android/socialbase/downloader/depend/j;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/ss/android/socialbase/downloader/depend/g;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getFileUriProvider()Lcom/ss/android/socialbase/downloader/depend/t;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/t;)Lcom/ss/android/socialbase/downloader/depend/g;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadCompleteHandlers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
