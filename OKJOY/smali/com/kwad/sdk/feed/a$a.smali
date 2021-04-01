.class Lcom/kwad/sdk/feed/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/feed/widget/base/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/feed/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/feed/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/feed/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/a$a;->a:Lcom/kwad/sdk/feed/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/a$a;->a:Lcom/kwad/sdk/feed/a;

    invoke-static {v0}, Lcom/kwad/sdk/feed/a;->a(Lcom/kwad/sdk/feed/a;)Lcom/kwad/sdk/export/i/KsFeedAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/feed/a$a;->a:Lcom/kwad/sdk/feed/a;

    invoke-static {v0}, Lcom/kwad/sdk/feed/a;->a(Lcom/kwad/sdk/feed/a;)Lcom/kwad/sdk/export/i/KsFeedAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsFeedAd$AdInteractionListener;->onAdClicked()V

    :cond_11
    return-void
.end method

.method public onAdShow()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/a$a;->a:Lcom/kwad/sdk/feed/a;

    invoke-static {v0}, Lcom/kwad/sdk/feed/a;->a(Lcom/kwad/sdk/feed/a;)Lcom/kwad/sdk/export/i/KsFeedAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/feed/a$a;->a:Lcom/kwad/sdk/feed/a;

    invoke-static {v0}, Lcom/kwad/sdk/feed/a;->a(Lcom/kwad/sdk/feed/a;)Lcom/kwad/sdk/export/i/KsFeedAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsFeedAd$AdInteractionListener;->onAdShow()V

    :cond_11
    return-void
.end method

.method public onDislikeClicked()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/a$a;->a:Lcom/kwad/sdk/feed/a;

    invoke-static {v0}, Lcom/kwad/sdk/feed/a;->a(Lcom/kwad/sdk/feed/a;)Lcom/kwad/sdk/export/i/KsFeedAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/kwad/sdk/feed/a$a;->a:Lcom/kwad/sdk/feed/a;

    invoke-static {v0}, Lcom/kwad/sdk/feed/a;->a(Lcom/kwad/sdk/feed/a;)Lcom/kwad/sdk/export/i/KsFeedAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/export/i/KsFeedAd$AdInteractionListener;->onDislikeClicked()V

    iget-object v0, p0, Lcom/kwad/sdk/feed/a$a;->a:Lcom/kwad/sdk/feed/a;

    invoke-static {v0}, Lcom/kwad/sdk/feed/a;->b(Lcom/kwad/sdk/feed/a;)Lcom/kwad/sdk/feed/widget/base/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/kwad/sdk/feed/a$a;->a:Lcom/kwad/sdk/feed/a;

    invoke-static {v0}, Lcom/kwad/sdk/feed/a;->b(Lcom/kwad/sdk/feed/a;)Lcom/kwad/sdk/feed/widget/base/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kwad/sdk/feed/a$a;->a:Lcom/kwad/sdk/feed/a;

    invoke-static {v1}, Lcom/kwad/sdk/feed/a;->b(Lcom/kwad/sdk/feed/a;)Lcom/kwad/sdk/feed/widget/base/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_34
    return-void
.end method
