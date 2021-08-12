.class public Lcom/qq/e/ads/nativ/NativeUnifiedAD;
.super Lcom/qq/e/ads/AbstractAD;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qq/e/ads/AbstractAD<",
        "Lcom/qq/e/comm/pi/NUADI;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private volatile e:I

.field private volatile f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V
    .registers 5

    invoke-direct {p0}, Lcom/qq/e/ads/AbstractAD;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->b:Ljava/util/List;

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getAppStatus()Lcom/qq/e/comm/managers/status/APPStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/status/APPStatus;->getAPPID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    return-void

    :cond_24
    const-string p1, "SDK \u5c1a\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u5728 Application \u4e2d\u8c03\u7528 GDTADManager.getInstance().initWith() \u521d\u59cb\u5316"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 p1, 0x7d3

    invoke-virtual {p0, p3, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a(Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/qq/e/ads/AbstractAD;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->b:Ljava/util/List;

    const-string v0, "\u6b64\u6784\u9020\u65b9\u6cd5\u5373\u5c06\u5e9f\u5f03\uff0c\u8bf7\u5728 Application \u4e2d\u521d\u59cb\u5316 SDK \u540e\uff0c\u4f7f\u7528\u4e0d\u5e26 appId \u7684\u6784\u9020\u65b9\u6cd5\uff0c\u8be6\u7ec6\u8bf7\u53c2\u8003Demo"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    return-void
.end method

.method private a(IZ)V
    .registers 4

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->c()Z

    move-result v0

    if-nez v0, :cond_c

    const-string p1, "Parameters or context error, details in init NativeUnifiedAD log"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->b()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object p2

    check-cast p2, Lcom/qq/e/comm/pi/NUADI;

    if-eqz p2, :cond_1d

    invoke-interface {p2, p1}, Lcom/qq/e/comm/pi/NUADI;->loadData(I)V

    :cond_1d
    return-void

    :cond_1e
    if-eqz p2, :cond_29

    iget-object p2, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V
    .registers 7

    if-eqz p1, :cond_1c

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1c

    :cond_f
    new-instance v0, Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;

    invoke-direct {v0, p4}, Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;-><init>(Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    iput-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a:Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;

    iput-object p3, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/AbstractAD$BasicADListener;)V

    return-void

    :cond_1c
    :goto_1c
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "NativeUnifiedAD constructor parameters error, appId=%s, posId=%s, context=%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 p1, 0x7d1

    invoke-virtual {p0, p4, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a(Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/nativ/NativeUnifiedAD;Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/qq/e/ads/AbstractAD;->a(Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;Lcom/qq/e/comm/pi/POFactory;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/ADI;
    .registers 6

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a:Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;

    invoke-interface {p2, p1, p3, p4, v0}, Lcom/qq/e/comm/pi/POFactory;->getNativeAdManagerDelegate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/NUADI;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/qq/e/ads/nativ/NativeUnifiedAD$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/qq/e/ads/nativ/NativeUnifiedAD$1;-><init>(Lcom/qq/e/ads/nativ/NativeUnifiedAD;Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final synthetic a(Lcom/qq/e/comm/pi/ADI;)V
    .registers 4

    check-cast p1, Lcom/qq/e/comm/pi/NUADI;

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->e:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NUADI;->setMinVideoDuration(I)V

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->f:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NUADI;->setMaxVideoDuration(I)V

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NUADI;->setVastClassName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->c:Ljava/util/List;

    if-eqz p1, :cond_18

    invoke-virtual {p0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setCategories(Ljava/util/List;)V

    :cond_18
    iget-object p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a(IZ)V

    goto :goto_1e

    :cond_33
    return-void
.end method

.method public getAdNetWorkName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NUADI;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NUADI;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const-string v0, "The ad does not support \"getAdNetWorkName\" or you should call this method after \"onADLoaded\""

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public loadData(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a(IZ)V

    return-void
.end method

.method public loadData(ILcom/qq/e/comm/constants/LoadAdParams;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->loadData(I)V

    return-void
.end method

.method public setCategories(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->c:Ljava/util/List;

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NUADI;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NUADI;->setCategories(Ljava/util/List;)V

    :cond_f
    return-void
.end method

.method public setMaxVideoDuration(I)V
    .registers 3

    iput p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->f:I

    iget p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->f:I

    if-lez p1, :cond_11

    iget p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->e:I

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->f:I

    if-le p1, v0, :cond_11

    const-string p1, "maxVideoDuration \u8bbe\u7f6e\u503c\u975e\u6cd5\uff0c\u4e0d\u5f97\u5c0f\u4e8eminVideoDuration"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object p1

    check-cast p1, Lcom/qq/e/comm/pi/NUADI;

    if-eqz p1, :cond_1e

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->f:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NUADI;->setMaxVideoDuration(I)V

    :cond_1e
    return-void
.end method

.method public setMinVideoDuration(I)V
    .registers 3

    iput p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->e:I

    iget p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->f:I

    if-lez p1, :cond_11

    iget p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->e:I

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->f:I

    if-le p1, v0, :cond_11

    const-string p1, "minVideoDuration \u8bbe\u7f6e\u503c\u975e\u6cd5\uff0c\u4e0d\u5f97\u5927\u4e8emaxVideoDuration"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object p1

    check-cast p1, Lcom/qq/e/comm/pi/NUADI;

    if-eqz p1, :cond_1e

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->e:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NUADI;->setMinVideoDuration(I)V

    :cond_1e
    return-void
.end method

.method public setTag(Ljava/util/Map;)V
    .registers 5

    if-eqz p1, :cond_26

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_26

    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qq/e/comm/managers/GDTADManager;->getSM()Lcom/qq/e/comm/managers/setting/SM;

    move-result-object p1

    const-string v1, "ad_tags"

    iget-object v2, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->d:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Lcom/qq/e/comm/managers/setting/SM;->setDEVCodeSetting(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p1

    const-string v0, "NativeUnifiedAD#setTag Exception"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26
    return-void
.end method

.method public setVastClassName(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Vast class name can\'t be null"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NUADI;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NUADI;->setVastClassName(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public setVideoADContainerRender(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setVideoPlayPolicy(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
