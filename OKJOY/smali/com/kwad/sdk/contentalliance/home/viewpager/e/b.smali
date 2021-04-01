.class public Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;
.super Lcom/kwad/sdk/contentalliance/home/viewpager/c;
.source ""


# instance fields
.field private f:I

.field private g:I

.field private h:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;->g:I

    return p1
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;)Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;->h:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    return-object v0
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;->f:I

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;)Lcom/kwad/sdk/contentalliance/home/viewpager/d;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/c;->e:Lcom/kwad/sdk/contentalliance/home/viewpager/d;

    return-object v0
.end method

.method static synthetic c(Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;)I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;->f:I

    return v0
.end method


# virtual methods
.method protected g()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/c;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/c;->e:Lcom/kwad/sdk/contentalliance/home/viewpager/d;

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/home/viewpager/d;->c:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;->h:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;->h:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    new-instance v1, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b$a;-><init>(Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/b/f/b;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;->h:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    new-instance v1, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b$b;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b$b;-><init>(Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/b/f/b;->setOnPageScrollEndListener(Lcom/kwad/sdk/b/f/b$h;)V

    return-void
.end method

.method protected i()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->i()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;->h:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->getAdapter()Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;->h:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->getAdapter()Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->a(Z)V

    :cond_15
    return-void
.end method
