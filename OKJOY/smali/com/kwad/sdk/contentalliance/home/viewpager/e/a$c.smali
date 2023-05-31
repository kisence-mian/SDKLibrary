.class Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$c;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewPagerDataFetcherPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$c;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

    invoke-static {v0, p1}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->a(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$c;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

    invoke-static {v0, p1}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->b(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;I)I

    return-void
.end method
