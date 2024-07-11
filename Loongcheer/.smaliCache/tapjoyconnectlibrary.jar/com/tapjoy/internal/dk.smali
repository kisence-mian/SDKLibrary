.class public final Lcom/tapjoy/internal/dk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/di;


# instance fields
.field private final a:Lcom/tapjoy/internal/di;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/di;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/dk;->a:Lcom/tapjoy/internal/di;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 2

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p1}, Lcom/tapjoy/internal/dn;->a(IIII)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/view/View;Lorg/json/JSONObject;Lcom/tapjoy/internal/di$a;Z)V
    .registers 10

    .line 1000
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/tapjoy/internal/dc;->a()Lcom/tapjoy/internal/dc;

    move-result-object p4

    if-eqz p4, :cond_6a

    .line 2000
    iget-object p4, p4, Lcom/tapjoy/internal/dc;->b:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p4

    .line 1000
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_22
    :goto_22
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/cx;

    invoke-virtual {v0}, Lcom/tapjoy/internal/cx;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-static {v0}, Lcom/tapjoy/internal/dq;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v1, v0, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/tapjoy/internal/dq;->a(Landroid/view/View;)F

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_51
    if-lez v3, :cond_66

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lcom/tapjoy/internal/dq;->a(Landroid/view/View;)F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_66

    add-int/lit8 v3, v3, -0x1

    goto :goto_51

    :cond_66
    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_22

    :cond_6a
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_80

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    iget-object v0, p0, Lcom/tapjoy/internal/dk;->a:Lcom/tapjoy/internal/di;

    invoke-interface {p3, p4, v0, p2}, Lcom/tapjoy/internal/di$a;->a(Landroid/view/View;Lcom/tapjoy/internal/di;Lorg/json/JSONObject;)V

    goto :goto_6e

    :cond_80
    return-void
.end method
