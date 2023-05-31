.class public Lcom/sigmob/sdk/base/c/t;
.super Lcom/sigmob/volley/u;


# static fields
.field private static final a:I = 0xa


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sigmob/volley/q",
            "<*>;",
            "Lcom/sigmob/sdk/base/c/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/k;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/sigmob/volley/u;-><init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/k;)V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/c/t;->b:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/k;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/volley/u;-><init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/k;I)V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/c/t;->b:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/k;ILcom/sigmob/volley/aa;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/volley/u;-><init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/k;ILcom/sigmob/volley/aa;)V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/c/t;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/c/t;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/t;->b:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lcom/sigmob/volley/q;Lcom/sigmob/sdk/base/c/u;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;",
            "Lcom/sigmob/sdk/base/c/u;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/t;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/c/t;->c(Lcom/sigmob/volley/q;)V

    :cond_e
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/c/u;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/t;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(Lcom/sigmob/volley/q;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    new-instance v0, Lcom/sigmob/sdk/base/c/t$3;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/sdk/base/c/t$3;-><init>(Lcom/sigmob/sdk/base/c/t;Lcom/sigmob/volley/q;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/c/t;->a(Lcom/sigmob/volley/v;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    new-instance v0, Lcom/sigmob/sdk/base/c/t$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/c/t$1;-><init>(Lcom/sigmob/sdk/base/c/t;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/c/t;->a(Lcom/sigmob/volley/v;)V

    return-void
.end method

.method public a(Lcom/sigmob/volley/q;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;I)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    new-instance v0, Lcom/sigmob/sdk/base/c/u;

    invoke-direct {v0, p0, p1, p2}, Lcom/sigmob/sdk/base/c/u;-><init>(Lcom/sigmob/sdk/base/c/t;Lcom/sigmob/volley/q;I)V

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/base/c/t;->a(Lcom/sigmob/volley/q;Lcom/sigmob/sdk/base/c/u;)V

    return-void
.end method

.method public a(Lcom/sigmob/volley/v;)V
    .registers 5

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-super {p0, p1}, Lcom/sigmob/volley/u;->a(Lcom/sigmob/volley/v;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/t;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/volley/q;

    invoke-interface {p1, v1}, Lcom/sigmob/volley/v;->a(Lcom/sigmob/volley/q;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/volley/q;

    invoke-virtual {v1}, Lcom/sigmob/volley/q;->q()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/c/u;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/c/u;->b()V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :cond_3e
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-super {p0, p1}, Lcom/sigmob/volley/u;->a(Ljava/lang/Object;)V

    new-instance v0, Lcom/sigmob/sdk/base/c/t$2;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/sdk/base/c/t$2;-><init>(Lcom/sigmob/sdk/base/c/t;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/c/t;->a(Lcom/sigmob/volley/v;)V

    return-void
.end method

.method b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/sigmob/volley/q",
            "<*>;",
            "Lcom/sigmob/sdk/base/c/u;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/t;->b:Ljava/util/Map;

    return-object v0
.end method
