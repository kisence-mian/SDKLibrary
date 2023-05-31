.class public Lcom/kwad/sdk/contentalliance/refreshview/e;
.super Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/contentalliance/refreshview/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/kwad/sdk/contentalliance/refreshview/f;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/kwad/sdk/e/p;->c(Landroid/content/Context;)I

    move-result v0

    neg-int v0, v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {p1, v1}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->setRefreshInitialOffset(F)V

    :cond_19
    return-void
.end method


# virtual methods
.method protected a(Landroid/util/AttributeSet;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ksad_content_alliance_shoot_refresh_view"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_slide_shoot_refresh_view"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->h:Landroid/view/View;

    instance-of v1, v0, Lcom/kwad/sdk/contentalliance/refreshview/d;

    if-eqz v1, :cond_38

    check-cast v0, Lcom/kwad/sdk/contentalliance/refreshview/d;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->i:Lcom/kwad/sdk/contentalliance/refreshview/d;

    return-void

    :cond_38
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "the refreshView must implement the interface IRefreshStatus"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/view/MotionEvent;)V
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_9
    return-void
.end method

.method protected b()Lcom/kwad/sdk/contentalliance/refreshview/b;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/contentalliance/refreshview/a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwad/sdk/contentalliance/refreshview/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public b(Landroid/view/MotionEvent;)V
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->a()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_9
    return-void
.end method

.method protected c(Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
