.class final Lcom/anythink/basead/ui/FullScreenAdView$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/ui/EndCardView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/FullScreenAdView;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/FullScreenAdView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/FullScreenAdView;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lcom/anythink/basead/ui/FullScreenAdView$3;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 325
    sget-object v0, Lcom/anythink/basead/ui/FullScreenAdView;->TAG:Ljava/lang/String;

    const-string v1, "onClickEndCard: "

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$3;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v0, v0, Lcom/anythink/basead/ui/FullScreenAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$3;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v0, v0, Lcom/anythink/basead/ui/FullScreenAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->m()I

    move-result v0

    if-nez v0, :cond_20

    .line 328
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$3;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->g()V

    .line 330
    :cond_20
    return-void
.end method

.method public final b()V
    .registers 4

    .line 334
    sget-object v0, Lcom/anythink/basead/ui/FullScreenAdView;->TAG:Ljava/lang/String;

    const-string v1, "onCloseEndCard......."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$3;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView$3;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/FullScreenAdView;->k()Lcom/anythink/basead/c/b;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/h;->g:Lcom/anythink/basead/c/b;

    .line 337
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView$3;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v1, v1, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    const/4 v2, 0x7

    invoke-static {v2, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 338
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$3;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->g(Lcom/anythink/basead/ui/FullScreenAdView;)Lcom/anythink/basead/f/b$b;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 339
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$3;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->g(Lcom/anythink/basead/ui/FullScreenAdView;)Lcom/anythink/basead/f/b$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/b$b;->e()V

    .line 341
    :cond_2e
    return-void
.end method
