.class public Lcom/kwad/sdk/core/download/i/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/export/proxy/AdDownloadProxy;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/kwad/sdk/core/download/i/a;->a:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/kwad/sdk/e/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelDownload(Landroid/content/Context;Ljava/lang/String;Lcom/kwad/sdk/core/download/DownloadParams;)V
    .registers 4

    invoke-static {p1, p2}, Lcom/ksad/download/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public getDownloadFilePath(Lcom/kwad/sdk/core/download/DownloadParams;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p1, Lcom/kwad/sdk/core/download/DownloadParams;->mFileUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ksad/download/b;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/kwad/sdk/core/download/DownloadParams;->mFileUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/download/i/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public pauseDownload(Landroid/content/Context;Ljava/lang/String;Lcom/kwad/sdk/core/download/DownloadParams;)V
    .registers 4

    invoke-static {p1, p2}, Lcom/ksad/download/i/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public startDownload(Landroid/content/Context;Ljava/lang/String;Lcom/kwad/sdk/core/download/DownloadParams;)V
    .registers 6

    new-instance v0, Lcom/ksad/download/DownloadTask$DownloadRequest;

    iget-object v1, p3, Lcom/kwad/sdk/core/download/DownloadParams;->mFileUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ksad/download/DownloadTask$DownloadRequest;-><init>(Ljava/lang/String;)V

    iget-object v1, p3, Lcom/kwad/sdk/core/download/DownloadParams;->mFileUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/download/i/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksad/download/DownloadTask$DownloadRequest;->setDestinationFileName(Ljava/lang/String;)Lcom/ksad/download/DownloadTask$DownloadRequest;

    invoke-virtual {v0, p3}, Lcom/ksad/download/DownloadTask$DownloadRequest;->setTag(Ljava/io/Serializable;)Lcom/ksad/download/DownloadTask$DownloadRequest;

    iget-boolean v1, p0, Lcom/kwad/sdk/core/download/i/a;->a:Z

    if-eqz v1, :cond_1f

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ksad/download/DownloadTask$DownloadRequest;->setNotificationVisibility(I)Lcom/ksad/download/DownloadTask$DownloadRequest;

    :goto_1b
    invoke-static {p1, p2, v0}, Lcom/ksad/download/i/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ksad/download/DownloadTask$DownloadRequest;)V

    return-void

    :cond_1f
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ksad/download/DownloadTask$DownloadRequest;->setNotificationVisibility(I)Lcom/ksad/download/DownloadTask$DownloadRequest;

    goto :goto_1b
.end method
