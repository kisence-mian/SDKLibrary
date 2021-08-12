.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/d/e;
.super Lcom/bytedance/sdk/openadsdk/preload/b/d;
.source "LoadLocalChannelVersionInterceptorMulti.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/b/d<",
        "Ljava/lang/String;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field private d:Ljava/io/File;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/String;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;>;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "get local channel version:"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "gecko-debug-tag"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 37
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/e;->d:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 39
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 40
    if-eqz v4, :cond_5e

    array-length v6, v4

    if-lez v6, :cond_5e

    .line 41
    array-length v6, v4

    move v7, v2

    :goto_3e
    if-ge v7, v6, :cond_5e

    aget-object v8, v4, v7

    .line 42
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_5b

    .line 44
    invoke-static {v9}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/k;->a(Ljava/io/File;)Ljava/lang/Long;

    move-result-object v9

    .line 45
    if-eqz v9, :cond_5b

    .line 46
    new-instance v10, Landroid/util/Pair;

    invoke-direct {v10, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_5b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    .line 51
    :cond_5e
    invoke-interface {p2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    goto :goto_1b

    .line 53
    :cond_62
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs a([Ljava/lang/Object;)V
    .registers 3

    .line 27
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/d;->a([Ljava/lang/Object;)V

    .line 28
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/e;->d:Ljava/io/File;

    .line 29
    const/4 v0, 0x1

    aget-object p1, p1, v0

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/e;->e:Ljava/util/List;

    .line 30
    return-void
.end method

.method public synthetic a_(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/e;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
