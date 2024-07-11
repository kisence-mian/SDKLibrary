.class final Lcom/anythink/basead/d/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/d/f$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/c;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/anythink/basead/d/f$b;Lcom/anythink/basead/d/f;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/d/c;


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/c;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/anythink/basead/d/c$1;->a:Lcom/anythink/basead/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 82
    iget-object v1, p0, Lcom/anythink/basead/d/c$1;->a:Lcom/anythink/basead/d/c;

    invoke-static {v1}, Lcom/anythink/basead/d/c;->a(Lcom/anythink/basead/d/c;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/basead/d/b;

    .line 83
    if-nez v1, :cond_24

    .line 84
    iget-object v1, p0, Lcom/anythink/basead/d/c$1;->a:Lcom/anythink/basead/d/c;

    invoke-virtual {v1, v0}, Lcom/anythink/basead/d/c;->a(Landroid/view/View;)V

    .line 85
    goto :goto_4

    .line 89
    :cond_24
    iget-object v2, p0, Lcom/anythink/basead/d/c$1;->a:Lcom/anythink/basead/d/c;

    invoke-static {v2}, Lcom/anythink/basead/d/c;->b(Lcom/anythink/basead/d/c;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/basead/d/d;

    .line 90
    if-eqz v2, :cond_3a

    iget-object v2, v2, Lcom/anythink/basead/d/d;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 95
    :cond_3a
    iget-object v2, p0, Lcom/anythink/basead/d/c$1;->a:Lcom/anythink/basead/d/c;

    invoke-static {v2}, Lcom/anythink/basead/d/c;->b(Lcom/anythink/basead/d/c;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/anythink/basead/d/d;

    invoke-direct {v3, v1}, Lcom/anythink/basead/d/d;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    goto :goto_4

    .line 98
    :cond_49
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_63

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/anythink/basead/d/c$1;->a:Lcom/anythink/basead/d/c;

    invoke-static {v0}, Lcom/anythink/basead/d/c;->b(Lcom/anythink/basead/d/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    goto :goto_4d

    .line 101
    :cond_63
    iget-object p1, p0, Lcom/anythink/basead/d/c$1;->a:Lcom/anythink/basead/d/c;

    invoke-virtual {p1}, Lcom/anythink/basead/d/c;->c()V

    .line 102
    return-void
.end method
