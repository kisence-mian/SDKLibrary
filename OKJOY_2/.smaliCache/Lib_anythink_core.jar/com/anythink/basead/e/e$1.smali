.class final Lcom/anythink/basead/e/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/e/e;->a(Lcom/anythink/basead/f/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/f/d;

.field final synthetic b:Lcom/anythink/basead/e/e;


# direct methods
.method constructor <init>(Lcom/anythink/basead/e/e;Lcom/anythink/basead/f/d;)V
    .registers 3

    .line 25
    iput-object p1, p0, Lcom/anythink/basead/e/e$1;->b:Lcom/anythink/basead/e/e;

    iput-object p2, p0, Lcom/anythink/basead/e/e$1;->a:Lcom/anythink/basead/f/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCacheLoaded()V
    .registers 5

    .line 32
    new-instance v0, Lcom/anythink/basead/e/h;

    iget-object v1, p0, Lcom/anythink/basead/e/e$1;->b:Lcom/anythink/basead/e/e;

    iget-object v1, v1, Lcom/anythink/basead/e/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/e/e$1;->b:Lcom/anythink/basead/e/e;

    iget-object v2, v2, Lcom/anythink/basead/e/e;->e:Lcom/anythink/core/common/d/u;

    iget-object v3, p0, Lcom/anythink/basead/e/e$1;->b:Lcom/anythink/basead/e/e;

    iget-object v3, v3, Lcom/anythink/basead/e/e;->c:Lcom/anythink/core/common/d/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/basead/e/h;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/u;Lcom/anythink/core/common/d/i;)V

    .line 33
    iget-object v1, p0, Lcom/anythink/basead/e/e$1;->a:Lcom/anythink/basead/f/d;

    if-eqz v1, :cond_1e

    .line 34
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/anythink/basead/e/h;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/anythink/basead/f/d;->onNativeAdLoaded([Lcom/anythink/basead/e/h;)V

    .line 36
    :cond_1e
    return-void
.end method

.method public final onAdDataLoaded()V
    .registers 1

    .line 28
    return-void
.end method

.method public final onAdLoadFailed(Lcom/anythink/basead/c/f;)V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/anythink/basead/e/e$1;->a:Lcom/anythink/basead/f/d;

    if-eqz v0, :cond_7

    .line 41
    invoke-interface {v0, p1}, Lcom/anythink/basead/f/d;->onNativeAdLoadError(Lcom/anythink/basead/c/f;)V

    .line 43
    :cond_7
    return-void
.end method
