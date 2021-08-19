.class Lcom/transsion/TranssionSDK$5;
.super Lcom/transsion/gamead/GameRewardedAdCallback;
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

    .line 328
    iput-object p1, p0, Lcom/transsion/TranssionSDK$5;->this$0:Lcom/transsion/TranssionSDK;

    invoke-direct {p0}, Lcom/transsion/gamead/GameRewardedAdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedAdClosed()V
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/transsion/TranssionSDK$5;->this$0:Lcom/transsion/TranssionSDK;

    const-string v1, "TranssionSDK onRewardedAdClosed"

    invoke-virtual {v0, v1}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public onRewardedAdFailedToShow(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 344
    iget-object v0, p0, Lcom/transsion/TranssionSDK$5;->this$0:Lcom/transsion/TranssionSDK;

    const-string v1, "TranssionSDK onRewardedAdFailedToShow"

    invoke-virtual {v0, v1}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public onRewardedAdOpened()V
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/transsion/TranssionSDK$5;->this$0:Lcom/transsion/TranssionSDK;

    const-string v1, "TranssionSDK onRewardedAdOpened"

    invoke-virtual {v0, v1}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public onUserEarnedReward(Lcom/transsion/gamead/GameRewardItem;)V
    .registers 5
    .param p1, "gameRewardItem"    # Lcom/transsion/gamead/GameRewardItem;

    .line 340
    iget-object v0, p0, Lcom/transsion/TranssionSDK$5;->this$0:Lcom/transsion/TranssionSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TranssionSDK onUserEarnedReward "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 341
    return-void
.end method
