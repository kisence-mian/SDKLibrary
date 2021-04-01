.class Lcom/kwad/sdk/contentalliance/home/viewpager/e/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b$a;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b$a;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;

    invoke-static {v0, p1}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;->a(Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;I)I

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b$a;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;->a(Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;)Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->getAdapter()Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b$a;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;->a(Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;)Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->getAdapter()Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->a(IZ)V

    :cond_1f
    return-void
.end method
