.class Lcom/kwad/sdk/b/d/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:J

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kwad/sdk/b/d/c;->b:Ljava/util/List;

    return-void
.end method

.method private static a()V
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    sget-object v0, Lcom/kwad/sdk/b/d/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method static a(Ljava/util/List;)V
    .registers 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/kwad/sdk/b/d/c;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/kwad/sdk/b/d/c;->a:J

    sget-object v0, Lcom/kwad/sdk/b/d/c;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static b()Ljava/util/List;
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kwad/sdk/b/d/c;->b:Ljava/util/List;

    return-object v0
.end method

.method static c()Z
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/kwad/sdk/b/d/c;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v2, v0

    if-lez v0, :cond_13

    invoke-static {}, Lcom/kwad/sdk/b/d/c;->a()V

    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    sget-object v0, Lcom/kwad/sdk/b/d/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method
