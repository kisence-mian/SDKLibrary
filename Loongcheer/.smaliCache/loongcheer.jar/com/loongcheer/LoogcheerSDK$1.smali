.class Lcom/loongcheer/LoogcheerSDK$1;
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

    .line 115
    iput-object p1, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    const-string v1, "PlayAD .onAdError"

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    sget-object v1, LsdkInterface/define/ADType;->Reward:LsdkInterface/define/ADType;

    sget-object v2, LsdkInterface/define/ADResult;->Show_Failed:LsdkInterface/define/ADResult;

    # invokes: Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, p1}, Lcom/loongcheer/LoogcheerSDK;->access$000(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public onClose()V
    .registers 5

    .line 125
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    const-string v1, "PlayAD.onClose"

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    sget-object v1, LsdkInterface/define/ADType;->Reward:LsdkInterface/define/ADType;

    sget-object v2, LsdkInterface/define/ADResult;->Show_Skipped:LsdkInterface/define/ADResult;

    const-string v3, ""

    # invokes: Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/loongcheer/LoogcheerSDK;->access$100(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public onReward()V
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    const-string v1, "PlayAD.onReward"

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    sget-object v1, LsdkInterface/define/ADType;->Reward:LsdkInterface/define/ADType;

    sget-object v2, LsdkInterface/define/ADResult;->Show_Finished:LsdkInterface/define/ADResult;

    const-string v3, ""

    # invokes: Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/loongcheer/LoogcheerSDK;->access$300(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onShow()V
    .registers 5

    .line 131
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    const-string v1, "PlayAD.onShow"

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    sget-object v1, LsdkInterface/define/ADType;->Reward:LsdkInterface/define/ADType;

    sget-object v2, LsdkInterface/define/ADResult;->Show_Start:LsdkInterface/define/ADResult;

    const-string v3, ""

    # invokes: Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/loongcheer/LoogcheerSDK;->access$200(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public onShowError(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

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

    .line 145
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    sget-object v1, LsdkInterface/define/ADType;->Reward:LsdkInterface/define/ADType;

    sget-object v2, LsdkInterface/define/ADResult;->Show_Failed:LsdkInterface/define/ADResult;

    # invokes: Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, p1}, Lcom/loongcheer/LoogcheerSDK;->access$400(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    .line 146
    return-void
.end method
