.class Lcom/transsion/TranssionSDK$4;
.super Lcom/transsion/gamead/GameRewardedAdLoadCallback;
.source "TranssionSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/TranssionSDK;->LoadAD(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/TranssionSDK;


# direct methods
.method constructor <init>(Lcom/transsion/TranssionSDK;)V
    .registers 2
    .param p1, "this$0"    # Lcom/transsion/TranssionSDK;

    .line 315
    iput-object p1, p0, Lcom/transsion/TranssionSDK$4;->this$0:Lcom/transsion/TranssionSDK;

    invoke-direct {p0}, Lcom/transsion/gamead/GameRewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedAdFailedToLoad(I)V
    .registers 6
    .param p1, "i"    # I

    .line 324
    invoke-super {p0, p1}, Lcom/transsion/gamead/GameRewardedAdLoadCallback;->onRewardedAdFailedToLoad(I)V

    .line 325
    iget-object v0, p0, Lcom/transsion/TranssionSDK$4;->this$0:Lcom/transsion/TranssionSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TranssionSDK onRewardedAdFailedToLoad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/transsion/TranssionSDK$4;->this$0:Lcom/transsion/TranssionSDK;

    sget-object v1, LsdkInterface/define/ADType;->Reward:LsdkInterface/define/ADType;

    sget-object v2, LsdkInterface/define/ADResult;->Load_Failure:LsdkInterface/define/ADResult;

    const-string v3, ""

    # invokes: Lcom/transsion/TranssionSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/TranssionSDK;->access$100(Lcom/transsion/TranssionSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public onRewardedAdLoaded()V
    .registers 5

    .line 318
    invoke-super {p0}, Lcom/transsion/gamead/GameRewardedAdLoadCallback;->onRewardedAdLoaded()V

    .line 319
    iget-object v0, p0, Lcom/transsion/TranssionSDK$4;->this$0:Lcom/transsion/TranssionSDK;

    const-string v1, "TranssionSDK onRewardedAdLoaded"

    invoke-virtual {v0, v1}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/transsion/TranssionSDK$4;->this$0:Lcom/transsion/TranssionSDK;

    sget-object v1, LsdkInterface/define/ADType;->Reward:LsdkInterface/define/ADType;

    sget-object v2, LsdkInterface/define/ADResult;->Load_Success:LsdkInterface/define/ADResult;

    const-string v3, ""

    # invokes: Lcom/transsion/TranssionSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/TranssionSDK;->access$000(Lcom/transsion/TranssionSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    .line 321
    return-void
.end method
