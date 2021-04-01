.class final Lcom/anythink/core/b/f/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/f/d;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/anythink/core/b/f/d;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/f/d;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 33
    iput-object p1, p0, Lcom/anythink/core/b/f/d$1;->b:Lcom/anythink/core/b/f/d;

    iput-object p2, p0, Lcom/anythink/core/b/f/d$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iget-object v0, p0, Lcom/anythink/core/b/f/d$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/d;

    .line 38
    invoke-virtual {v0}, Lcom/anythink/core/b/c/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 40
    :cond_23
    new-instance v0, Lcom/anythink/core/b/e/b;

    iget-object v2, p0, Lcom/anythink/core/b/f/d$1;->b:Lcom/anythink/core/b/f/d;

    invoke-static {v2}, Lcom/anythink/core/b/f/d;->a(Lcom/anythink/core/b/f/d;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/anythink/core/b/e/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/b/e/b;->a(ILcom/anythink/core/b/e/e;)V

    .line 41
    return-void
.end method
