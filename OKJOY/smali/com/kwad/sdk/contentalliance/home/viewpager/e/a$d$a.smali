.class Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d$a;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d$a;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->e(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d$a;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;

    iget-object v1, v1, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->d(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)Lcom/kwad/sdk/b/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/b/d/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d$a;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a$d;->a:Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;->f(Lcom/kwad/sdk/contentalliance/home/viewpager/e/a;)V

    return-void
.end method
