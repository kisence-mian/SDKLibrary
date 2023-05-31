.class public Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;
.super Lcom/kwad/sdk/contentalliance/home/viewpager/b;
.source ""


# instance fields
.field private t0:Landroid/support/v4/app/Fragment;

.field private u0:Lcom/kwad/sdk/mvp/Presenter;

.field private v0:Lcom/kwad/sdk/contentalliance/home/viewpager/d;

.field private w0:Lcom/kwad/sdk/contentalliance/home/viewpager/a;

.field private x0:Lcom/kwad/sdk/b/d/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private n()V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/contentalliance/home/viewpager/d;

    invoke-direct {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/d;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->v0:Lcom/kwad/sdk/contentalliance/home/viewpager/d;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->v0:Lcom/kwad/sdk/contentalliance/home/viewpager/d;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->x0:Lcom/kwad/sdk/b/d/a;

    iput-object v1, v0, Lcom/kwad/sdk/contentalliance/home/viewpager/d;->a:Lcom/kwad/sdk/b/d/a;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->t0:Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Lcom/kwad/sdk/contentalliance/home/viewpager/d;->b:Landroid/support/v4/app/Fragment;

    iput-object p0, v0, Lcom/kwad/sdk/contentalliance/home/viewpager/d;->c:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->m0:Lcom/kwad/sdk/contentalliance/refreshview/e;

    iput-object v1, v0, Lcom/kwad/sdk/contentalliance/home/viewpager/d;->d:Lcom/kwad/sdk/contentalliance/refreshview/e;

    return-void
.end method

.method private o()V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/mvp/Presenter;

    invoke-direct {v0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->u0:Lcom/kwad/sdk/mvp/Presenter;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->u0:Lcom/kwad/sdk/mvp/Presenter;

    new-instance v1, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;

    invoke-direct {v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->u0:Lcom/kwad/sdk/mvp/Presenter;

    new-instance v1, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

    invoke-direct {v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->u0:Lcom/kwad/sdk/mvp/Presenter;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/mvp/Presenter;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/b/d/e;Lcom/kwad/sdk/contentalliance/refreshview/e;)V
    .registers 5
    .param p1    # Lcom/kwad/sdk/b/d/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/sdk/contentalliance/refreshview/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x1

    iget-object v0, p1, Lcom/kwad/sdk/b/d/e;->a:Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->t0:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->m0:Lcom/kwad/sdk/contentalliance/refreshview/e;

    iget-object v0, p1, Lcom/kwad/sdk/b/d/e;->b:Lcom/kwad/sdk/b/d/a;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->x0:Lcom/kwad/sdk/b/d/a;

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->j0:Z

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->k0:Z

    new-instance v0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->t0:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/a;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->w0:Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->w0:Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->n()V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->o()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->u0:Lcom/kwad/sdk/mvp/Presenter;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->v0:Lcom/kwad/sdk/contentalliance/home/viewpager/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->w0:Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->v0:Lcom/kwad/sdk/contentalliance/home/viewpager/d;

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/home/viewpager/d;->c:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    invoke-virtual {v0}, Lcom/kwad/sdk/b/f/b;->getCurrentItem()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->getAdapter()Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1c

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/b/f/b;->a(IZ)V

    :cond_1c
    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->w0:Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->a(Z)V

    :cond_8
    new-instance v0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->t0:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/a;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->w0:Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->w0:Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->w0:Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->a(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/support/v4/view/PagerAdapter;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->getAdapter()Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/kwad/sdk/contentalliance/home/viewpager/a;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->w0:Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    return-object v0
.end method

.method public m()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->u0:Lcom/kwad/sdk/mvp/Presenter;

    invoke-virtual {v0}, Lcom/kwad/sdk/mvp/Presenter;->b()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/b/f/b;->onDetachedFromWindow()V

    return-void
.end method
