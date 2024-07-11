.class public Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->showRewardAd(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$8;->this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReward(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 3

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->rewardAdListener:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onReward(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_7
    return-void
.end method

.method public onRewardedAdClosed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 3

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->rewardAdListener:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onRewardedAdClosed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_7
    return-void
.end method

.method public onRewardedAdPlayClicked(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 3

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->rewardAdListener:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onRewardedAdPlayClicked(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_7
    return-void
.end method

.method public onRewardedAdPlayEnd(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 3

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->rewardAdListener:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onRewardedAdPlayEnd(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_7
    return-void
.end method

.method public onRewardedAdPlayFailed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 3

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->rewardAdListener:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onRewardedAdPlayFailed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_7
    return-void
.end method

.method public onRewardedAdPlayStart(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 3

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->rewardAdListener:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onRewardedAdPlayStart(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_7
    return-void
.end method
