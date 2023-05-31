.class public Lcom/kwad/sdk/core/download/b;
.super Lcom/ksad/download/c;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ksad/download/c;-><init>()V

    return-void
.end method

.method private g(Lcom/ksad/download/DownloadTask;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/e/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ksad/download/DownloadTask;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/ksad/download/DownloadTask;II)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/download/b;->g(Lcom/ksad/download/DownloadTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/download/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ksad/download/DownloadTask;Ljava/lang/String;ZII)V
    .registers 6

    return-void
.end method

.method public a(Lcom/ksad/download/DownloadTask;Ljava/lang/Throwable;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/download/b;->g(Lcom/ksad/download/DownloadTask;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/download/c;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Lcom/ksad/download/DownloadTask;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/download/b;->g(Lcom/ksad/download/DownloadTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/download/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ksad/download/DownloadTask;II)V
    .registers 4

    return-void
.end method

.method public c(Lcom/ksad/download/DownloadTask;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/download/b;->g(Lcom/ksad/download/DownloadTask;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getTargetFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/download/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/ksad/download/DownloadTask;II)V
    .registers 6

    const/4 v0, 0x0

    if-lez p3, :cond_a

    int-to-float v0, p2

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    int-to-float v1, p3

    div-float/2addr v0, v1

    float-to-int v0, v0

    :cond_a
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/download/b;->g(Lcom/ksad/download/DownloadTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/download/c;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public d(Lcom/ksad/download/DownloadTask;)V
    .registers 2

    return-void
.end method

.method public d(Lcom/ksad/download/DownloadTask;II)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/download/b;->g(Lcom/ksad/download/DownloadTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/download/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public e(Lcom/ksad/download/DownloadTask;)V
    .registers 3

    invoke-virtual {p1}, Lcom/ksad/download/DownloadTask;->getSmallFileSoFarBytes()I

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/download/b;->g(Lcom/ksad/download/DownloadTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/download/c;->d(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public f(Lcom/ksad/download/DownloadTask;)V
    .registers 2

    return-void
.end method
