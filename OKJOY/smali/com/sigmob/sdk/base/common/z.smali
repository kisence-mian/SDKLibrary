.class public abstract Lcom/sigmob/sdk/base/common/z;
.super Lcom/sigmob/sdk/base/common/r;


# instance fields
.field protected a:J

.field protected b:Lcom/sigmob/sdk/base/common/s;

.field protected c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field protected d:Ljava/lang/String;

.field private e:Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;


# direct methods
.method protected constructor <init>(Lcom/sigmob/sdk/base/common/s;)V
    .registers 3

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/r;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/z;->b:Lcom/sigmob/sdk/base/common/s;

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/z;->b:Lcom/sigmob/sdk/base/common/s;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/z;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/s;)V
.end method

.method public a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/z;->b:Lcom/sigmob/sdk/base/common/s;

    iget-wide v2, p0, Lcom/sigmob/sdk/base/common/z;->a:J

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s;J)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/z;->e:Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/z;->e:Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/z;->e:Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/sigmob/sdk/base/common/z;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v0

    if-eqz v0, :cond_21

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/z;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v0, "baseAdUnitValid success"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    :try_start_d
    const-string v0, "broadcastIdentifier"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/base/common/z;->a:J
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_1b} :catch_2d

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/z;->b:Lcom/sigmob/sdk/base/common/s;

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/sdk/base/common/z;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/s;)V

    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/z;->b:Lcom/sigmob/sdk/base/common/s;

    sget-object v1, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto :goto_20

    :catch_2d
    move-exception v0

    const-string v0, "LocalExtras contained an incorrect type."

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/z;->b:Lcom/sigmob/sdk/base/common/s;

    sget-object v1, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto :goto_20
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/z;->d:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/z;->e:Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/z;->e:Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/z;->e:Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;)V

    :cond_b
    return-void
.end method

.method protected abstract b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
.end method
