.class Lcom/loongcheer/LoogcheerSDK$6;
.super Ljava/lang/Object;
.source "LoogcheerSDK.java"

# interfaces
.implements Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/LoogcheerSDK;->PlayAD(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/LoogcheerSDK;


# direct methods
.method constructor <init>(Lcom/loongcheer/LoogcheerSDK;)V
    .registers 2
    .param p1, "this$0"    # Lcom/loongcheer/LoogcheerSDK;

    .line 346
    iput-object p1, p0, Lcom/loongcheer/LoogcheerSDK$6;->this$0:Lcom/loongcheer/LoogcheerSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$6;->this$0:Lcom/loongcheer/LoogcheerSDK;

    const-string v1, "PlayAD .onAdError"

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$6;->this$0:Lcom/loongcheer/LoogcheerSDK;

    sget-object v1, LsdkInterface/define/ADType;->Reward:LsdkInterface/define/ADType;

    sget-object v2, LsdkInterface/define/ADResult;->Show_Failed:LsdkInterface/define/ADResult;

    # invokes: Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, p1}, Lcom/loongcheer/LoogcheerSDK;->access$300(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public onClose()V
    .registers 5

    .line 356
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$6;->this$0:Lcom/loongcheer/LoogcheerSDK;

    const-string v1, "PlayAD.onClose"

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$6;->this$0:Lcom/loongcheer/LoogcheerSDK;

    sget-object v1, LsdkInterface/define/ADType;->Reward:LsdkInterface/define/ADType;

    sget-object v2, LsdkInterface/define/ADResult;->Show_Skipped:LsdkInterface/define/ADResult;

    const-string v3, ""

    # invokes: Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/loongcheer/LoogcheerSDK;->access$400(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public onReward()V
    .registers 5

    .line 369
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$6;->this$0:Lcom/loongcheer/LoogcheerSDK;

    const-string v1, "PlayAD.onReward"

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$6;->this$0:Lcom/loongcheer/LoogcheerSDK;

    sget-object v1, LsdkInterface/define/ADType;->Reward:LsdkInterface/define/ADType;

    sget-object v2, LsdkInterface/define/ADResult;->Show_Finished:LsdkInterface/define/ADResult;

    const-string v3, ""

    # invokes: Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/loongcheer/LoogcheerSDK;->access$600(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public onShow()V
    .registers 5

    .line 362
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$6;->this$0:Lcom/loongcheer/LoogcheerSDK;

    const-string v1, "PlayAD.onShow"

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$6;->this$0:Lcom/loongcheer/LoogcheerSDK;

    sget-object v1, LsdkInterface/define/ADType;->Reward:LsdkInterface/define/ADType;

    sget-object v2, LsdkInterface/define/ADResult;->Show_Start:LsdkInterface/define/ADResult;

    const-string v3, ""

    # invokes: Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/loongcheer/LoogcheerSDK;->access$500(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public onShowError(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$6;->this$0:Lcom/loongcheer/LoogcheerSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayAD.onShowAdError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$6;->this$0:Lcom/loongcheer/LoogcheerSDK;

    sget-object v1, LsdkInterface/define/ADType;->Reward:LsdkInterface/define/ADType;

    sget-object v2, LsdkInterface/define/ADResult;->Show_Failed:LsdkInterface/define/ADResult;

    # invokes: Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, p1}, Lcom/loongcheer/LoogcheerSDK;->access$700(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    .line 377
    return-void
.end method
