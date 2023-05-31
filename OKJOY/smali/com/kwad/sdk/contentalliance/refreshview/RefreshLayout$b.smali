.class Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$b;
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

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$b;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$b;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->c(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$b;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->d(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$b;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->d(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;->a()V

    :cond_16
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$b;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->e(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x0

    move v1, v0

    :goto_20
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$b;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->e(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3f

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$b;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->e(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$i;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20

    :cond_3f
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$b;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;Z)Z

    return-void
.end method
