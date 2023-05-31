.class Lcom/kwad/sdk/b/c/d$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/b/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/c/d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/c/d;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/c/d$d;->a:Lcom/kwad/sdk/b/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/b/c/d$d;->a:Lcom/kwad/sdk/b/c/d;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->f:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;->a(Z)V

    return-void
.end method
