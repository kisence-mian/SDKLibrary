.class Lcom/ksad/download/DownloadTask$1;
.super Lcom/kwai/filedownloader/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksad/download/DownloadTask;->instantiateDownloadTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksad/download/DownloadTask;


# direct methods
.method constructor <init>(Lcom/ksad/download/DownloadTask;)V
    .registers 2

    iput-object p1, p0, Lcom/ksad/download/DownloadTask$1;->a:Lcom/ksad/download/DownloadTask;

    invoke-direct {p0}, Lcom/kwai/filedownloader/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/kwai/filedownloader/a;)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/download/DownloadTask$1;->a:Lcom/ksad/download/DownloadTask;

    # invokes: Lcom/ksad/download/DownloadTask;->onStarted(Lcom/kwai/filedownloader/a;)V
    invoke-static {v0, p1}, Lcom/ksad/download/DownloadTask;->access$900(Lcom/ksad/download/DownloadTask;Lcom/kwai/filedownloader/a;)V

    return-void
.end method

.method protected a(Lcom/kwai/filedownloader/a;II)V
    .registers 5

    iget-object v0, p0, Lcom/ksad/download/DownloadTask$1;->a:Lcom/ksad/download/DownloadTask;

    # invokes: Lcom/ksad/download/DownloadTask;->onPending(Lcom/kwai/filedownloader/a;II)V
    invoke-static {v0, p1, p2, p3}, Lcom/ksad/download/DownloadTask;->access$1000(Lcom/ksad/download/DownloadTask;Lcom/kwai/filedownloader/a;II)V

    return-void
.end method

.method protected a(Lcom/kwai/filedownloader/a;Ljava/lang/String;ZII)V
    .registers 12

    iget-object v0, p0, Lcom/ksad/download/DownloadTask$1;->a:Lcom/ksad/download/DownloadTask;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/ksad/download/DownloadTask;->onConnected(Lcom/kwai/filedownloader/a;Ljava/lang/String;ZII)V
    invoke-static/range {v0 .. v5}, Lcom/ksad/download/DownloadTask;->access$800(Lcom/ksad/download/DownloadTask;Lcom/kwai/filedownloader/a;Ljava/lang/String;ZII)V

    return-void
.end method

.method protected a(Lcom/kwai/filedownloader/a;Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/download/DownloadTask$1;->a:Lcom/ksad/download/DownloadTask;

    # invokes: Lcom/ksad/download/DownloadTask;->onError(Lcom/kwai/filedownloader/a;Ljava/lang/Throwable;)V
    invoke-static {v0, p1, p2}, Lcom/ksad/download/DownloadTask;->access$1500(Lcom/ksad/download/DownloadTask;Lcom/kwai/filedownloader/a;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected b(Lcom/kwai/filedownloader/a;)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/download/DownloadTask$1;->a:Lcom/ksad/download/DownloadTask;

    # invokes: Lcom/ksad/download/DownloadTask;->onBlockCompleted(Lcom/kwai/filedownloader/a;)V
    invoke-static {v0, p1}, Lcom/ksad/download/DownloadTask;->access$1200(Lcom/ksad/download/DownloadTask;Lcom/kwai/filedownloader/a;)V

    return-void
.end method

.method protected b(Lcom/kwai/filedownloader/a;II)V
    .registers 5

    iget-object v0, p0, Lcom/ksad/download/DownloadTask$1;->a:Lcom/ksad/download/DownloadTask;

    # invokes: Lcom/ksad/download/DownloadTask;->onDownloading(Lcom/kwai/filedownloader/a;II)V
    invoke-static {v0, p1, p2, p3}, Lcom/ksad/download/DownloadTask;->access$1100(Lcom/ksad/download/DownloadTask;Lcom/kwai/filedownloader/a;II)V

    return-void
.end method

.method protected c(Lcom/kwai/filedownloader/a;)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/download/DownloadTask$1;->a:Lcom/ksad/download/DownloadTask;

    # invokes: Lcom/ksad/download/DownloadTask;->onCompleted(Lcom/kwai/filedownloader/a;)V
    invoke-static {v0, p1}, Lcom/ksad/download/DownloadTask;->access$1300(Lcom/ksad/download/DownloadTask;Lcom/kwai/filedownloader/a;)V

    return-void
.end method

.method protected c(Lcom/kwai/filedownloader/a;II)V
    .registers 5

    iget-object v0, p0, Lcom/ksad/download/DownloadTask$1;->a:Lcom/ksad/download/DownloadTask;

    # invokes: Lcom/ksad/download/DownloadTask;->onPause(Lcom/kwai/filedownloader/a;II)V
    invoke-static {v0, p1, p2, p3}, Lcom/ksad/download/DownloadTask;->access$1400(Lcom/ksad/download/DownloadTask;Lcom/kwai/filedownloader/a;II)V

    return-void
.end method

.method protected d(Lcom/kwai/filedownloader/a;)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/download/DownloadTask$1;->a:Lcom/ksad/download/DownloadTask;

    # invokes: Lcom/ksad/download/DownloadTask;->onWarn(Lcom/kwai/filedownloader/a;)V
    invoke-static {v0, p1}, Lcom/ksad/download/DownloadTask;->access$1600(Lcom/ksad/download/DownloadTask;Lcom/kwai/filedownloader/a;)V

    return-void
.end method
