.class public final Lcom/bytedance/sdk/openadsdk/preload/a/o;
.super Lcom/bytedance/sdk/openadsdk/preload/a/l;
.source "JsonObject.java"


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/h<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/l;-><init>()V

    .line 33
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/o;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/a/l;)V
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/o;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    if-nez p2, :cond_6

    sget-object p2, Lcom/bytedance/sdk/openadsdk/preload/a/n;->a:Lcom/bytedance/sdk/openadsdk/preload/a/n;

    :cond_6
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 197
    if-eq p1, p0, :cond_15

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/o;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/o;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    .line 198
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    .line 197
    :goto_16
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/o;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->hashCode()I

    move-result v0

    return v0
.end method

.method public n()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/l;",
            ">;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/o;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
