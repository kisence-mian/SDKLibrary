.class Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/h;)V
    .registers 2

    .line 560
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 591
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->clear()V

    .line 592
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 574
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Ljava/util/Map$Entry;)Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 566
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a$1;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    .line 578
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 579
    return v1

    .line 582
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Ljava/util/Map$Entry;)Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    move-result-object p1

    .line 583
    if-nez p1, :cond_11

    .line 584
    return v1

    .line 586
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;Z)V

    .line 587
    return v1
.end method

.method public size()I
    .registers 2

    .line 562
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->c:I

    return v0
.end method
