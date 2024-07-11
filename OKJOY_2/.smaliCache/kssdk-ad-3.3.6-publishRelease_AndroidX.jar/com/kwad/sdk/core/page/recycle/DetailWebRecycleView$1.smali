.class Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView$1;->a:Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView$1;->a:Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;

    const-string v1, "mGapWorker"

    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/l;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    const-string v1, "postFromTraversal"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView$1;->a:Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView$1;->a:Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;

    invoke-static {v4}, Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;->a(Lcom/kwad/sdk/core/page/recycle/DetailWebRecycleView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    return-void
.end method
