.class public Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;
.super Lcom/kwad/sdk/contentalliance/home/viewpager/c;
.source ""


# instance fields
.field private volatile f:Z

.field private volatile g:Z

.field private h:I

.field private i:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

.field private j:Lcom/kwad/sdk/b/d/a;

.field private k:Lcom/kwad/sdk/contentalliance/refreshview/e;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;

.field private m:Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;

.field private n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private o:Lcom/kwad/sdk/b/d/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/c;-><init>()V

    new-instance v0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$a;-><init>(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->l:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;

    new-instance v0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$b;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$b;-><init>(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->m:Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;

    new-instance v0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$c;-><init>(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;-><init>(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->o:Lcom/kwad/sdk/b/d/b;

    return-void
.end method

.method private a(I)V
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->f:Z

    if-eqz v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->h:I

    if-ge v0, p1, :cond_5

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->i:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->getAdapter()Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-lt p1, v0, :cond_5

    invoke-direct {p0, v1, v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->a(ZZ)V

    goto :goto_5
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->o()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->a(I)V

    return-void
.end method

.method private a(ZZ)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->f:Z

    iput-boolean p2, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->g:Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->j:Lcom/kwad/sdk/b/d/a;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/b/d/a;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->h:I

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->n()V

    return-void
.end method

.method static synthetic c(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)Lcom/kwad/sdk/contentalliance/refreshview/e;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->k:Lcom/kwad/sdk/contentalliance/refreshview/e;

    return-object v0
.end method

.method static synthetic d(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)Lcom/kwad/sdk/b/d/a;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->j:Lcom/kwad/sdk/b/d/a;

    return-object v0
.end method

.method static synthetic e(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->i:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    return-object v0
.end method

.method static synthetic f(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->l()V

    return-void
.end method

.method static synthetic g(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->g:Z

    return v0
.end method

.method static synthetic h(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->g:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->f:Z

    return-void
.end method

.method private m()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->f:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-direct {p0, v1, v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->a(ZZ)V

    goto :goto_5
.end method

.method private n()V
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->f:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->a(ZZ)V

    goto :goto_4
.end method

.method private o()V
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->f:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-direct {p0, v1, v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->a(ZZ)V

    goto :goto_5
.end method


# virtual methods
.method protected g()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/c;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/c;->e:Lcom/kwad/sdk/contentalliance/home/viewpager/d;

    iget-object v1, v0, Lcom/kwad/sdk/contentalliance/home/viewpager/d;->a:Lcom/kwad/sdk/b/d/a;

    iput-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->j:Lcom/kwad/sdk/b/d/a;

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/home/viewpager/d;->c:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->i:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->i:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->n:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/b/f/b;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->j:Lcom/kwad/sdk/b/d/a;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->o:Lcom/kwad/sdk/b/d/b;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/b/d/a;->a(Lcom/kwad/sdk/b/d/b;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/c;->e:Lcom/kwad/sdk/contentalliance/home/viewpager/d;

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/home/viewpager/d;->d:Lcom/kwad/sdk/contentalliance/refreshview/e;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->k:Lcom/kwad/sdk/contentalliance/refreshview/e;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->k:Lcom/kwad/sdk/contentalliance/refreshview/e;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->l:Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->setOnRefreshListener(Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout$h;)V

    :cond_2a
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->i:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->m:Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/b;->a(Lcom/kwad/sdk/contentalliance/home/viewpager/b$a;)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->m()V

    return-void
.end method

.method protected j()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->j()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->j:Lcom/kwad/sdk/b/d/a;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->o:Lcom/kwad/sdk/b/d/b;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/b/d/a;->b(Lcom/kwad/sdk/b/d/b;)V

    return-void
.end method
