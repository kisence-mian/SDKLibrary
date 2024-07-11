.class Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b$1;
.super Lcom/bytedance/sdk/openadsdk/preload/a/b/h$c;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/a/b/h<",
        "TK;TV;>.c<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b;)V
    .registers 2

    .line 601
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b$1;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$c;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/h;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 603
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b$1;->b()Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->f:Ljava/lang/Object;

    return-object v0
.end method
