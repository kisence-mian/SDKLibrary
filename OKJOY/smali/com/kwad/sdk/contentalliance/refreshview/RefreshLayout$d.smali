.class Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$d;
.super Landroid/view/animation/Animation;
.source ""


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

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$d;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$d;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    sget-object v0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$f;->a:[I

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$d;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->g(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$RefreshStyle;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$d;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->f(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;FFF)V

    goto :goto_8

    :cond_2a
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$d;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;)F

    move-result v1

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$d;->a:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;

    iget-object v2, v2, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2, p1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;FFF)V

    goto :goto_8
.end method
