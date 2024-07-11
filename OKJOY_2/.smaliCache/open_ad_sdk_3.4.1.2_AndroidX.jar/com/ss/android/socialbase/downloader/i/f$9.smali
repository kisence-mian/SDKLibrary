.class final Lcom/ss/android/socialbase/downloader/i/f$9;
.super Lcom/ss/android/socialbase/downloader/depend/l$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/m;)Lcom/ss/android/socialbase/downloader/depend/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/m;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/m;)V
    .registers 2

    .line 657
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$9;->a:Lcom/ss/android/socialbase/downloader/depend/m;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$9;->a:Lcom/ss/android/socialbase/downloader/depend/m;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/m;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_5
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_0 .. :try_end_5} :catch_7

    .line 664
    nop

    .line 665
    return-void

    .line 662
    :catch_7
    move-exception p1

    .line 663
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$9;->a:Lcom/ss/android/socialbase/downloader/depend/m;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/m;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1
.end method
