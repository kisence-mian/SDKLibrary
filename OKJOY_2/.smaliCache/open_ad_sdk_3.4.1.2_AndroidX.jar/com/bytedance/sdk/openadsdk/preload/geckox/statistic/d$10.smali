.class final Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/d$10;
.super Lcom/bytedance/sdk/openadsdk/preload/b/b/a;
.source "UpdateListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/d;->e()Lcom/bytedance/sdk/openadsdk/preload/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 214
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;Ljava/lang/Throwable;)V
    .registers 6
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

    .line 225
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;Ljava/lang/Throwable;)V

    .line 226
    const-class v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/g;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 227
    nop

    .line 228
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/b/d;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;->a(J)Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;

    move-result-object p2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;

    move-result-object p1

    .line 229
    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->D:Z

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->A:J

    .line 231
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->F:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;)V
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

    .line 216
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;->b(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;)V

    .line 217
    const-class v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/g;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 218
    nop

    .line 219
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/b/d;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;->a(J)Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;

    move-result-object p2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;

    move-result-object p1

    .line 220
    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->D:Z

    .line 221
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->A:J

    .line 222
    return-void
.end method
