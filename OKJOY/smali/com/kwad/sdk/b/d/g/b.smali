.class public Lcom/kwad/sdk/b/d/g/b;
.super Lcom/kwad/sdk/b/d/d;
.source ""


# instance fields
.field private f:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;

.field private g:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

.field private h:Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected g()V
    .registers 4

    invoke-super {p0}, Lcom/kwad/sdk/b/d/d;->g()V

    const-string v0, "HomeViewPagerPresenter"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/b;->g:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    iget-object v1, p0, Lcom/kwad/sdk/b/d/d;->e:Lcom/kwad/sdk/b/d/e;

    iget-object v2, p0, Lcom/kwad/sdk/b/d/g/b;->f:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->a(Lcom/kwad/sdk/b/d/e;Lcom/kwad/sdk/contentalliance/refreshview/e;)V

    new-instance v0, Lcom/kwad/sdk/b/d/g/b$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/d/g/b$a;-><init>(Lcom/kwad/sdk/b/d/g/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/b;->h:Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/b;->g:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/b;->h:Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->a(Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;)V

    return-void
.end method

.method protected h()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->h()V

    const-string v0, "ksad_slide_play_view_pager"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/b;->g:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    const-string v0, "ksad_refresh_layout"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;

    iput-object v0, p0, Lcom/kwad/sdk/b/d/g/b;->f:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/b;->f:Lcom/kwad/sdk/contentalliance/refreshview/KsAdHotRefreshView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->setRefreshInitialOffset(F)V

    return-void
.end method

.method protected j()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->j()V

    const-string v0, "HomeViewPagerPresenter"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/b;->g:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    iget-object v1, p0, Lcom/kwad/sdk/b/d/g/b;->h:Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->b(Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/b;->g:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->m()V

    return-void
.end method
