.class Lcom/kwad/sdk/a/b/f$2;
.super Lcom/kwad/sdk/core/download/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/a/b/f;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/a/b/f;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/a/b/f$2;->a:Lcom/kwad/sdk/a/b/f;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/a/b/f$2;->a:Lcom/kwad/sdk/a/b/f;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/f;->c(Lcom/kwad/sdk/a/b/f;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/a/b/f$2;->a:Lcom/kwad/sdk/a/b/f;

    invoke-static {v1}, Lcom/kwad/sdk/a/b/f;->b(Lcom/kwad/sdk/a/b/f;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDownloadFinished()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/a/b/f$2;->a:Lcom/kwad/sdk/a/b/f;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/f;->d(Lcom/kwad/sdk/a/b/f;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/a/b/f$2;->a:Lcom/kwad/sdk/a/b/f;

    invoke-static {v1}, Lcom/kwad/sdk/a/b/f;->c(Lcom/kwad/sdk/a/b/f;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onIdle()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/a/b/f$2;->a:Lcom/kwad/sdk/a/b/f;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/f;->c(Lcom/kwad/sdk/a/b/f;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/a/b/f$2;->a:Lcom/kwad/sdk/a/b/f;

    invoke-static {v1}, Lcom/kwad/sdk/a/b/f;->b(Lcom/kwad/sdk/a/b/f;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInstalled()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/a/b/f$2;->a:Lcom/kwad/sdk/a/b/f;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/f;->c(Lcom/kwad/sdk/a/b/f;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u7acb\u5373\u6253\u5f00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onProgressUpdate(I)V
    .registers 2

    return-void
.end method
