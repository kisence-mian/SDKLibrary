.class public abstract Lcom/bytedance/sdk/openadsdk/preload/b/a;
.super Lcom/bytedance/sdk/openadsdk/preload/b/l;
.source "BranchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Ljava/lang/Object;",
        "OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/openadsdk/preload/b/l<",
        "TIN;TOUT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "TOUT;>;TIN;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public final a_(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "TOUT;>;TIN;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/b/m;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/m;-><init>(Lcom/bytedance/sdk/openadsdk/preload/b/b;)V

    invoke-virtual {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    .line 11
    if-eqz v1, :cond_30

    .line 14
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;->a:Ljava/util/List;

    .line 15
    move-object v1, p1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/preload/b/i;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/preload/b/i;->a:Lcom/bytedance/sdk/openadsdk/preload/b/e;

    invoke-static {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/b/c;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/preload/b/e;Lcom/bytedance/sdk/openadsdk/preload/b/d;)Lcom/bytedance/sdk/openadsdk/preload/b/b;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 16
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/a;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 17
    return-object p2

    .line 19
    :cond_2b
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not found branch, branch name is\uff1a"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
