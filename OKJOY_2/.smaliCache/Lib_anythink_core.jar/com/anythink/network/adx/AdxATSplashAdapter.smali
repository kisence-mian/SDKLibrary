.class public Lcom/anythink/network/adx/AdxATSplashAdapter;
.super Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;


# instance fields
.field a:Lcom/anythink/basead/e/g;

.field b:Lcom/anythink/core/common/d/i;

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

    .line 27
    invoke-direct {p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 8
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

    .line 88
    nop

    .line 89
    nop

    .line 90
    nop

    .line 92
    const-string v0, "orientation"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    .line 93
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_1b

    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1c

    .line 99
    :cond_1b
    move v0, v2

    :goto_1c
    const-string v1, "countdown"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 100
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_35

    .line 102
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    goto :goto_36

    .line 106
    :cond_35
    const/4 v1, 0x5

    :goto_36
    const-string v3, "allows_skip"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 107
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 108
    if-eqz v3, :cond_54

    .line 109
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 111
    if-nez v3, :cond_4f

    .line 112
    goto :goto_54

    .line 113
    :cond_4f
    if-ne v3, v2, :cond_53

    .line 114
    const/4 v2, 0x0

    goto :goto_54

    .line 113
    :cond_53
    move v2, v3

    .line 119
    :cond_54
    :goto_54
    const-string v3, "basead_params"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/d/i;

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->b:Lcom/anythink/core/common/d/i;

    .line 120
    new-instance p2, Lcom/anythink/basead/e/g;

    sget v3, Lcom/anythink/basead/e/b$a;->a:I

    iget-object v4, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->b:Lcom/anythink/core/common/d/i;

    invoke-direct {p2, p1, v3, v4}, Lcom/anythink/basead/e/g;-><init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    .line 121
    new-instance p1, Lcom/anythink/basead/e/c$a;

    invoke-direct {p1}, Lcom/anythink/basead/e/c$a;-><init>()V

    .line 122
    invoke-virtual {p1, v0}, Lcom/anythink/basead/e/c$a;->d(I)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 123
    invoke-virtual {p1, v1}, Lcom/anythink/basead/e/c$a;->e(I)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 124
    invoke-virtual {p1, v2}, Lcom/anythink/basead/e/c$a;->f(I)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lcom/anythink/basead/e/c$a;->a()Lcom/anythink/basead/e/c;

    move-result-object p1

    .line 121
    invoke-virtual {p2, p1}, Lcom/anythink/basead/e/g;->a(Lcom/anythink/basead/e/c;)V

    .line 128
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    new-instance p2, Lcom/anythink/network/adx/AdxATSplashAdapter$2;

    invoke-direct {p2, p0}, Lcom/anythink/network/adx/AdxATSplashAdapter$2;-><init>(Lcom/anythink/network/adx/AdxATSplashAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/e/g;->a(Lcom/anythink/basead/f/a;)V

    .line 158
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 79
    invoke-virtual {v0}, Lcom/anythink/basead/e/g;->b()V

    .line 80
    iput-object v1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    .line 83
    :cond_a
    iput-object v1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->b:Lcom/anythink/core/common/d/i;

    .line 84
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

    .line 178
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 162
    const-string v0, "Adx"

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->b:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 173
    const-string v0, ""

    return-object v0
.end method

.method public isAdReady()Z
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    invoke-static {v0}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/e/b;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->c:Ljava/util/Map;

    .line 66
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/anythink/basead/e/g;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
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

    .line 36
    nop

    .line 1088
    nop

    .line 1089
    nop

    .line 1090
    nop

    .line 1092
    const-string p3, "orientation"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 1093
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 1094
    if-eqz p3, :cond_1c

    .line 1095
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_1d

    .line 1099
    :cond_1c
    move p3, v1

    :goto_1d
    const-string v0, "countdown"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1100
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1101
    if-eqz v0, :cond_36

    .line 1102
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_37

    .line 1106
    :cond_36
    const/4 v0, 0x5

    :goto_37
    const-string v2, "allows_skip"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1107
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1108
    if-eqz v2, :cond_55

    .line 1109
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1111
    if-nez v2, :cond_50

    .line 1112
    goto :goto_55

    .line 1113
    :cond_50
    if-ne v2, v1, :cond_54

    .line 1114
    const/4 v1, 0x0

    goto :goto_55

    .line 1113
    :cond_54
    move v1, v2

    .line 1119
    :cond_55
    :goto_55
    const-string v2, "basead_params"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/d/i;

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->b:Lcom/anythink/core/common/d/i;

    .line 1120
    new-instance p2, Lcom/anythink/basead/e/g;

    sget v2, Lcom/anythink/basead/e/b$a;->a:I

    iget-object v3, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->b:Lcom/anythink/core/common/d/i;

    invoke-direct {p2, p1, v2, v3}, Lcom/anythink/basead/e/g;-><init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    .line 1121
    new-instance p1, Lcom/anythink/basead/e/c$a;

    invoke-direct {p1}, Lcom/anythink/basead/e/c$a;-><init>()V

    .line 1122
    invoke-virtual {p1, p3}, Lcom/anythink/basead/e/c$a;->d(I)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 1123
    invoke-virtual {p1, v0}, Lcom/anythink/basead/e/c$a;->e(I)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 1124
    invoke-virtual {p1, v1}, Lcom/anythink/basead/e/c$a;->f(I)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 1125
    invoke-virtual {p1}, Lcom/anythink/basead/e/c$a;->a()Lcom/anythink/basead/e/c;

    move-result-object p1

    .line 1121
    invoke-virtual {p2, p1}, Lcom/anythink/basead/e/g;->a(Lcom/anythink/basead/e/c;)V

    .line 1128
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    new-instance p2, Lcom/anythink/network/adx/AdxATSplashAdapter$2;

    invoke-direct {p2, p0}, Lcom/anythink/network/adx/AdxATSplashAdapter$2;-><init>(Lcom/anythink/network/adx/AdxATSplashAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/e/g;->a(Lcom/anythink/basead/f/a;)V

    .line 38
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    new-instance p2, Lcom/anythink/network/adx/AdxATSplashAdapter$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/adx/AdxATSplashAdapter$1;-><init>(Lcom/anythink/network/adx/AdxATSplashAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/e/g;->a(Lcom/anythink/basead/f/c;)V

    .line 61
    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    .line 71
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    if-eqz p1, :cond_7

    .line 72
    invoke-virtual {p1, p2}, Lcom/anythink/basead/e/g;->a(Landroid/view/ViewGroup;)V

    .line 74
    :cond_7
    return-void
.end method
