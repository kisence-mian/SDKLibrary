.class Lcom/sigmob/volley/toolbox/p$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/volley/toolbox/p;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/q;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/volley/toolbox/p;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/toolbox/p;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/p$4;->a:Lcom/sigmob/volley/toolbox/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/p$4;->a:Lcom/sigmob/volley/toolbox/p;

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/p;->a(Lcom/sigmob/volley/toolbox/p;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/toolbox/q;

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/q;->a(Lcom/sigmob/volley/toolbox/q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/volley/toolbox/s;

    invoke-static {v1}, Lcom/sigmob/volley/toolbox/s;->a(Lcom/sigmob/volley/toolbox/s;)Lcom/sigmob/volley/toolbox/t;

    move-result-object v4

    if-eqz v4, :cond_22

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/q;->a()Lcom/sigmob/volley/ae;

    move-result-object v4

    if-nez v4, :cond_4a

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/q;->b(Lcom/sigmob/volley/toolbox/q;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sigmob/volley/toolbox/s;->a(Lcom/sigmob/volley/toolbox/s;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/sigmob/volley/toolbox/s;->a(Lcom/sigmob/volley/toolbox/s;)Lcom/sigmob/volley/toolbox/t;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/sigmob/volley/toolbox/t;->a(Lcom/sigmob/volley/toolbox/s;Z)V

    goto :goto_22

    :cond_4a
    invoke-static {v1}, Lcom/sigmob/volley/toolbox/s;->a(Lcom/sigmob/volley/toolbox/s;)Lcom/sigmob/volley/toolbox/t;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/q;->a()Lcom/sigmob/volley/ae;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/sigmob/volley/toolbox/t;->a(Lcom/sigmob/volley/ae;)V

    goto :goto_22

    :cond_56
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/p$4;->a:Lcom/sigmob/volley/toolbox/p;

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/p;->a(Lcom/sigmob/volley/toolbox/p;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/p$4;->a:Lcom/sigmob/volley/toolbox/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/volley/toolbox/p;->a(Lcom/sigmob/volley/toolbox/p;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
