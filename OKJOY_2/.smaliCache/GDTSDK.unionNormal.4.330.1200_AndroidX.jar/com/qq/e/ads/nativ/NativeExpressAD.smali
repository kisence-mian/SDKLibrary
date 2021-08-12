.class public Lcom/qq/e/ads/nativ/NativeExpressAD;
.super Lcom/qq/e/ads/AbstractAD;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/nativ/NativeExpressAD$ADListenerAdapter;,
        Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qq/e/ads/AbstractAD<",
        "Lcom/qq/e/comm/pi/NEADI;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_TYPE_AD_WILL_OPEN_OVERLAY:I = 0x14

.field public static final EVENT_TYPE_ON_AD_CLICKED:I = 0x6

.field public static final EVENT_TYPE_ON_AD_CLOSED:I = 0x7

.field public static final EVENT_TYPE_ON_AD_CLOSE_OVERLAY:I = 0xa

.field public static final EVENT_TYPE_ON_AD_EXPOSURE:I = 0x5

.field public static final EVENT_TYPE_ON_AD_LEFT_APPLICATION:I = 0x8

.field public static final EVENT_TYPE_ON_AD_LOADED:I = 0x2

.field public static final EVENT_TYPE_ON_AD_OPEN_OVERLAY:I = 0x9

.field public static final EVENT_TYPE_ON_NO_AD:I = 0x1

.field public static final EVENT_TYPE_ON_RENDER_FAILED:I = 0x3

.field public static final EVENT_TYPE_ON_RENDER_SUCCESS:I = 0x4

.field public static final EVENT_TYPE_ON_VIDEO_CACHED:I = 0x15

.field public static final EVENT_TYPE_ON_VIDEO_COMPLETE:I = 0x10

.field public static final EVENT_TYPE_ON_VIDEO_ERROR:I = 0x11

.field public static final EVENT_TYPE_ON_VIDEO_INIT:I = 0xb

.field public static final EVENT_TYPE_ON_VIDEO_LOADING:I = 0xc

.field public static final EVENT_TYPE_ON_VIDEO_PAGE_CLOSE:I = 0x13

.field public static final EVENT_TYPE_ON_VIDEO_PAGE_OPEN:I = 0x12

.field public static final EVENT_TYPE_ON_VIDEO_PAUSE:I = 0xf

.field public static final EVENT_TYPE_ON_VIDEO_READY:I = 0xd

.field public static final EVENT_TYPE_ON_VIDEO_START:I = 0xe


# instance fields
.field private volatile a:I

.field private volatile b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/qq/e/ads/cfg/VideoOption;

.field private e:Lcom/qq/e/ads/nativ/ADSize;

.field private f:Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;

.field private g:Ljava/lang/String;

.field private h:Lcom/qq/e/comm/constants/LoadAdParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;)V
    .registers 12

    invoke-direct {p0}, Lcom/qq/e/ads/AbstractAD;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->c:Ljava/util/List;

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getAppStatus()Lcom/qq/e/comm/managers/status/APPStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/status/APPStatus;->getAPPID()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/qq/e/ads/nativ/NativeExpressAD;->a(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;)V

    return-void

    :cond_2d
    const-string p1, "SDK \u5c1a\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u5728 Application \u4e2d\u8c03\u7528 GDTADManager.getInstance().initWith() \u521d\u59cb\u5316"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 p1, 0x7d3

    invoke-virtual {p0, p4, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD;->a(Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/qq/e/ads/AbstractAD;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->c:Ljava/util/List;

    const-string v0, "\u6b64\u6784\u9020\u65b9\u6cd5\u5373\u5c06\u5e9f\u5f03\uff0c\u8bf7\u5728 Application \u4e2d\u521d\u59cb\u5316 SDK \u540e\uff0c\u4f7f\u7528\u4e0d\u5e26 appId \u7684\u6784\u9020\u65b9\u6cd5\uff0c\u8be6\u7ec6\u8bf7\u53c2\u8003Demo"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/qq/e/ads/nativ/NativeExpressAD;->a(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;)V
    .registers 8

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p4}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-eqz p2, :cond_1b

    if-nez p1, :cond_11

    goto :goto_1b

    :cond_11
    iput-object p2, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->e:Lcom/qq/e/ads/nativ/ADSize;

    iput-object p5, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->f:Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;

    iput-object p4, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/qq/e/ads/nativ/NativeExpressAD;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/AbstractAD$BasicADListener;)V

    return-void

    :cond_1b
    :goto_1b
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "NativeExpressAD Constructor params error, adSize=%s, appid=%s, posId=%s, context=%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 p1, 0x7d1

    invoke-virtual {p0, p5, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD;->a(Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 8

    if-nez p0, :cond_8

    const-string p0, "No DevADListener Bound"

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    const-string v1, "ADEvent.Params error for NativeExpressAD("

    const-string v2, ")"

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_23c

    goto/16 :goto_23a

    :pswitch_17
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_34

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v4

    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onADCloseOverlay(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    return-void

    :cond_34
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_23a

    :pswitch_4a
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_67

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_67

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v4

    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onADOpenOverlay(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    return-void

    :cond_67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :pswitch_7c
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_99

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_99

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v4

    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onADLeftApplication(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    return-void

    :cond_99
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :pswitch_ae
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_d6

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_d6

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onADClosed(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, v4

    check-cast p0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeExpressADView;->negativeFeedback()V

    return-void

    :cond_d6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :pswitch_eb
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_122

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_122

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onADClicked(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, v3

    instance-of p0, p0, Ljava/lang/String;

    if-eqz p0, :cond_121

    iget-object p0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;->ext:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/String;

    const-string v0, "clickUrl"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_121
    return-void

    :cond_122
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :pswitch_137
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_154

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_154

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v4

    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onADExposure(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    return-void

    :cond_154
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :pswitch_169
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_186

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_186

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v4

    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onRenderSuccess(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    return-void

    :cond_186
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :pswitch_19b
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_1b8

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_1b8

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v4

    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onRenderFail(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    return-void

    :cond_1b8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :pswitch_1cd
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_1ea

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_1ea

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v4

    check-cast p1, Ljava/util/List;

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onADLoaded(Ljava/util/List;)V

    return-void

    :cond_1ea
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :pswitch_1ff
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_224

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_224

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    return-void

    :cond_224
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "AdEvent.Params error for NativeExpressAD("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_23a
    return-void

    nop

    :pswitch_data_23c
    .packed-switch 0x1
        :pswitch_1ff
        :pswitch_1cd
        :pswitch_19b
        :pswitch_169
        :pswitch_137
        :pswitch_eb
        :pswitch_ae
        :pswitch_7c
        :pswitch_4a
        :pswitch_17
    .end packed-switch
.end method

.method static synthetic a(Lcom/qq/e/ads/nativ/NativeExpressMediaListener;Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 8

    if-nez p0, :cond_8

    const-string p0, "No media listener"

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, ")"

    const-string v3, "ADEvent.Params error for NativeExpressAD("

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_220

    :pswitch_16
    goto/16 :goto_21f

    :pswitch_18
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_35

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v5

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v5

    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoCached(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    return-void

    :cond_35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :pswitch_4a
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_67

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v5

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_67

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v5

    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoPageClose(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    return-void

    :cond_67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_21f

    :pswitch_7d
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_9a

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v5

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_9a

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v5

    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoPageOpen(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    return-void

    :cond_9a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :pswitch_af
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_e6

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v5

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_e6

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_e6

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v5

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoError(Lcom/qq/e/ads/nativ/NativeExpressADView;Lcom/qq/e/comm/util/AdError;)V

    return-void

    :cond_e6
    const-string p0, "Native express media event paras error!"

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :pswitch_ec
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_109

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v5

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_109

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v5

    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoComplete(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    return-void

    :cond_109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :pswitch_11e
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_13b

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v5

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_13b

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v5

    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoPause(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    return-void

    :cond_13b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :pswitch_150
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_16d

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v5

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_16d

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v5

    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoStart(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    return-void

    :cond_16d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :pswitch_182
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_1b6

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v5

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_1b6

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1b6

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v5

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-interface {p0, v0, v1, v2}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoReady(Lcom/qq/e/ads/nativ/NativeExpressADView;J)V

    return-void

    :cond_1b6
    const-string p0, "NativeMedia ADEvent Paras error!"

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :pswitch_1bc
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_1d9

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v5

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_1d9

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v5

    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoLoading(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    return-void

    :cond_1d9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :pswitch_1ee
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v4, :cond_20b

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v5

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_20b

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v5

    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoInit(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    return-void

    :cond_20b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_21f
    return-void

    :pswitch_data_220
    .packed-switch 0xb
        :pswitch_1ee
        :pswitch_1bc
        :pswitch_182
        :pswitch_150
        :pswitch_11e
        :pswitch_ec
        :pswitch_af
        :pswitch_7d
        :pswitch_4a
        :pswitch_16
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;Lcom/qq/e/comm/pi/POFactory;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/ADI;
    .registers 11

    iget-object v2, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->e:Lcom/qq/e/ads/nativ/ADSize;

    new-instance v5, Lcom/qq/e/ads/nativ/NativeExpressAD$ADListenerAdapter;

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->f:Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;

    invoke-direct {v5, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;)V

    move-object v0, p2

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/qq/e/comm/pi/POFactory;->getNativeExpressADDelegate(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/NEADI;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Lcom/qq/e/comm/pi/ADI;)V
    .registers 4

    check-cast p1, Lcom/qq/e/comm/pi/NEADI;

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->a:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NEADI;->setMinVideoDuration(I)V

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->b:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NEADI;->setMaxVideoDuration(I)V

    iget-object p1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->d:Lcom/qq/e/ads/cfg/VideoOption;

    if-eqz p1, :cond_13

    invoke-virtual {p0, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    :cond_13
    iget-object p1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->c:Ljava/util/List;

    monitor-enter p1

    :try_start_16
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qq/e/ads/nativ/NativeExpressAD;->loadAD(I)V

    goto :goto_1c

    :cond_30
    monitor-exit p1

    return-void

    :catchall_32
    move-exception v0

    monitor-exit p1
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public loadAD(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->loadAD(ILcom/qq/e/comm/constants/LoadAdParams;)V

    return-void
.end method

.method public loadAD(ILcom/qq/e/comm/constants/LoadAdParams;)V
    .registers 4

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->c()Z

    move-result v0

    if-nez v0, :cond_c

    const-string p1, "AD init Paras OR Context error,details in logs produced while init NativeAD"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    if-eqz p2, :cond_11

    invoke-virtual {p0, p2}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V

    :cond_11
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->b()Z

    move-result p2

    if-nez p2, :cond_28

    iget-object p2, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->c:Ljava/util/List;

    monitor-enter p2

    :try_start_1a
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    goto :goto_41

    :catchall_25
    move-exception p1

    monitor-exit p2
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_25

    throw p1

    :cond_28
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object p2

    check-cast p2, Lcom/qq/e/comm/pi/NEADI;

    if-eqz p2, :cond_3c

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->h:Lcom/qq/e/comm/constants/LoadAdParams;

    if-eqz v0, :cond_38

    invoke-interface {p2, p1, v0}, Lcom/qq/e/comm/pi/NEADI;->loadAd(ILcom/qq/e/comm/constants/LoadAdParams;)V

    return-void

    :cond_38
    invoke-interface {p2, p1}, Lcom/qq/e/comm/pi/NEADI;->loadAd(I)V

    return-void

    :cond_3c
    const-string p1, "Native Express AD Init error, see more logs"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_41
    return-void
.end method

.method public setAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V
    .registers 4

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->h:Lcom/qq/e/comm/constants/LoadAdParams;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/qq/e/comm/constants/LoadAdParams;->getPassThroughInfoJsonString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x200

    if-lt v0, v1, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeExpressAD setAdParams too large ,current size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qq/e/comm/constants/LoadAdParams;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public setMaxVideoDuration(I)V
    .registers 3

    iput p1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->b:I

    iget p1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->b:I

    if-lez p1, :cond_11

    iget p1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->a:I

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->b:I

    if-le p1, v0, :cond_11

    const-string p1, "maxVideoDuration \u8bbe\u7f6e\u503c\u975e\u6cd5\uff0c\u4e0d\u5f97\u5c0f\u4e8eminVideoDuration"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object p1

    check-cast p1, Lcom/qq/e/comm/pi/NEADI;

    if-eqz p1, :cond_1e

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->b:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NEADI;->setMaxVideoDuration(I)V

    :cond_1e
    return-void
.end method

.method public setMinVideoDuration(I)V
    .registers 3

    iput p1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->a:I

    iget p1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->b:I

    if-lez p1, :cond_11

    iget p1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->a:I

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->b:I

    if-le p1, v0, :cond_11

    const-string p1, "minVideoDuration \u8bbe\u7f6e\u503c\u975e\u6cd5\uff0c\u4e0d\u5f97\u5927\u4e8emaxVideoDuration"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object p1

    check-cast p1, Lcom/qq/e/comm/pi/NEADI;

    if-eqz p1, :cond_1e

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->a:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NEADI;->setMinVideoDuration(I)V

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

    iget-object v2, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->g:Ljava/lang/String;

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

.method public setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->d:Lcom/qq/e/ads/cfg/VideoOption;

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NEADI;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NEADI;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    :cond_f
    return-void
.end method

.method public setVideoPlayPolicy(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
