.class public Lcom/iab/omid/library/mintegral/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iab/omid/library/mintegral/c/a;


# instance fields
.field private final a:Lcom/iab/omid/library/mintegral/c/a;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/mintegral/c/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/mintegral/c/c;->a:Lcom/iab/omid/library/mintegral/c/a;

    return-void
.end method


# virtual methods
.method a()Ljava/util/ArrayList;
    .registers 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/a;->a()Lcom/iab/omid/library/mintegral/b/a;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/b/a;->c()Ljava/util/Collection;

    move-result-object v0

    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v3, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_20
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/f;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_20

    invoke-virtual {v3, v5}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {v3, v5, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/iab/omid/library/mintegral/d/f;->a(Landroid/view/View;)F

    move-result v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    :goto_50
    if-lez v1, :cond_66

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/f;->a(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_66

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_50

    :cond_66
    invoke-virtual {v2, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_20

    :cond_6a
    return-object v2
.end method

.method public a(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Lcom/iab/omid/library/mintegral/d/b;->a(IIII)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Lorg/json/JSONObject;Lcom/iab/omid/library/mintegral/c/a$a;Z)V
    .registers 8

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/c/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/iab/omid/library/mintegral/c/c;->a:Lcom/iab/omid/library/mintegral/c/a;

    invoke-interface {p3, v0, v2, p2}, Lcom/iab/omid/library/mintegral/c/a$a;->a(Landroid/view/View;Lcom/iab/omid/library/mintegral/c/a;Lorg/json/JSONObject;)V

    goto :goto_8

    :cond_1a
    return-void
.end method
