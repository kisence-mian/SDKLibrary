.class final Lcom/anythink/basead/ui/FullScreenAdView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/ui/BannerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/FullScreenAdView;->p()V
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

    .line 157
    iput-object p1, p0, Lcom/anythink/basead/ui/FullScreenAdView$1;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$1;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->g()V

    .line 161
    return-void
.end method

.method public final b()V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$1;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v0, v0, Lcom/anythink/basead/ui/FullScreenAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$1;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v0, v0, Lcom/anythink/basead/ui/FullScreenAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->m()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    .line 166
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$1;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->g()V

    .line 168
    :cond_1a
    return-void
.end method
