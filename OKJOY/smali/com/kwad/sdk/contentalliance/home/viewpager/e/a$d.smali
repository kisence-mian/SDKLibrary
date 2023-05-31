.class Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/b/d/b;


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

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Z)V
    .registers 6

    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->c(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)Lcom/kwad/sdk/contentalliance/refreshview/e;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->c(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)Lcom/kwad/sdk/contentalliance/refreshview/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->setRefreshing(Z)V

    :cond_14
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->e(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d$a;-><init>(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->e(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->d(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)Lcom/kwad/sdk/b/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/b/d/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->f(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)V

    goto :goto_24
.end method

.method public onError(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->g(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x186a6

    if-ne p1, v0, :cond_16

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->h(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/kwad/sdk/e/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_16
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->c(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)Lcom/kwad/sdk/contentalliance/refreshview/e;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->c(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)Lcom/kwad/sdk/contentalliance/refreshview/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/refreshview/RefreshLayout;->setRefreshing(Z)V

    :cond_28
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->f(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)V

    return-void
.end method
