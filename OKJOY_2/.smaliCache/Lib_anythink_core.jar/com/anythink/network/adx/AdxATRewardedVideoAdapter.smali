.class public Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;
.super Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;


# instance fields
.field a:Lcom/anythink/core/common/d/i;

.field b:Lcom/anythink/basead/e/f;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 141
    nop

    .line 142
    nop

    .line 144
    const-string v0, "v_m"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 145
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_19

    .line 147
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1a

    .line 151
    :cond_19
    const/4 v0, 0x0

    :goto_1a
    const-string v1, "s_c_t"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 152
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_31

    .line 154
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_32

    .line 158
    :cond_31
    const/4 v1, -0x1

    :goto_32
    const-string v2, "basead_params"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/d/i;

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->a:Lcom/anythink/core/common/d/i;

    .line 159
    new-instance p2, Lcom/anythink/basead/e/f;

    sget v2, Lcom/anythink/basead/e/b$a;->a:I

    iget-object v3, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->a:Lcom/anythink/core/common/d/i;

    invoke-direct {p2, p1, v2, v3}, Lcom/anythink/basead/e/f;-><init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/e/f;

    .line 160
    new-instance p1, Lcom/anythink/basead/e/c$a;

    invoke-direct {p1}, Lcom/anythink/basead/e/c$a;-><init>()V

    .line 161
    invoke-virtual {p1, v0}, Lcom/anythink/basead/e/c$a;->a(I)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 162
    invoke-virtual {p1, v1}, Lcom/anythink/basead/e/c$a;->b(I)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lcom/anythink/basead/e/c$a;->a()Lcom/anythink/basead/e/c;

    move-result-object p1

    .line 160
    invoke-virtual {p2, p1}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/e/c;)V

    .line 166
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic o(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic p(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic q(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic r(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic s(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic t(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/e/f;

    if-eqz v0, :cond_a

    .line 171
    invoke-virtual {v0}, Lcom/anythink/basead/e/f;->b()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/e/f;

    .line 174
    :cond_a
    return-void
.end method

.method public getNetworkInfoMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 188
    const-string v0, "Adx"

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->a:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 183
    const-string v0, ""

    return-object v0
.end method

.method public initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 137
    const/4 p1, 0x1

    return p1
.end method

.method public isAdReady()Z
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/e/f;

    if-eqz v0, :cond_11

    .line 194
    invoke-static {v0}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/e/b;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->c:Ljava/util/Map;

    .line 195
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/e/f;

    invoke-virtual {v0}, Lcom/anythink/basead/e/f;->c()Z

    move-result v0

    return v0

    .line 197
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 109
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/e/f;

    new-instance p2, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$2;

    invoke-direct {p2, p0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$2;-><init>(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/f/c;)V

    .line 132
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 5

    .line 37
    invoke-static {p1}, Lcom/anythink/core/common/g/d;->d(Landroid/content/Context;)I

    move-result p1

    .line 38
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 39
    iget-object v1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mScenario:Ljava/lang/String;

    const-string v2, "extra_scenario"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "extra_orientation"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/e/f;

    new-instance v1, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;-><init>(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)V

    invoke-virtual {p1, v1}, Lcom/anythink/basead/e/f;->a(Lcom/anythink/basead/f/e;)V

    .line 99
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/e/f;

    if-eqz p1, :cond_2b

    .line 100
    invoke-virtual {p1, v0}, Lcom/anythink/basead/e/f;->a(Ljava/util/Map;)V

    .line 102
    :cond_2b
    return-void
.end method
