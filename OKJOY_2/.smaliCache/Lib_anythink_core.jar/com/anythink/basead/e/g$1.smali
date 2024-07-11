.class final Lcom/anythink/basead/e/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/e/g;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/anythink/basead/e/g;


# direct methods
.method constructor <init>(Lcom/anythink/basead/e/g;Landroid/view/ViewGroup;)V
    .registers 3

    .line 34
    iput-object p1, p0, Lcom/anythink/basead/e/g$1;->b:Lcom/anythink/basead/e/g;

    iput-object p2, p0, Lcom/anythink/basead/e/g$1;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 37
    iget-object v0, p0, Lcom/anythink/basead/e/g$1;->a:Landroid/view/ViewGroup;

    new-instance v1, Lcom/anythink/basead/ui/SplashAdView;

    iget-object v2, p0, Lcom/anythink/basead/e/g$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/e/g$1;->b:Lcom/anythink/basead/e/g;

    iget-object v3, v3, Lcom/anythink/basead/e/g;->c:Lcom/anythink/core/common/d/i;

    iget-object v4, p0, Lcom/anythink/basead/e/g$1;->b:Lcom/anythink/basead/e/g;

    iget-object v4, v4, Lcom/anythink/basead/e/g;->e:Lcom/anythink/core/common/d/u;

    iget-object v5, p0, Lcom/anythink/basead/e/g$1;->b:Lcom/anythink/basead/e/g;

    iget-object v5, v5, Lcom/anythink/basead/e/g;->a:Lcom/anythink/basead/f/a;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/anythink/basead/ui/SplashAdView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Lcom/anythink/basead/f/a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    return-void
.end method
