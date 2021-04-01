.class public Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;
.super Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;


# instance fields
.field a:Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;

.field b:Lcom/mintegral/msdk/out/MTGInterstitialHandler;

.field c:Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;

.field d:Ljava/lang/String;

.field e:Z

.field f:Z

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;-><init>()V

    .line 29
    const-class v0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->i:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->d:Ljava/lang/String;

    .line 38
    const-string v0, "{}"

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic B(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic C(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic D(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic E(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->e:Z

    if-eqz v0, :cond_31

    .line 46
    new-instance v0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;

    invoke-direct {v0, p0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;-><init>(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)V

    .line 118
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 119
    new-instance v1, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;

    check-cast p1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->d:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->c:Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;

    .line 121
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->c:Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->setInterstitialVideoListener(Lcom/mintegral/msdk/interstitialvideo/out/InterstitialVideoListener;)V

    .line 178
    :goto_21
    return-void

    .line 123
    :cond_22
    new-instance v1, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->d:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->a:Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;

    .line 124
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->a:Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->setInterstitialVideoListener(Lcom/mintegral/msdk/interstitialvideo/out/InterstitialVideoListener;)V

    goto :goto_21

    .line 129
    :cond_31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    const-string v1, "unit_id"

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v1, Lcom/mintegral/msdk/out/MTGInterstitialHandler;

    invoke-direct {v1, p1, v0}, Lcom/mintegral/msdk/out/MTGInterstitialHandler;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->b:Lcom/mintegral/msdk/out/MTGInterstitialHandler;

    .line 132
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->b:Lcom/mintegral/msdk/out/MTGInterstitialHandler;

    new-instance v1, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;

    invoke-direct {v1, p0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;-><init>(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/MTGInterstitialHandler;->setInterstitialListener(Lcom/mintegral/msdk/out/InterstitialListener;)V

    goto :goto_21
.end method

.method static synthetic a(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 28
    .line 1045
    iget-boolean v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->e:Z

    if-eqz v0, :cond_31

    .line 1046
    new-instance v0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;

    invoke-direct {v0, p0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;-><init>(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)V

    .line 1118
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1119
    new-instance v1, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;

    check-cast p1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->d:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->c:Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;

    .line 1121
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->c:Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->setInterstitialVideoListener(Lcom/mintegral/msdk/interstitialvideo/out/InterstitialVideoListener;)V

    .line 1128
    :goto_21
    return-void

    .line 1123
    :cond_22
    new-instance v1, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->d:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->a:Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;

    .line 1124
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->a:Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->setInterstitialVideoListener(Lcom/mintegral/msdk/interstitialvideo/out/InterstitialVideoListener;)V

    goto :goto_21

    .line 1129
    :cond_31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1130
    const-string v1, "unit_id"

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    new-instance v1, Lcom/mintegral/msdk/out/MTGInterstitialHandler;

    invoke-direct {v1, p1, v0}, Lcom/mintegral/msdk/out/MTGInterstitialHandler;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->b:Lcom/mintegral/msdk/out/MTGInterstitialHandler;

    .line 1132
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->b:Lcom/mintegral/msdk/out/MTGInterstitialHandler;

    new-instance v1, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;

    invoke-direct {v1, p0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;-><init>(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/MTGInterstitialHandler;->setInterstitialListener(Lcom/mintegral/msdk/out/InterstitialListener;)V

    goto :goto_21
.end method

.method static synthetic a(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic e(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic f(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic g(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic h(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic i(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic j(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic k(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic l(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic m(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic n(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic o(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic p(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic q(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic r(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic s(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic t(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic u(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic v(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic w(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic x(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic y(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .registers 1

    .prologue
    .line 283
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 331
    invoke-static {}, Lcom/anythink/network/mintegral/MintegralATInitManager;->getInstance()Lcom/anythink/network/mintegral/MintegralATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/mintegral/MintegralATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 326
    invoke-static {}, Lcom/anythink/network/mintegral/MintegralATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->c:Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;

    if-eqz v0, :cond_b

    .line 298
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->c:Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;

    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->isReady()Z

    move-result v0

    .line 305
    :goto_a
    return v0

    .line 301
    :cond_b
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->a:Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;

    if-eqz v0, :cond_16

    .line 302
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->a:Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;

    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->isBidReady()Z

    move-result v0

    goto :goto_a

    .line 305
    :cond_16
    iget-boolean v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->f:Z

    goto :goto_a
.end method

.method public loadInterstitialAd(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            "Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->f:Z

    .line 183
    iput-boolean v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->e:Z

    .line 184
    iput-object p4, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    .line 185
    if-nez p1, :cond_1d

    .line 186
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_1c

    .line 187
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "context is null."

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 251
    :cond_1c
    :goto_1c
    return-void

    .line 192
    :cond_1d
    if-nez p2, :cond_33

    .line 193
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_1c

    .line 194
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "This placement\'s params in server is null!"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_1c

    .line 199
    :cond_33
    const-string v0, "appid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    const-string v1, "appkey"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    const-string v2, "unitid"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->d:Ljava/lang/String;

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 204
    :cond_61
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_1c

    .line 205
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "mintegral appid, appkey or unitid is empty!"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_1c

    .line 211
    :cond_75
    const-string v0, "is_video"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 212
    const-string v0, "is_video"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->e:Z

    .line 217
    :cond_92
    const-string v0, "payload"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 218
    const-string v0, "payload"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->g:Ljava/lang/String;

    .line 221
    :cond_a6
    const-string v0, "tp_info"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 222
    const-string v0, "tp_info"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->h:Ljava/lang/String;

    .line 225
    :cond_ba
    iget-boolean v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->e:Z

    if-eqz v0, :cond_d7

    .line 226
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_d7

    .line 227
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_1c

    .line 228
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "context must be activity."

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    goto/16 :goto_1c

    .line 234
    :cond_d7
    invoke-static {}, Lcom/anythink/network/mintegral/MintegralATInitManager;->getInstance()Lcom/anythink/network/mintegral/MintegralATInitManager;

    move-result-object v0

    new-instance v1, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$3;-><init>(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/network/mintegral/MintegralATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;)V

    goto/16 :goto_1c
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 293
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 288
    return-void
.end method

.method public show(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->b:Lcom/mintegral/msdk/out/MTGInterstitialHandler;

    if-eqz v0, :cond_9

    .line 311
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->b:Lcom/mintegral/msdk/out/MTGInterstitialHandler;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MTGInterstitialHandler;->show()V

    .line 314
    :cond_9
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->c:Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;

    if-eqz v0, :cond_12

    .line 315
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->c:Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;

    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->show()V

    .line 318
    :cond_12
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->a:Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;

    if-eqz v0, :cond_1b

    .line 319
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->a:Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;

    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->showFromBid()V

    .line 321
    :cond_1b
    return-void
.end method

.method public startLoad()V
    .registers 5

    .prologue
    .line 258
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->b:Lcom/mintegral/msdk/out/MTGInterstitialHandler;

    if-eqz v0, :cond_16

    .line 260
    :try_start_4
    invoke-static {}, Lcom/mintegral/msdk/out/CustomInfoManager;->getInstance()Lcom/mintegral/msdk/out/CustomInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->d:Ljava/lang/String;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/out/CustomInfoManager;->setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_11} :catch_48

    .line 263
    :goto_11
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->b:Lcom/mintegral/msdk/out/MTGInterstitialHandler;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MTGInterstitialHandler;->preload()V

    .line 265
    :cond_16
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->c:Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;

    if-eqz v0, :cond_2c

    .line 267
    :try_start_1a
    invoke-static {}, Lcom/mintegral/msdk/out/CustomInfoManager;->getInstance()Lcom/mintegral/msdk/out/CustomInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->d:Ljava/lang/String;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/out/CustomInfoManager;->setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_27} :catch_46

    .line 270
    :goto_27
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->c:Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;

    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->load()V

    .line 272
    :cond_2c
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->a:Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;

    if-eqz v0, :cond_43

    .line 274
    :try_start_30
    invoke-static {}, Lcom/mintegral/msdk/out/CustomInfoManager;->getInstance()Lcom/mintegral/msdk/out/CustomInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->d:Ljava/lang/String;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/out/CustomInfoManager;->setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_3c} :catch_44

    .line 277
    :goto_3c
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->a:Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->loadFromBid(Ljava/lang/String;)V

    .line 279
    :cond_43
    return-void

    :catch_44
    move-exception v0

    goto :goto_3c

    :catch_46
    move-exception v0

    goto :goto_27

    :catch_48
    move-exception v0

    goto :goto_11
.end method
