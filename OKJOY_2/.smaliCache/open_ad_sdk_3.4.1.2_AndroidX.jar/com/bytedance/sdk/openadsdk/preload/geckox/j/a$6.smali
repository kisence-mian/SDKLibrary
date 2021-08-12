.class final Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$6;
.super Lcom/bytedance/sdk/openadsdk/preload/b/b/a;
.source "GeckoPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->f(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V
    .registers 2

    .line 444
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$6;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "TT;>;",
            "Lcom/bytedance/sdk/openadsdk/preload/b/d;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 464
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;Ljava/lang/Throwable;)V

    .line 465
    const-class p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 466
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$6;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;->a(Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 467
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "TT;>;",
            "Lcom/bytedance/sdk/openadsdk/preload/b/d;",
            ")V"
        }
    .end annotation

    .line 446
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;->b(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;)V

    .line 447
    const-class p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 448
    const-class v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;

    .line 449
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 450
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 451
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    .line 452
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getAccessKey()Ljava/lang/String;

    move-result-object v2

    .line 453
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 454
    if-nez v3, :cond_39

    .line 455
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 457
    :cond_39
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    goto :goto_1c

    .line 460
    :cond_40
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$6;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 461
    return-void
.end method
