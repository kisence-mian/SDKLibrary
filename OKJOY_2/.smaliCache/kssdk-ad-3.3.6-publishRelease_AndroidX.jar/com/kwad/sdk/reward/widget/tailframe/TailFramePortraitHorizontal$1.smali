.class Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;
.super Lcom/kwad/sdk/core/download/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v1}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->a(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->c(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onDownloadFailed()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v1}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->a(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->c(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v1}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->a(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onDownloadFinished()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v1}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->a(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->d(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v1}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->c(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onIdle()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v1}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->a(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->c(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v1}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->a(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onInstalled()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v1}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->a(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->c(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/core/response/b/a;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onProgressUpdate(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->b(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v1}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->a(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/widget/tailframe/appbar/TailFrameBarAppPortraitHorizontal;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal$1;->a:Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;->c(Lcom/kwad/sdk/reward/widget/tailframe/TailFramePortraitHorizontal;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    return-void
.end method
