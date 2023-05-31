.class public abstract Lcom/sigmob/windad/base/WindVideoAdAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/LifecycleListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract initWithWADRewardVideoAdConnector(Lcom/sigmob/windad/base/WindVideoAdConnector;)V
.end method

.method public abstract initializeSdk(Landroid/content/Context;Lcom/sigmob/sdk/base/models/ADStrategy;)V
.end method

.method public abstract isInit()Z
.end method

.method public abstract isReady(Lcom/sigmob/sdk/base/models/ADStrategy;)Z
.end method

.method public abstract loadAd(Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/ADStrategy;)V
.end method

.method public abstract presentRewardVideoAd(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/ADStrategy;)V
.end method

.method public abstract reset()V
.end method
