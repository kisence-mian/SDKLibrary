.class public final Lcom/anythink/basead/g/b;
.super Lcom/anythink/basead/g/c;


# instance fields
.field a:Lcom/anythink/basead/f/a;

.field private final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Ljava/lang/String;Z)V
    .registers 5

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/basead/g/c;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Ljava/lang/String;Z)V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/g/b;->k:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/basead/f/a;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/anythink/basead/g/b;->a:Lcom/anythink/basead/f/a;

    .line 32
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

    .line 44
    return-void
.end method

.method public final b()Landroid/view/View;
    .registers 6

    .line 35
    invoke-virtual {p0}, Lcom/anythink/basead/g/b;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 36
    new-instance v0, Lcom/anythink/basead/ui/BannerAdView;

    iget-object v1, p0, Lcom/anythink/basead/g/b;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/g/b;->d:Lcom/anythink/core/common/d/i;

    iget-object v3, p0, Lcom/anythink/basead/g/b;->g:Lcom/anythink/core/common/d/p;

    iget-object v4, p0, Lcom/anythink/basead/g/b;->a:Lcom/anythink/basead/f/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/basead/ui/BannerAdView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Lcom/anythink/basead/f/a;)V

    return-object v0

    .line 38
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()V
    .registers 2

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/g/b;->a:Lcom/anythink/basead/f/a;

    .line 50
    return-void
.end method
