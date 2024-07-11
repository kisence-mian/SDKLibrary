.class final Lcom/ss/android/socialbase/downloader/i/f$8;
.super Ljava/lang/Object;
.source "IPCUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/l;)Lcom/ss/android/socialbase/downloader/depend/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/l;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/l;)V
    .registers 2

    .line 631
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/f$8;->a:Lcom/ss/android/socialbase/downloader/depend/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$8;->a:Lcom/ss/android/socialbase/downloader/depend/l;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/l;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 638
    nop

    .line 639
    return-void

    .line 636
    :catch_7
    move-exception p1

    .line 637
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x3f0

    invoke-direct {v0, v1, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/f$8;->a:Lcom/ss/android/socialbase/downloader/depend/l;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/l;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 645
    :catch_7
    move-exception p1

    .line 646
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 648
    const/4 p1, 0x0

    return p1
.end method
