.class public final Lcom/anythink/basead/e/g;
.super Lcom/anythink/basead/e/b;


# instance fields
.field a:Lcom/anythink/basead/f/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V
    .registers 4

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/e/b;-><init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .registers 4

    .line 33
    invoke-super {p0}, Lcom/anythink/basead/e/b;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 34
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/e/g$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/e/g$1;-><init>(Lcom/anythink/basead/e/g;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 42
    :cond_12
    return-void
.end method

.method public final a(Lcom/anythink/basead/f/a;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/anythink/basead/e/g;->a:Lcom/anythink/basead/f/a;

    .line 46
    return-void
.end method

.method public final b()V
    .registers 2

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/e/g;->a:Lcom/anythink/basead/f/a;

    .line 51
    return-void
.end method
