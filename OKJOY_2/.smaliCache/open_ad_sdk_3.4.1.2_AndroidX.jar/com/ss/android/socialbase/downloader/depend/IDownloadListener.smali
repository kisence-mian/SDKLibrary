.class public interface abstract Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;
.super Ljava/lang/Object;
.source "IDownloadListener.java"


# virtual methods
.method public abstract onCanceled(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
.end method

.method public abstract onFailed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
.end method

.method public abstract onFirstStart(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
.end method

.method public abstract onFirstSuccess(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
.end method

.method public abstract onPause(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
.end method

.method public abstract onPrepare(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
.end method

.method public abstract onProgress(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
.end method

.method public abstract onRetry(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
.end method

.method public abstract onRetryDelay(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
.end method

.method public abstract onStart(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
.end method

.method public abstract onSuccessed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
.end method
