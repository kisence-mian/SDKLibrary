.class final Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/d$1;
.super Lcom/bytedance/sdk/openadsdk/preload/b/b/a;
.source "UpdateListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/d;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/d$1;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "TT;>;",
            "Lcom/bytedance/sdk/openadsdk/preload/b/d;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;)V

    .line 25
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/d$1;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/b/d;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;->a(J)Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;)V

    .line 26
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;Ljava/lang/Throwable;)V
    .registers 4
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

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;Ljava/lang/Throwable;)V

    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/d$1;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/b/d;->c()J

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;->a(J)Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;)V

    .line 31
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;Ljava/lang/Throwable;)V
    .registers 4
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

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;->b(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;Ljava/lang/Throwable;)V

    .line 35
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/d$1;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/b/d;->c()J

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;->a(J)Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;)V

    .line 36
    return-void
.end method
