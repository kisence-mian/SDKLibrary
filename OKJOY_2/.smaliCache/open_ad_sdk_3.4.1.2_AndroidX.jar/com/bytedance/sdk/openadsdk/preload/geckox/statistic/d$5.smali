.class final Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/d$5;
.super Lcom/bytedance/sdk/openadsdk/preload/b/b/a;
.source "UpdateListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/d;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/d$5;->a:Landroid/content/Context;

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

    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;Ljava/lang/Throwable;)V

    .line 109
    const-class v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/h;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 110
    nop

    .line 111
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/b/d;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;->a(J)Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;

    move-result-object p2

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;

    move-result-object p2

    .line 112
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->h:Z

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->g:J

    .line 116
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->e:Ljava/util/List;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel$DownloadFailRecords;

    .line 117
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel$DownloadFailRecords;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
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

    .line 99
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;->b(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;)V

    .line 100
    const-class v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/h;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 101
    nop

    .line 102
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

    .line 103
    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->h:Z

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->g:J

    .line 105
    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;)V
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

    .line 86
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;->c(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;)V

    .line 87
    const-class v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/h;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 88
    nop

    .line 89
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/b/d;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;->a(J)Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;

    move-result-object p2

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;

    move-result-object p2

    .line 90
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->d:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/d$5;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->p:Ljava/lang/String;

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->f:J

    .line 93
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getPatch()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->q:Ljava/lang/Long;

    .line 94
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getFullPackage()Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->r:Ljava/lang/Long;

    .line 95
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    .line 96
    return-void
.end method
