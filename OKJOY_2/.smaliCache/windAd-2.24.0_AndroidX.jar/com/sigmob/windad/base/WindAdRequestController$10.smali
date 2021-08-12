.class Lcom/sigmob/windad/base/WindAdRequestController$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/e/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/base/WindAdRequestController;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/base/WindAdRequestController;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/base/WindAdRequestController;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$10;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;IILjava/lang/String;)V
    .registers 8

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$10;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {p1}, Lcom/sigmob/windad/base/WindAdRequestController;->b()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "error_code  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " msg: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$10;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/sigmob/windad/base/WindAdRequestController;->e:J

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$10;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    const-string v1, "request"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p3, p4}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;)V

    invoke-static {p3}, Lcom/sigmob/windad/WindAdError;->getWindAdError(I)Lcom/sigmob/windad/WindAdError;

    move-result-object p1

    if-nez p1, :cond_57

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_STRATEGY_EMPTY:Lcom/sigmob/windad/WindAdError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    :cond_57
    iget-object p2, p0, Lcom/sigmob/windad/base/WindAdRequestController$10;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object p2, p2, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    new-instance p3, Lcom/sigmob/windad/base/WindAdRequestController$10$2;

    invoke-direct {p3, p0}, Lcom/sigmob/windad/base/WindAdRequestController$10$2;-><init>(Lcom/sigmob/windad/base/WindAdRequestController$10;)V

    const-string p4, "respond"

    invoke-static {p4, p2, p3}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindInit(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    iget-object p2, p0, Lcom/sigmob/windad/base/WindAdRequestController$10;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {p2, p1}, Lcom/sigmob/windad/base/WindAdRequestController;->b(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;Lcom/sigmob/sdk/common/e/n;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/ADStrategy;",
            ">;",
            "Lcom/sigmob/sdk/common/e/n;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object p3, p0, Lcom/sigmob/windad/base/WindAdRequestController$10;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iput-object p1, p3, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$10;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/sigmob/windad/base/WindAdRequestController;->e:J

    iget p1, p2, Lcom/sigmob/sdk/common/e/n;->a:I

    if-lez p1, :cond_17

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$10;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget p3, p2, Lcom/sigmob/sdk/common/e/n;->a:I

    invoke-static {p1, p3}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;I)I

    :cond_17
    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$10;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {p1}, Lcom/sigmob/windad/base/WindAdRequestController;->d(Lcom/sigmob/windad/base/WindAdRequestController;)V

    iget p1, p2, Lcom/sigmob/sdk/common/e/n;->b:I

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$10;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget p2, p2, Lcom/sigmob/sdk/common/e/n;->b:I

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p2, p2

    invoke-static {p1, p2, p3}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;J)J

    :cond_2a
    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$10;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {p1}, Lcom/sigmob/windad/base/WindAdRequestController;->c()V

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$10;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {p1}, Lcom/sigmob/windad/base/WindAdRequestController;->getReadyAdapter()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$10;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {p1}, Lcom/sigmob/windad/base/WindAdRequestController;->b()V

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$10;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object p2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_FOUD_ADAPTER:Lcom/sigmob/windad/WindAdError;

    invoke-static {p1, p2}, Lcom/sigmob/windad/base/WindAdRequestController;->b(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V

    :cond_47
    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$10;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object p1, p1, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    new-instance p2, Lcom/sigmob/windad/base/WindAdRequestController$10$1;

    invoke-direct {p2, p0}, Lcom/sigmob/windad/base/WindAdRequestController$10$1;-><init>(Lcom/sigmob/windad/base/WindAdRequestController$10;)V

    const-string p3, "respond"

    invoke-static {p3, p1, p2}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindInit(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    return-void
.end method
