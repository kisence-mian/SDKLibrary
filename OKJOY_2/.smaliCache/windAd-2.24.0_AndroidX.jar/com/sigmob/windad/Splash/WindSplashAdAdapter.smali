.class public abstract Lcom/sigmob/windad/Splash/WindSplashAdAdapter;
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

.method public abstract initWithWAdConnector(Lcom/sigmob/windad/Splash/WindSplashAdBridge;)V
.end method

.method public abstract initializeSdk(Landroid/content/Context;Lcom/sigmob/sdk/common/models/ADStrategy;)V
.end method

.method public abstract isInit()Z
.end method

.method public abstract load(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;)V
.end method

.method public abstract show(Landroid/view/ViewGroup;)V
.end method
