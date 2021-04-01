.class public abstract Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;
.super Lcom/anythink/core/b/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/anythink/core/b/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clean()V
.end method

.method public isAdReady()Z
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public abstract loadSplashAd(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            "Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;",
            ")V"
        }
    .end annotation
.end method
