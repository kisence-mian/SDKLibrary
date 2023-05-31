.class Lcom/kwad/sdk/b/d/g/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/b/d/g/c;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/d/g/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/d/g/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/d/g/c$b;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$b;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->d(Lcom/kwad/sdk/b/d/g/c;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2d

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$b;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->e(Lcom/kwad/sdk/b/d/g/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/e/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$b;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->f(Lcom/kwad/sdk/b/d/g/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/e/m;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$b;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->g(Lcom/kwad/sdk/b/d/g/c;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/m;->a(Landroid/content/Context;Z)V

    :cond_2d
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$b;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->b(Lcom/kwad/sdk/b/d/g/c;)I

    move-result v0

    if-ne v0, v4, :cond_76

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$b;->a:Lcom/kwad/sdk/b/d/g/c;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kwad/sdk/b/d/g/c;->a(Lcom/kwad/sdk/b/d/g/c;I)I

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$b;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->k(Lcom/kwad/sdk/b/d/g/c;)Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->getAdapter()Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/kwad/sdk/contentalliance/detail/photo/a;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$b;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->l(Lcom/kwad/sdk/b/d/g/c;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$b;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->m(Lcom/kwad/sdk/b/d/g/c;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$b;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->n(Lcom/kwad/sdk/b/d/g/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/e/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$b;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->o(Lcom/kwad/sdk/b/d/g/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/kwad/sdk/e/m;->a(Landroid/content/Context;Z)V

    :cond_46
    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$b;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->p(Lcom/kwad/sdk/b/d/g/c;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$b;->a:Lcom/kwad/sdk/b/d/g/c;

    new-instance v1, Landroid/view/GestureDetector;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->r(Lcom/kwad/sdk/b/d/g/c;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/b/d/g/c$b;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v3}, Lcom/kwad/sdk/b/d/g/c;->c(Lcom/kwad/sdk/b/d/g/c;)Landroid/view/GestureDetector$SimpleOnGestureListener;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-static {v0, v1}, Lcom/kwad/sdk/b/d/g/c;->a(Lcom/kwad/sdk/b/d/g/c;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$b;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->a(Lcom/kwad/sdk/b/d/g/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$b;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->a(Lcom/kwad/sdk/b/d/g/c;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/b/d/g/c$b$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/b/d/g/c$b$a;-><init>(Lcom/kwad/sdk/b/d/g/c$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_76
    return-void
.end method
