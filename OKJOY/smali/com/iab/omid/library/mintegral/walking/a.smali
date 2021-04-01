.class public Lcom/iab/omid/library/mintegral/walking/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->c:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->d:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->e:Ljava/util/HashSet;

    return-void
.end method

.method private a(Landroid/view/View;Lcom/iab/omid/library/mintegral/adsession/a;)V
    .registers 5

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/walking/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-virtual {p2}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/iab/omid/library/mintegral/adsession/a;)V
    .registers 4

    invoke-virtual {p1}, Lcom/iab/omid/library/mintegral/adsession/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/mintegral/e/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/e/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-direct {p0, v0, p1}, Lcom/iab/omid/library/mintegral/walking/a;->a(Landroid/view/View;Lcom/iab/omid/library/mintegral/adsession/a;)V

    goto :goto_8

    :cond_20
    return-void
.end method

.method private d(Landroid/view/View;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_e
    if-eqz p1, :cond_29

    invoke-static {p1}, Lcom/iab/omid/library/mintegral/d/f;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_27

    check-cast v0, Landroid/view/View;

    :goto_23
    move-object p1, v0

    goto :goto_e

    :cond_25
    move v0, v1

    goto :goto_8

    :cond_27
    const/4 v0, 0x0

    goto :goto_23

    :cond_29
    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->c:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    goto :goto_8
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/walking/a;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public a()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->d:Ljava/util/HashSet;

    return-object v0
.end method

.method public b(Landroid/view/View;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/walking/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_9
.end method

.method public b()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->e:Ljava/util/HashSet;

    return-object v0
.end method

.method public c(Landroid/view/View;)Lcom/iab/omid/library/mintegral/walking/c;
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/iab/omid/library/mintegral/walking/c;->a:Lcom/iab/omid/library/mintegral/walking/c;

    :goto_a
    return-object v0

    :cond_b
    iget-boolean v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->f:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/iab/omid/library/mintegral/walking/c;->b:Lcom/iab/omid/library/mintegral/walking/c;

    goto :goto_a

    :cond_12
    sget-object v0, Lcom/iab/omid/library/mintegral/walking/c;->c:Lcom/iab/omid/library/mintegral/walking/c;

    goto :goto_a
.end method

.method public c()V
    .registers 6

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/a;->a()Lcom/iab/omid/library/mintegral/b/a;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/b/a;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->d()Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v2, :cond_42

    invoke-direct {p0, v2}, Lcom/iab/omid/library/mintegral/walking/a;->d(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/iab/omid/library/mintegral/walking/a;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/iab/omid/library/mintegral/walking/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/iab/omid/library/mintegral/walking/a;->a(Lcom/iab/omid/library/mintegral/adsession/a;)V

    goto :goto_e

    :cond_42
    iget-object v2, p0, Lcom/iab/omid/library/mintegral/walking/a;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_4c
    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->f:Z

    return-void
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/mintegral/walking/a;->f:Z

    return-void
.end method
