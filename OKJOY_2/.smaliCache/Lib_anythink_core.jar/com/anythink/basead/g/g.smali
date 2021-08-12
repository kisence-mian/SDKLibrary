.class public final Lcom/anythink/basead/g/g;
.super Lcom/anythink/basead/g/c;


# instance fields
.field a:Lcom/anythink/basead/f/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Ljava/lang/String;)V
    .registers 5

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/anythink/basead/g/c;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Ljava/lang/String;Z)V

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .registers 4

    .line 38
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/g/g$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/g/g$1;-><init>(Lcom/anythink/basead/g/g;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public final a(Lcom/anythink/basead/f/a;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/anythink/basead/g/g;->a:Lcom/anythink/basead/f/a;

    .line 49
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 54
    return-void
.end method

.method public final a()Z
    .registers 5

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/basead/g/g;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 60
    iget-object v0, p0, Lcom/anythink/basead/g/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/g/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/g/g;->g:Lcom/anythink/core/common/d/p;

    iget-object v2, p0, Lcom/anythink/basead/g/g;->d:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    iget-boolean v3, p0, Lcom/anythink/basead/g/g;->f:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/basead/g/a/a;->a(Lcom/anythink/core/common/d/p;Lcom/anythink/core/common/d/j;Z)Z

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    return v0

    .line 64
    :cond_19
    goto :goto_1e

    .line 63
    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .registers 2

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/g/g;->a:Lcom/anythink/basead/f/a;

    .line 71
    return-void
.end method
