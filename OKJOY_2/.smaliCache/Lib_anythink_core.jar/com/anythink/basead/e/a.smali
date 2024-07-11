.class public final Lcom/anythink/basead/e/a;
.super Lcom/anythink/basead/e/b;


# instance fields
.field a:Lcom/anythink/basead/f/a;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V
    .registers 4

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/e/b;-><init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/e/a;->f:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 6

    .line 32
    invoke-super {p0}, Lcom/anythink/basead/e/b;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 34
    new-instance v0, Lcom/anythink/basead/ui/BannerAdView;

    iget-object v1, p0, Lcom/anythink/basead/e/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/e/a;->c:Lcom/anythink/core/common/d/i;

    iget-object v3, p0, Lcom/anythink/basead/e/a;->e:Lcom/anythink/core/common/d/u;

    iget-object v4, p0, Lcom/anythink/basead/e/a;->a:Lcom/anythink/basead/f/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/basead/ui/BannerAdView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Lcom/anythink/basead/f/a;)V

    return-object v0

    .line 36
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/anythink/basead/f/a;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/anythink/basead/e/a;->a:Lcom/anythink/basead/f/a;

    .line 29
    return-void
.end method

.method public final b()V
    .registers 2

    .line 42
    invoke-super {p0}, Lcom/anythink/basead/e/b;->b()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/e/a;->a:Lcom/anythink/basead/f/a;

    .line 44
    return-void
.end method
