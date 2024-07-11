.class Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a$1;
.super Lcom/bytedance/sdk/openadsdk/preload/a/b/h$c;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/a/b/h<",
        "TK;TV;>.c<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;)V
    .registers 2

    .line 566
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a$1;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$c;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/h;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 568
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a$1;->b()Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .line 566
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
