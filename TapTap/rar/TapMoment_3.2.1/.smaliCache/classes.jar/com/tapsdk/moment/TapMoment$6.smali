.class final Lcom/tapsdk/moment/TapMoment$6;
.super Lcom/tapsdk/moment/view/Alert$ClickStub;
.source "TapMoment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/TapMoment;->closeMoment(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 449
    invoke-direct {p0}, Lcom/tapsdk/moment/view/Alert$ClickStub;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative()V
    .registers 3

    .line 459
    invoke-super {p0}, Lcom/tapsdk/moment/view/Alert$ClickStub;->onNegative()V

    .line 460
    invoke-static {}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->getInstance()Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;

    move-result-object v0

    const-string v1, "close_cancel.moment.taptap.action"

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public onPositive()V
    .registers 3

    .line 452
    invoke-super {p0}, Lcom/tapsdk/moment/view/Alert$ClickStub;->onPositive()V

    .line 453
    invoke-static {}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->getInstance()Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;

    move-result-object v0

    const-string v1, "close_confirm.moment.taptap.action"

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    .line 454
    # invokes: Lcom/tapsdk/moment/TapMoment;->closeMoment()V
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$300()V

    .line 455
    return-void
.end method
