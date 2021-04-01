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
        "Lcom/qq/e/ads/AbstractAD",
        "<",
        "Lcom/qq/e/comm/pi/NUADI;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private volatile e:I

.field private volatile f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Lcom/qq/e/comm/constants/LoadAdParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "posId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/qq/e/ads/nativ/NativeADUnifiedListener;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/qq/e/ads/AbstractAD;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->b:Ljava/util/List;

    iput v2, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->g:I

    iput v2, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->h:I

    if-eqz p1, :cond_1d

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_1d
    const-string v0, "NativeUnifiedAD constructor parameters error, appId=%s, posId=%s, context=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 v0, 0xfa2

    invoke-virtual {p0, p4, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a(Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V

    :goto_36
    return-void

    :cond_37
    new-instance v0, Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;

    invoke-direct {v0, p4}, Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;-><init>(Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    iput-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a:Lcom/qq/e/ads/nativ/NativeUnifiedAD$AdListenerAdapter;

    iput-object p3, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/AbstractAD$BasicADListener;)V

    goto :goto_36
.end method

.method private a(IZ)V
    .registers 5

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->c()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "Parameters or context error, details in init NativeUnifiedAD log"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->b()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NUADI;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->j:Lcom/qq/e/comm/constants/LoadAdParams;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->j:Lcom/qq/e/comm/constants/LoadAdParams;

    invoke-interface {v0, p1, v1}, Lcom/qq/e/comm/pi/NUADI;->loadData(ILcom/qq/e/comm/constants/LoadAdParams;)V

    goto :goto_b

    :cond_24
    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NUADI;->loadData(I)V

    goto :goto_b

    :cond_28
    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b
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

    move-result-object v0

    return-object v0
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
    .registers 5

    check-cast p1, Lcom/qq/e/comm/pi/NUADI;

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->e:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NUADI;->setMinVideoDuration(I)V

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->f:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NUADI;->setMaxVideoDuration(I)V

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->g:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NUADI;->setVideoPlayPolicy(I)V

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->h:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NUADI;->setVideoADContainerRender(I)V

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->i:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NUADI;->setVastClassName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->c:Ljava/util/List;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setCategories(Ljava/util/List;)V

    :cond_24
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a(IZ)V

    goto :goto_2a

    :cond_3f
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

    :goto_c
    return-object v0

    :cond_d
    const-string v0, "The ad does not support \"getAdNetWorkName\" or you should call this method after \"onADLoaded\""

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_c
.end method

.method public loadData(I)V
    .registers 3
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->loadData(ILcom/qq/e/comm/constants/LoadAdParams;)V

    return-void
.end method

.method public loadData(ILcom/qq/e/comm/constants/LoadAdParams;)V
    .registers 5
    .param p1, "count"    # I
    .param p2, "params"    # Lcom/qq/e/comm/constants/LoadAdParams;

    .prologue
    if-eqz p2, :cond_30

    iput-object p2, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->j:Lcom/qq/e/comm/constants/LoadAdParams;

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->j:Lcom/qq/e/comm/constants/LoadAdParams;

    invoke-virtual {v0}, Lcom/qq/e/comm/constants/LoadAdParams;->getPassThroughInfoJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x200

    if-lt v0, v1, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeUnifiedAD setAdParams too large ,current size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->j:Lcom/qq/e/comm/constants/LoadAdParams;

    invoke-virtual {v1}, Lcom/qq/e/comm/constants/LoadAdParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_30
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a(IZ)V

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->g:I

    if-nez v0, :cond_3d

    const-string v0, "\u8bf7\u8c03\u7528setVideoPlayPolicy()\u63a5\u53e3\uff0c\u8bbe\u7f6e\u201c\u7528\u6237\u611f\u77e5\u7684\u89c6\u9891\u5e7f\u544a\u64ad\u653e\u7b56\u7565\u201d\uff0c\u6709\u52a9\u4e8e\u63d0\u9ad8\u89c6\u9891\u5e7f\u544a\u7684eCPM\u503c\uff1b\u5982\u679c\u5e7f\u544a\u4f4d\u4e0d\u652f\u6301\u89c6\u9891\u5e7f\u544a\uff0c\u8bf7\u5ffd\u7565\u672c\u63d0\u793a\u3002"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    :cond_3d
    iget v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->h:I

    if-nez v0, :cond_46

    const-string v0, "\u8bf7\u8c03\u7528setVideoADContainerRender()\u63a5\u53e3\uff0c\u8bbe\u7f6e\u201c\u7528\u6237\u9996\u6b21\u770b\u5230\u7684\u89c6\u9891\u5e7f\u544a\u5bb9\u5668\u201d\u6e32\u67d3\u7b56\u7565\uff0c\u6709\u52a9\u4e8e\u63d0\u9ad8\u89c6\u9891\u5e7f\u544a\u7684eCPM\u503c\uff1b\u5982\u679c\u5e7f\u544a\u4f4d\u4e0d\u652f\u6301\u89c6\u9891\u5e7f\u544a\uff0c\u8bf7\u5ffd\u7565\u672c\u63d0\u793a\u3002"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    :cond_46
    return-void
.end method

.method public setCategories(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
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
    .registers 4
    .param p1, "maxVideoDuration"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->f:I

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->f:I

    if-lez v0, :cond_11

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->e:I

    iget v1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->f:I

    if-le v0, v1, :cond_11

    const-string v0, "maxVideoDuration \u8bbe\u7f6e\u503c\u975e\u6cd5\uff0c\u4e0d\u5f97\u5c0f\u4e8eminVideoDuration"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NUADI;

    if-eqz v0, :cond_1e

    iget v1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->f:I

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/NUADI;->setMaxVideoDuration(I)V

    :cond_1e
    return-void
.end method

.method public setMinVideoDuration(I)V
    .registers 4
    .param p1, "minVideoDuration"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->e:I

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->f:I

    if-lez v0, :cond_11

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->e:I

    iget v1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->f:I

    if-le v0, v1, :cond_11

    const-string v0, "minVideoDuration \u8bbe\u7f6e\u503c\u975e\u6cd5\uff0c\u4e0d\u5f97\u5927\u4e8emaxVideoDuration"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NUADI;

    if-eqz v0, :cond_1e

    iget v1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->e:I

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/NUADI;->setMinVideoDuration(I)V

    :cond_1e
    return-void
.end method

.method public setTag(Ljava/util/Map;)V
    .registers 6
    .param p1, "tags"    # Ljava/util/Map;

    .prologue
    if-eqz p1, :cond_1c

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1c

    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/GDTADManager;->getSM()Lcom/qq/e/comm/managers/setting/SM;

    move-result-object v1

    const-string v2, "ad_tags"

    iget-object v3, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/qq/e/comm/managers/setting/SM;->setDEVCodeSetting(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    const-string v1, "NativeUnifiedAD#setTag Exception"

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method

.method public setVastClassName(Ljava/lang/String;)V
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Vast class name can\'t be null"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NUADI;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NUADI;->setVastClassName(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public setVideoADContainerRender(I)V
    .registers 3
    .param p1, "videoADContainerRender"    # I

    .prologue
    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const-string v0, "videoADContainerRender\u53c2\u6570\u6709\u8bef\uff0c\u53ea\u80fd\u662fVideoADContainerRender.SDK \u6216 VideoADContainerRender.DEV"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    iput p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->h:I

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NUADI;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NUADI;->setVideoADContainerRender(I)V

    goto :goto_b
.end method

.method public setVideoPlayPolicy(I)V
    .registers 3
    .param p1, "videoPlayPolicy"    # I

    .prologue
    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const-string v0, "videoPlayPolicy\u53c2\u6570\u6709\u8bef\uff0c\u53ea\u80fd\u662fVideoPlayPolicy.AUTO \u6216 VideoPlayPolicy.MANUAL"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    iput p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->g:I

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NUADI;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NUADI;->setVideoPlayPolicy(I)V

    goto :goto_b
.end method
