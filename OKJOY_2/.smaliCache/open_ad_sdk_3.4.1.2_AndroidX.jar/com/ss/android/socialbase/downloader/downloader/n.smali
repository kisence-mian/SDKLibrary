.class public interface abstract Lcom/ss/android/socialbase/downloader/downloader/n;
.super Ljava/lang/Object;
.source "IDownloadServiceHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ss/android/socialbase/downloader/downloader/DownloadService;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public abstract a(I)V
.end method

.method public abstract a(ILandroid/app/Notification;)V
.end method

.method public abstract a(Landroid/content/Intent;II)V
.end method

.method public abstract a(Lcom/ss/android/socialbase/downloader/downloader/m;)V
.end method

.method public abstract a(Ljava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract a(Z)V
.end method

.method public abstract a()Z
.end method

.method public abstract b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
.end method

.method public abstract b()Z
.end method

.method public abstract c()V
.end method

.method public abstract c(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
.end method

.method public abstract d()V
.end method

.method public abstract f()V
.end method
