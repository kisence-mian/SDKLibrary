.class Lcom/kwad/sdk/contentalliance/home/viewpager/e/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/b/f/b$h;


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

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b$b;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b$b;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;->b(Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;)Lcom/kwad/sdk/contentalliance/home/viewpager/d;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/home/viewpager/d;->c:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    invoke-virtual {v0}, Lcom/kwad/sdk/b/f/b;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b$b;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;->c(Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;)I

    move-result v1

    if-ne v1, v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b$b;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;

    invoke-static {v1, v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;->b(Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;I)I

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b$b;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;->a(Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;)Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->getAdapter()Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b$b;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;->a(Lcom/kwad/sdk/contentalliance/home/viewpager/e/b;)Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->getAdapter()Lcom/kwad/sdk/contentalliance/home/viewpager/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->a(IZ)V

    goto :goto_14
.end method
