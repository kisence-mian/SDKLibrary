.class Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/e;
.super Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;
.source "FIFOCachePolicy.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/e;->e:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/d;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 26
    if-eqz v1, :cond_69

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/e;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;->b()I

    move-result v3

    if-le v2, v3, :cond_69

    .line 27
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/e;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;->b()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 29
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c;->b(Ljava/lang/String;)Z

    move-result v3

    .line 31
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/e;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;->c()Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/c;

    move-result-object v4

    if-eqz v4, :cond_68

    .line 32
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/e;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;->c()Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/c;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/c;->a(Ljava/lang/String;Z)V

    .line 34
    :cond_68
    goto :goto_3f

    .line 36
    :cond_69
    goto :goto_6

    .line 37
    :cond_6a
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;Ljava/io/File;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;Ljava/io/File;Ljava/util/List;)V

    .line 15
    return-void
.end method
