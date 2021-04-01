.class Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/nativead/KsAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;->getAppDownloadListener()Lcom/kwad/sdk/nativead/KsAppDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFinished()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;->b(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/c/g/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;->c(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onIdle()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;->b(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;

    invoke-static {v1}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;->a(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/c/g/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;->c(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onInstalled()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;->b(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/c/g/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;->c(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onProgressUpdate(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;->b(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;)Lcom/kwad/sdk/core/page/widget/TextProgressBar;

    move-result-object v0

    invoke-static {p1}, Lcom/kwad/sdk/c/g/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait$a;->a:Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;

    invoke-static {v0}, Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;->c(Lcom/kwad/sdk/reward/widget/actionbar/ActionBarAppPortrait;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
