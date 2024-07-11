.class public Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;
.super Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;


# instance fields
.field a:Lcom/anythink/basead/e/g;

.field b:Lcom/anythink/core/common/d/i;

.field c:Ljava/lang/String;

.field d:Ljava/util/Map;
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

.method static synthetic a(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

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

    .line 90
    const-string v0, "unit_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_11
    const-string v0, ""

    :goto_13
    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->c:Ljava/lang/String;

    .line 92
    nop

    .line 93
    const/4 v0, 0x5

    .line 94
    nop

    .line 96
    const-string v1, "orientation"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_30

    .line 97
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_30

    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_31

    .line 103
    :cond_30
    move v1, v3

    :goto_31
    const-string v2, "countdown"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 104
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 105
    if-eqz v2, :cond_49

    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 110
    :cond_49
    const-string v2, "allows_skip"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 111
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 112
    if-eqz v2, :cond_67

    .line 113
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 115
    if-nez v2, :cond_62

    .line 116
    goto :goto_67

    .line 117
    :cond_62
    if-ne v2, v3, :cond_66

    .line 118
    const/4 v3, 0x0

    goto :goto_67

    .line 117
    :cond_66
    move v3, v2

    .line 123
    :cond_67
    :goto_67
    const-string v2, "basead_params"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/d/i;

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->b:Lcom/anythink/core/common/d/i;

    .line 124
    new-instance p2, Lcom/anythink/basead/e/g;

    sget v2, Lcom/anythink/basead/e/b$a;->b:I

    iget-object v4, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->b:Lcom/anythink/core/common/d/i;

    invoke-direct {p2, p1, v2, v4}, Lcom/anythink/basead/e/g;-><init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    .line 125
    new-instance p1, Lcom/anythink/basead/e/c$a;

    invoke-direct {p1}, Lcom/anythink/basead/e/c$a;-><init>()V

    .line 126
    invoke-virtual {p1, v1}, Lcom/anythink/basead/e/c$a;->d(I)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 127
    invoke-virtual {p1, v0}, Lcom/anythink/basead/e/c$a;->e(I)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 128
    invoke-virtual {p1, v3}, Lcom/anythink/basead/e/c$a;->f(I)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/anythink/basead/e/c$a;->a()Lcom/anythink/basead/e/c;

    move-result-object p1

    .line 125
    invoke-virtual {p2, p1}, Lcom/anythink/basead/e/g;->a(Lcom/anythink/basead/e/c;)V

    .line 132
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    new-instance p2, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;

    invoke-direct {p2, p0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;-><init>(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/e/g;->a(Lcom/anythink/basead/f/a;)V

    .line 162
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 82
    invoke-virtual {v0}, Lcom/anythink/basead/e/g;->b()V

    .line 83
    iput-object v1, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    .line 86
    :cond_a
    iput-object v1, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->b:Lcom/anythink/core/common/d/i;

    .line 87
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

    .line 184
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->d:Ljava/util/Map;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 167
    const-string v0, ""

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 178
    const-string v0, ""

    return-object v0
.end method

.method public isAdReady()Z
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    invoke-static {v0}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/e/b;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->d:Ljava/util/Map;

    .line 69
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->a:Lcom/anythink/basead/e/g;

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

    .line 38
    nop

    .line 1090
    const-string p3, "unit_id"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_14

    :cond_12
    const-string p3, ""

    :goto_14
    iput-object p3, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->c:Ljava/lang/String;

    .line 1092
    nop

    .line 1093
    const/4 p3, 0x5

    .line 1094
    nop

    .line 1096
    const-string v0, "orientation"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_31

    .line 1097
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1098
    if-eqz v0, :cond_31

    .line 1099
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_32

    .line 1103
    :cond_31
    move v0, v2

    :goto_32
    const-string v1, "countdown"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1104
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1105
    if-eqz v1, :cond_4a

    .line 1106
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    .line 1110
    :cond_4a
    const-string v1, "allows_skip"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 1111
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1112
    if-eqz v1, :cond_68

    .line 1113
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1115
    if-nez v1, :cond_63

    .line 1116
    goto :goto_68

    .line 1117
    :cond_63
    if-ne v1, v2, :cond_67

    .line 1118
    const/4 v2, 0x0

    goto :goto_68

    .line 1117
    :cond_67
    move v2, v1

    .line 1123
    :cond_68
    :goto_68
    const-string v1, "basead_params"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/d/i;

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->b:Lcom/anythink/core/common/d/i;

    .line 1124
    new-instance p2, Lcom/anythink/basead/e/g;

    sget v1, Lcom/anythink/basead/e/b$a;->b:I

    iget-object v3, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->b:Lcom/anythink/core/common/d/i;

    invoke-direct {p2, p1, v1, v3}, Lcom/anythink/basead/e/g;-><init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    .line 1125
    new-instance p1, Lcom/anythink/basead/e/c$a;

    invoke-direct {p1}, Lcom/anythink/basead/e/c$a;-><init>()V

    .line 1126
    invoke-virtual {p1, v0}, Lcom/anythink/basead/e/c$a;->d(I)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 1127
    invoke-virtual {p1, p3}, Lcom/anythink/basead/e/c$a;->e(I)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 1128
    invoke-virtual {p1, v2}, Lcom/anythink/basead/e/c$a;->f(I)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 1129
    invoke-virtual {p1}, Lcom/anythink/basead/e/c$a;->a()Lcom/anythink/basead/e/c;

    move-result-object p1

    .line 1125
    invoke-virtual {p2, p1}, Lcom/anythink/basead/e/g;->a(Lcom/anythink/basead/e/c;)V

    .line 1132
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    new-instance p2, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;

    invoke-direct {p2, p0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;-><init>(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/e/g;->a(Lcom/anythink/basead/f/a;)V

    .line 40
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    new-instance p2, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$1;-><init>(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/e/g;->a(Lcom/anythink/basead/f/c;)V

    .line 63
    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    .line 74
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    if-eqz p1, :cond_7

    .line 75
    invoke-virtual {p1, p2}, Lcom/anythink/basead/e/g;->a(Landroid/view/ViewGroup;)V

    .line 77
    :cond_7
    return-void
.end method
