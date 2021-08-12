.class public Lcom/sigmob/sdk/common/e/l;
.super Lcom/sigmob/volley/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/e/l$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sigmob/volley/m<",
            "*>;",
            "Lcom/sigmob/sdk/common/e/l$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/g;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/volley/n;-><init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/g;I)V

    new-instance p1, Ljava/util/HashMap;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/e/l;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    new-instance v0, Lcom/sigmob/sdk/common/e/l$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/common/e/l$1;-><init>(Lcom/sigmob/sdk/common/e/l;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/common/e/l;->a(Lcom/sigmob/volley/n$a;)V

    return-void
.end method

.method public a(Lcom/sigmob/volley/n$a;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/sigmob/volley/n;->a(Lcom/sigmob/volley/n$a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/l;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/volley/m;

    invoke-interface {p1, v2}, Lcom/sigmob/volley/n$a;->a(Lcom/sigmob/volley/m;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/volley/m;

    invoke-virtual {v2}, Lcom/sigmob/volley/m;->l()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/common/e/l$a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/e/l$a;->a()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    :cond_3b
    return-void
.end method
