.class public abstract Lcom/sigmob/sdk/base/common/r;
.super Lcom/sigmob/sdk/base/common/k;


# instance fields
.field protected a:J

.field protected b:Lcom/sigmob/sdk/base/common/k$a;

.field protected c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field protected d:Ljava/lang/String;

.field private e:Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;


# direct methods
.method protected constructor <init>(Lcom/sigmob/sdk/base/common/k$a;)V
    .registers 3

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/k;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/r;->b:Lcom/sigmob/sdk/base/common/k$a;

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/r;->b:Lcom/sigmob/sdk/base/common/k$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/r;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/k$a;)V
.end method

.method public a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance p3, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/r;->b:Lcom/sigmob/sdk/base/common/k$a;

    iget-wide v1, p0, Lcom/sigmob/sdk/base/common/r;->a:J

    invoke-direct {p3, p2, v0, v1, v2}, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/k$a;J)V

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/r;->e:Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;

    invoke-virtual {p3, p3, p1}, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/sigmob/sdk/base/common/r;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v0

    if-eqz v0, :cond_33

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/r;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v0, "baseAdUnitValid success"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    :try_start_d
    const-string v0, "broadcastIdentifier"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/base/common/r;->a:J
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_1b} :catch_21

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/r;->b:Lcom/sigmob/sdk/base/common/k$a;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/base/common/r;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/k$a;)V

    return-void

    :catch_21
    move-exception p1

    const-string p1, "LocalExtras contained an incorrect type."

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/r;->b:Lcom/sigmob/sdk/base/common/k$a;

    sget-object p2, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/sigmob/sdk/base/common/k$a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void

    :cond_33
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/r;->b:Lcom/sigmob/sdk/base/common/k$a;

    sget-object p2, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/sigmob/sdk/base/common/k$a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/r;->d:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/r;->e:Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v0}, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;)V

    :cond_7
    return-void
.end method

.method protected abstract b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
.end method
