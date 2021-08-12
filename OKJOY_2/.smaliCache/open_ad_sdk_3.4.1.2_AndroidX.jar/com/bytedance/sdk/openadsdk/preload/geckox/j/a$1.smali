.class final Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$1;
.super Lcom/bytedance/sdk/openadsdk/preload/b/b/a;
.source "GeckoPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;
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

    .line 338
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$1;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;Ljava/lang/Throwable;)V
    .registers 5
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

    .line 341
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;Ljava/lang/Throwable;)V

    .line 342
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a$1;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    const-class v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/f;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    return-void
.end method
