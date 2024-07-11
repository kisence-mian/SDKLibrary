.class Lcom/sigmob/volley/toolbox/k$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/volley/toolbox/k;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/volley/toolbox/k;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/toolbox/k;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/k$3;->a:Lcom/sigmob/volley/toolbox/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k$3;->a:Lcom/sigmob/volley/toolbox/k;

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/k;->a(Lcom/sigmob/volley/toolbox/k;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/volley/toolbox/k$a;

    invoke-static {v1}, Lcom/sigmob/volley/toolbox/k$a;->a(Lcom/sigmob/volley/toolbox/k$a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/volley/toolbox/k$c;

    invoke-static {v3}, Lcom/sigmob/volley/toolbox/k$c;->a(Lcom/sigmob/volley/toolbox/k$c;)Lcom/sigmob/volley/toolbox/k$d;

    move-result-object v4

    if-nez v4, :cond_35

    goto :goto_22

    :cond_35
    invoke-virtual {v1}, Lcom/sigmob/volley/toolbox/k$a;->a()Lcom/sigmob/volley/t;

    move-result-object v4

    if-nez v4, :cond_4b

    invoke-static {v1}, Lcom/sigmob/volley/toolbox/k$a;->b(Lcom/sigmob/volley/toolbox/k$a;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sigmob/volley/toolbox/k$c;->a(Lcom/sigmob/volley/toolbox/k$c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/sigmob/volley/toolbox/k$c;->a(Lcom/sigmob/volley/toolbox/k$c;)Lcom/sigmob/volley/toolbox/k$d;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/sigmob/volley/toolbox/k$d;->a(Lcom/sigmob/volley/toolbox/k$c;Z)V

    goto :goto_22

    :cond_4b
    invoke-static {v3}, Lcom/sigmob/volley/toolbox/k$c;->a(Lcom/sigmob/volley/toolbox/k$c;)Lcom/sigmob/volley/toolbox/k$d;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sigmob/volley/toolbox/k$a;->a()Lcom/sigmob/volley/t;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sigmob/volley/toolbox/k$d;->onErrorResponse(Lcom/sigmob/volley/t;)V

    goto :goto_22

    :cond_57
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k$3;->a:Lcom/sigmob/volley/toolbox/k;

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/k;->a(Lcom/sigmob/volley/toolbox/k;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k$3;->a:Lcom/sigmob/volley/toolbox/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/volley/toolbox/k;->a(Lcom/sigmob/volley/toolbox/k;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
