.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/h;)V
    .registers 2

    .line 595
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 617
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->clear()V

    .line 618
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 609
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 601
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b$1;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 613
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->b(Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public size()I
    .registers 2

    .line 597
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->c:I

    return v0
.end method
