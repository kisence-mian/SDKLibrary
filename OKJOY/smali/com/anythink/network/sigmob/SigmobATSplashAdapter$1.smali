.class final Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/sigmob/SigmobATInitManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->loadSplashAd(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 60
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    iput-object p2, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 6

    .prologue
    .line 63
    new-instance v0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    invoke-static {v1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 64
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->setDisableAutoHideAd(Z)V

    .line 67
    new-instance v1, Lcom/sigmob/windad/Splash/WindSplashAD;

    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->b:Landroid/view/ViewGroup;

    new-instance v4, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1$1;

    invoke-direct {v4, p0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1$1;-><init>(Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/sigmob/windad/Splash/WindSplashAD;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/windad/Splash/WindSplashAdRequest;Lcom/sigmob/windad/Splash/WindSplashADListener;)V

    .line 98
    return-void
.end method
