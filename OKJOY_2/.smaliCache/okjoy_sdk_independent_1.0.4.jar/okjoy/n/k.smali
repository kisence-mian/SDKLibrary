.class public Lokjoy/n/k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokjoy/n/k$b;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/app/Activity;

.field public c:Z

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/rewardvideo/api/ATRewardVideoAd;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/interstitial/api/ATInterstitial;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/banner/api/ATBannerView;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

.field public k:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

.field public l:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkBannerAdListener;

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lokjoy/n/k;->c:Z

    const-string v1, "\u672a\u8c03\u7528\u5e7f\u544a\u521d\u59cb\u5316"

    iput-object v1, p0, Lokjoy/n/k;->e:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lokjoy/n/k;->f:Ljava/util/HashMap;

    iput-object v1, p0, Lokjoy/n/k;->g:Ljava/util/HashMap;

    iput-object v1, p0, Lokjoy/n/k;->h:Ljava/util/HashMap;

    iput-boolean v0, p0, Lokjoy/n/k;->i:Z

    iput-boolean v0, p0, Lokjoy/n/k;->m:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lokjoy/n/k;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lokjoy/n/k;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lokjoy/n/k;->h:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object p0, p0, Lokjoy/n/k;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;->getConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;->getCode()Ljava/lang/String;

    move-result-object p1

    :cond_20
    return-object p1
.end method

.method public static synthetic a(Lokjoy/n/k;Z)Z
    .registers 2

    iput-boolean p1, p0, Lokjoy/n/k;->n:Z

    return p1
.end method

.method public static synthetic b(Lokjoy/n/k;Z)Z
    .registers 2

    iput-boolean p1, p0, Lokjoy/n/k;->i:Z

    return p1
.end method

.method public static synthetic c(Lokjoy/n/k;Z)Z
    .registers 2

    iput-boolean p1, p0, Lokjoy/n/k;->c:Z

    return p1
.end method

.method public static synthetic d(Lokjoy/n/k;Z)Z
    .registers 2

    iput-boolean p1, p0, Lokjoy/n/k;->m:Z

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lokjoy/n/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    :cond_1f
    return v1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lokjoy/n/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdvPlacementModel;->getConfig()Ljava/lang/String;

    move-result-object p1

    :cond_20
    return-object p1
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lokjoy/n/k;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lokjoy/n/k;->i:Z

    if-eqz v1, :cond_b

    iget-object v0, p0, Lokjoy/n/k;->b:Landroid/app/Activity;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lokjoy/n/k;->i:Z

    :cond_b
    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-direct {v1, v0, p1}, Lcom/anythink/interstitial/api/ATInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/anythink/interstitial/api/ATInterstitial;->load()V

    new-instance v0, Lokjoy/n/k$a;

    invoke-direct {v0, p0, p1, v1}, Lokjoy/n/k$a;-><init>(Lokjoy/n/k;Ljava/lang/String;Lcom/anythink/interstitial/api/ATInterstitial;)V

    invoke-virtual {v1, v0}, Lcom/anythink/interstitial/api/ATInterstitial;->setAdListener(Lcom/anythink/interstitial/api/ATInterstitialListener;)V

    return-void
.end method
