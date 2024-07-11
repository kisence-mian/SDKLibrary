.class public final Lcom/bytedance/sdk/openadsdk/preload/a/i;
.super Lcom/bytedance/sdk/openadsdk/preload/a/l;
.source "JsonArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/a/l;",
        "Ljava/lang/Iterable<",
        "Lcom/bytedance/sdk/openadsdk/preload/a/l;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/a/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/l;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Number;
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->a()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 219
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V
    .registers 3

    .line 105
    if-nez p1, :cond_4

    .line 106
    sget-object p1, Lcom/bytedance/sdk/openadsdk/preload/a/n;->a:Lcom/bytedance/sdk/openadsdk/preload/a/n;

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 233
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 235
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public c()D
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->c()D

    move-result-wide v0

    return-wide v0

    .line 251
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public d()J
    .registers 3

    .line 314
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 315
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->d()J

    move-result-wide v0

    return-wide v0

    .line 317
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public e()I
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 331
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->e()I

    move-result v0

    return v0

    .line 333
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 386
    if-eq p1, p0, :cond_15

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method public f()Z
    .registers 3

    .line 378
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 379
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->f()Z

    move-result v0

    return v0

    .line 381
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .line 391
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/bytedance/sdk/openadsdk/preload/a/l;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
