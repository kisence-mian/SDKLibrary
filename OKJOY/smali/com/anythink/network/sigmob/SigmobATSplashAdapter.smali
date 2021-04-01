.class public Lcom/anythink/network/sigmob/SigmobATSplashAdapter;
.super Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .registers 1

    .prologue
    .line 110
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATConst;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadSplashAd(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;)V
    .registers 11
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

    .prologue
    .line 30
    iput-object p6, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    .line 32
    const-string v0, ""

    .line 33
    const-string v1, ""

    .line 34
    if-nez p4, :cond_1c

    .line 35
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    if-eqz v0, :cond_1b

    .line 36
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "service params is empty."

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdFailed(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V

    .line 100
    :cond_1b
    :goto_1b
    return-void

    .line 40
    :cond_1c
    const-string v2, "app_id"

    invoke-interface {p4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 41
    const-string v0, "app_id"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_2e
    const-string v2, "app_key"

    invoke-interface {p4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 44
    const-string v1, "app_key"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    :cond_40
    const-string v2, "placement_id"

    invoke-interface {p4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 47
    const-string v2, "placement_id"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->c:Ljava/lang/String;

    .line 50
    :cond_54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 51
    :cond_68
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    if-eqz v0, :cond_1b

    .line 52
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "app_id\u3001app_key\u3001placement_id could not be null."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    invoke-interface {v1, p0, v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdFailed(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_1b

    .line 60
    :cond_7c
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    new-instance v1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;-><init>(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, p1, p4, v1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/sigmob/SigmobATInitManager$a;)V

    goto :goto_1b
.end method
