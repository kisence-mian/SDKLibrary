.class public interface abstract Lcom/ss/android/socialbase/downloader/depend/l;
.super Ljava/lang/Object;
.source "IDownloadCompleteAidlHandler.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/depend/l$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
