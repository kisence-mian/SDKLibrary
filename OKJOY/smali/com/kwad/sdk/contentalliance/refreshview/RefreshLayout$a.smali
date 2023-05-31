.class Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$a;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$a;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$a;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->b(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$a;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->b(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;->a()V

    :cond_19
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$a;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$a;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;Z)Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$a;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->i:Lcom/kwad/sdk/contentalliance/refreshview/d;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/refreshview/d;->e()V

    return-void
.end method
