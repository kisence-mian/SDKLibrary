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
.method public abstract getAdapterVersion()I
.end method

.method public abstract initWithWADVideoAdConnector(Lcom/sigmob/windad/base/WindVideoAdConnector;)V
.end method

.method public abstract initializeSdk(Landroid/content/Context;Lcom/sigmob/sdk/common/models/ADStrategy;)V
.end method

.method public abstract isInit()Z
.end method

.method public abstract isReady(Lcom/sigmob/sdk/common/models/ADStrategy;)Z
.end method

.method public abstract loadAd(Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;)V
.end method

.method public abstract presentVideoAd(Landroid/app/Activity;Lcom/sigmob/sdk/common/models/ADStrategy;)V
.end method

.method public abstract reset()V
.end method
