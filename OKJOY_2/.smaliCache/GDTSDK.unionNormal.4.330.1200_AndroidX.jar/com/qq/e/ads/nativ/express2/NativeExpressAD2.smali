.class public Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;
.super Lcom/qq/e/ads/AbstractAD;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListenerAdapter;,
        Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qq/e/ads/AbstractAD<",
        "Lcom/qq/e/comm/pi/NEIADI;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/qq/e/ads/nativ/express2/VideoOption2;

.field private d:Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;)V
    .registers 7

    invoke-direct {p0}, Lcom/qq/e/ads/AbstractAD;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->e:Ljava/util/List;

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getAppStatus()Lcom/qq/e/comm/managers/status/APPStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/status/APPStatus;->getAPPID()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    if-nez p3, :cond_35

    goto :goto_3b

    :cond_35
    iput-object p3, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->d:Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/AbstractAD$BasicADListener;)V

    return-void

    :cond_3b
    :goto_3b
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    aput-object p3, v1, p1

    const-string p1, "NativeExpressSecondAD Constructor params error, context=%s, appId=%s, posId=%s, listener=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 p1, 0x7d1

    invoke-virtual {p0, p3, p1}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->a(Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V

    goto :goto_69

    :cond_59
    const-string p1, "SDK \u5c1a\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u5728 Application \u4e2d\u8c03\u7528 GDTADManager.getInstance().initWith() \u521d\u59cb\u5316"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_69

    const/16 p1, 0x7d3

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    :cond_69
    :goto_69
    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;Lcom/qq/e/comm/pi/POFactory;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/ADI;
    .registers 7

    new-instance v0, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListenerAdapter;

    iget-object v1, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->d:Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;

    invoke-direct {v0, v1}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListenerAdapter;-><init>(Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;)V

    invoke-interface {p2, p1, p3, p4, v0}, Lcom/qq/e/comm/pi/POFactory;->getNativeExpressADDelegate2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/NEIADI;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Lcom/qq/e/comm/pi/ADI;)V
    .registers 4

    check-cast p1, Lcom/qq/e/comm/pi/NEIADI;

    iget v0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->a:I

    iget v1, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->b:I

    invoke-interface {p1, v0, v1}, Lcom/qq/e/comm/pi/NEIADI;->setAdSize(II)V

    iget-object v0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->c:Lcom/qq/e/ads/nativ/express2/VideoOption2;

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NEIADI;->setVideoOption(Lcom/qq/e/ads/nativ/express2/VideoOption2;)V

    iget-object p1, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->e:Ljava/util/List;

    monitor-enter p1

    :try_start_11
    iget-object v0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->loadAd(I)V

    goto :goto_17

    :cond_2b
    monitor-exit p1

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public loadAd(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->c()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "AD init Paras OR Context error,details in logs produced while init NativeAD"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->b()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1c
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NEIADI;

    if-eqz v0, :cond_28

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NEIADI;->loadAd(I)V

    return-void

    :cond_28
    const-string p1, "Native Express AD Init error, see more logs"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setAdSize(II)V
    .registers 4

    iput p1, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->a:I

    iput p2, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->b:I

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NEIADI;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1, p2}, Lcom/qq/e/comm/pi/NEIADI;->setAdSize(II)V

    :cond_f
    return-void
.end method

.method public setVideoOption2(Lcom/qq/e/ads/nativ/express2/VideoOption2;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->c:Lcom/qq/e/ads/nativ/express2/VideoOption2;

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/express2/NativeExpressAD2;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NEIADI;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NEIADI;->setVideoOption(Lcom/qq/e/ads/nativ/express2/VideoOption2;)V

    :cond_d
    return-void
.end method
