.class public interface abstract Lcom/kwad/sdk/export/proxy/AdDownloadProxy;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract cancelDownload(Landroid/content/Context;Ljava/lang/String;Lcom/kwad/sdk/core/download/DownloadParams;)V
.end method

.method public abstract getDownloadFilePath(Lcom/kwad/sdk/core/download/DownloadParams;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract pauseDownload(Landroid/content/Context;Ljava/lang/String;Lcom/kwad/sdk/core/download/DownloadParams;)V
.end method

.method public abstract startDownload(Landroid/content/Context;Ljava/lang/String;Lcom/kwad/sdk/core/download/DownloadParams;)V
.end method
