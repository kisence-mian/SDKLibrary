.class final Lcom/anythink/core/common/f/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f/d;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/anythink/core/common/f/d;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f/d;Ljava/util/List;)V
    .registers 3

    .line 44
    iput-object p1, p0, Lcom/anythink/core/common/f/d$1;->b:Lcom/anythink/core/common/f/d;

    iput-object p2, p0, Lcom/anythink/core/common/f/d$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/anythink/core/common/f/d$1;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/d/g;

    .line 49
    invoke-virtual {v2}, Lcom/anythink/core/common/d/g;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_b

    .line 52
    :cond_23
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v1

    .line 53
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_6a

    .line 54
    invoke-virtual {v1}, Lcom/anythink/core/c/a;->d()I

    move-result v4

    packed-switch v4, :pswitch_data_7a

    .line 61
    new-instance v4, Lcom/anythink/core/common/e/b;

    iget-object v5, p0, Lcom/anythink/core/common/f/d$1;->b:Lcom/anythink/core/common/f/d;

    invoke-static {v5}, Lcom/anythink/core/common/f/d;->a(Lcom/anythink/core/common/f/d;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->d()I

    move-result v1

    invoke-direct {v4, v5, v1, v0}, Lcom/anythink/core/common/e/b;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v4, v3, v2}, Lcom/anythink/core/common/e/b;->a(ILcom/anythink/core/common/e/g;)V

    .line 62
    return-void

    .line 56
    :pswitch_59
    new-instance v3, Lcom/anythink/core/common/e/a/a;

    invoke-direct {v3, v0}, Lcom/anythink/core/common/e/a/a;-><init>(Ljava/util/List;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/anythink/core/common/e/a/a;->a(ILjava/lang/String;)V

    .line 58
    invoke-virtual {v3, v2}, Lcom/anythink/core/common/e/a/a;->a(Lcom/anythink/core/common/e/a/b$a;)V

    .line 59
    return-void

    .line 65
    :cond_6a
    new-instance v1, Lcom/anythink/core/common/e/b;

    iget-object v4, p0, Lcom/anythink/core/common/f/d$1;->b:Lcom/anythink/core/common/f/d;

    invoke-static {v4}, Lcom/anythink/core/common/f/d;->b(Lcom/anythink/core/common/f/d;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v3, v0}, Lcom/anythink/core/common/e/b;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v3, v2}, Lcom/anythink/core/common/e/b;->a(ILcom/anythink/core/common/e/g;)V

    .line 69
    return-void

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_59
    .end packed-switch
.end method
