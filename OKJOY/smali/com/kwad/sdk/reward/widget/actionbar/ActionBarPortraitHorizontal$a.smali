.class Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/nativead/KsAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;->getAppDownloadListener()Lcom/kwad/sdk/nativead/KsAppDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFinished()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;->b(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/c/g/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;->c(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onIdle()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;->b(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;

    invoke-static {v1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;->a(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;->c(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onInstalled()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;->b(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/c/g/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;->c(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onProgressUpdate(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;->b(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    invoke-static {p1}, Lcom/kwad/sdk/c/g/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;->c(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarPortraitHorizontal;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
