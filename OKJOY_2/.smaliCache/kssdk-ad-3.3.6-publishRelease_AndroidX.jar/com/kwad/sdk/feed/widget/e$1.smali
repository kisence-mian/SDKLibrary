.class Lcom/kwad/sdk/feed/widget/e$1;
.super Lcom/kwad/sdk/core/download/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/feed/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/feed/widget/e;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/feed/widget/e;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/e;->b(Lcom/kwad/sdk/feed/widget/e;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/e;->c(Lcom/kwad/sdk/feed/widget/e;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/e;->c(Lcom/kwad/sdk/feed/widget/e;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/core/response/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onDownloadFailed()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/e;->b(Lcom/kwad/sdk/feed/widget/e;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v1}, Lcom/kwad/sdk/feed/widget/e;->e(Lcom/kwad/sdk/feed/widget/e;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/e;->b(Lcom/kwad/sdk/feed/widget/e;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/e;->c(Lcom/kwad/sdk/feed/widget/e;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onDownloadFinished()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/e;->b(Lcom/kwad/sdk/feed/widget/e;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/e;->c(Lcom/kwad/sdk/feed/widget/e;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/e;->c(Lcom/kwad/sdk/feed/widget/e;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v1}, Lcom/kwad/sdk/feed/widget/e;->d(Lcom/kwad/sdk/feed/widget/e;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v2}, Lcom/kwad/sdk/feed/widget/e;->c(Lcom/kwad/sdk/feed/widget/e;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onIdle()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/e;->b(Lcom/kwad/sdk/feed/widget/e;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v1}, Lcom/kwad/sdk/feed/widget/e;->a(Lcom/kwad/sdk/feed/widget/e;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInstalled()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/e;->b(Lcom/kwad/sdk/feed/widget/e;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/e;->c(Lcom/kwad/sdk/feed/widget/e;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/e;->c(Lcom/kwad/sdk/feed/widget/e;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/core/response/b/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v2}, Lcom/kwad/sdk/feed/widget/e;->c(Lcom/kwad/sdk/feed/widget/e;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onProgressUpdate(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/e;->b(Lcom/kwad/sdk/feed/widget/e;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/e;->c(Lcom/kwad/sdk/feed/widget/e;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/e$1;->a:Lcom/kwad/sdk/feed/widget/e;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/e;->c(Lcom/kwad/sdk/feed/widget/e;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    return-void
.end method