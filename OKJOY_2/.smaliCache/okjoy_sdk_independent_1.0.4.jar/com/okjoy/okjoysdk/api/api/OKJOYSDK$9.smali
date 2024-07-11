.class public Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$9;->this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialAdClicked(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 3

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->interstitialAdListener:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdClicked(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_7
    return-void
.end method

.method public onInterstitialAdClose(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 3

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->interstitialAdListener:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdClose(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_7
    return-void
.end method

.method public onInterstitialAdPlayEnd(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 3

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->interstitialAdListener:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdPlayEnd(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_7
    return-void
.end method

.method public onInterstitialAdPlayFailed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 3

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->interstitialAdListener:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdPlayFailed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_7
    return-void
.end method

.method public onInterstitialAdPlayStart(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 3

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->interstitialAdListener:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdPlayStart(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_7
    return-void
.end method

.method public onInterstitialAdShow(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V
    .registers 3

    sget-object v0, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->interstitialAdListener:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdShow(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_7
    return-void
.end method
