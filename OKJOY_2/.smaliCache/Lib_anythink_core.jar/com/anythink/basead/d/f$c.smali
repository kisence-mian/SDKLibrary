.class final Lcom/anythink/basead/d/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/d/f;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/f;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lcom/anythink/basead/d/f$c;->a:Lcom/anythink/basead/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/d/f$c;->c:Ljava/util/ArrayList;

    .line 271
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/d/f$c;->b:Ljava/util/ArrayList;

    .line 272
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 276
    iget-object v0, p0, Lcom/anythink/basead/d/f$c;->a:Lcom/anythink/basead/d/f;

    invoke-static {v0}, Lcom/anythink/basead/d/f;->a(Lcom/anythink/basead/d/f;)Z

    .line 277
    iget-object v0, p0, Lcom/anythink/basead/d/f$c;->a:Lcom/anythink/basead/d/f;

    invoke-static {v0}, Lcom/anythink/basead/d/f;->b(Lcom/anythink/basead/d/f;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 278
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 279
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/basead/d/f$a;

    iget v3, v3, Lcom/anythink/basead/d/f$a;->a:I

    .line 280
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/basead/d/f$a;

    iget v4, v4, Lcom/anythink/basead/d/f$a;->b:I

    .line 281
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/basead/d/f$a;

    iget-object v5, v5, Lcom/anythink/basead/d/f$a;->e:Ljava/lang/Integer;

    .line 282
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/basead/d/f$a;

    iget-object v1, v1, Lcom/anythink/basead/d/f$a;->d:Landroid/view/View;

    .line 284
    iget-object v6, p0, Lcom/anythink/basead/d/f$c;->a:Lcom/anythink/basead/d/f;

    invoke-static {v6}, Lcom/anythink/basead/d/f;->c(Lcom/anythink/basead/d/f;)Lcom/anythink/basead/d/f$b;

    move-result-object v6

    invoke-virtual {v6, v1, v2, v3, v5}, Lcom/anythink/basead/d/f$b;->a(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 286
    iget-object v1, p0, Lcom/anythink/basead/d/f$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 287
    :cond_57
    iget-object v3, p0, Lcom/anythink/basead/d/f$c;->a:Lcom/anythink/basead/d/f;

    invoke-static {v3}, Lcom/anythink/basead/d/f;->c(Lcom/anythink/basead/d/f;)Lcom/anythink/basead/d/f$b;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/anythink/basead/d/f$b;->a(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 289
    iget-object v1, p0, Lcom/anythink/basead/d/f$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_69
    goto :goto_13

    .line 293
    :cond_6a
    iget-object v0, p0, Lcom/anythink/basead/d/f$c;->a:Lcom/anythink/basead/d/f;

    invoke-static {v0}, Lcom/anythink/basead/d/f;->d(Lcom/anythink/basead/d/f;)Lcom/anythink/basead/d/f$d;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 294
    iget-object v0, p0, Lcom/anythink/basead/d/f$c;->a:Lcom/anythink/basead/d/f;

    invoke-static {v0}, Lcom/anythink/basead/d/f;->d(Lcom/anythink/basead/d/f;)Lcom/anythink/basead/d/f$d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/f$c;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/anythink/basead/d/f$c;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/anythink/basead/d/f$d;->a(Ljava/util/List;Ljava/util/List;)V

    .line 298
    :cond_7f
    iget-object v0, p0, Lcom/anythink/basead/d/f$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 299
    iget-object v0, p0, Lcom/anythink/basead/d/f$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 300
    return-void
.end method
