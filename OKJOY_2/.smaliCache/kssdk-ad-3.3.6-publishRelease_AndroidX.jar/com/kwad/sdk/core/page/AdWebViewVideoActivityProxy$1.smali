.class Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;
.super Lcom/kwad/sdk/core/download/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/response/model/AdInfo;

.field final synthetic b:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;Lcom/kwad/sdk/core/response/model/AdInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;->b:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    iput-object p2, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;->a:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;->b:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    # getter for: Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mProgressbar:Lcom/kwad/sdk/widget/DownloadProgressBar;
    invoke-static {v0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->access$000(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)Lcom/kwad/sdk/widget/DownloadProgressBar;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/DownloadProgressBar;->setProgress(F)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;->b:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    # getter for: Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mProgressbar:Lcom/kwad/sdk/widget/DownloadProgressBar;
    invoke-static {v0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->access$000(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)Lcom/kwad/sdk/widget/DownloadProgressBar;

    move-result-object v0

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/widget/DownloadProgressBar;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadFailed()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;->b:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    # getter for: Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mProgressbar:Lcom/kwad/sdk/widget/DownloadProgressBar;
    invoke-static {v0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->access$000(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)Lcom/kwad/sdk/widget/DownloadProgressBar;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/DownloadProgressBar;->setProgress(F)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;->b:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    # getter for: Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mProgressbar:Lcom/kwad/sdk/widget/DownloadProgressBar;
    invoke-static {v0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->access$000(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)Lcom/kwad/sdk/widget/DownloadProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;->a:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/DownloadProgressBar;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadFinished()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;->b:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    # getter for: Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mProgressbar:Lcom/kwad/sdk/widget/DownloadProgressBar;
    invoke-static {v0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->access$000(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)Lcom/kwad/sdk/widget/DownloadProgressBar;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/DownloadProgressBar;->setProgress(F)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;->b:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    # getter for: Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mProgressbar:Lcom/kwad/sdk/widget/DownloadProgressBar;
    invoke-static {v0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->access$000(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)Lcom/kwad/sdk/widget/DownloadProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;->b:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    # getter for: Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;
    invoke-static {v1}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->access$100(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/DownloadProgressBar;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onIdle()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;->b:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    # getter for: Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mProgressbar:Lcom/kwad/sdk/widget/DownloadProgressBar;
    invoke-static {v0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->access$000(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)Lcom/kwad/sdk/widget/DownloadProgressBar;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/DownloadProgressBar;->setProgress(F)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;->b:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    # getter for: Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mProgressbar:Lcom/kwad/sdk/widget/DownloadProgressBar;
    invoke-static {v0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->access$000(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)Lcom/kwad/sdk/widget/DownloadProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;->a:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/DownloadProgressBar;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onInstalled()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;->b:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    # getter for: Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mProgressbar:Lcom/kwad/sdk/widget/DownloadProgressBar;
    invoke-static {v0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->access$000(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)Lcom/kwad/sdk/widget/DownloadProgressBar;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/DownloadProgressBar;->setProgress(F)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;->b:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    # getter for: Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mProgressbar:Lcom/kwad/sdk/widget/DownloadProgressBar;
    invoke-static {v0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->access$000(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)Lcom/kwad/sdk/widget/DownloadProgressBar;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/core/response/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/DownloadProgressBar;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onProgressUpdate(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;->b:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    # getter for: Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mProgressbar:Lcom/kwad/sdk/widget/DownloadProgressBar;
    invoke-static {v0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->access$000(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)Lcom/kwad/sdk/widget/DownloadProgressBar;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/DownloadProgressBar;->setProgress(F)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy$1;->b:Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;

    # getter for: Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->mProgressbar:Lcom/kwad/sdk/widget/DownloadProgressBar;
    invoke-static {v0}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->access$000(Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;)Lcom/kwad/sdk/widget/DownloadProgressBar;

    move-result-object v0

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/widget/DownloadProgressBar;->setText(Ljava/lang/String;)V

    return-void
.end method
