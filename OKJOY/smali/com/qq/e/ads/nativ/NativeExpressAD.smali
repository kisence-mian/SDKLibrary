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
        "Lcom/qq/e/ads/AbstractAD",
        "<",
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

.field private volatile c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/qq/e/ads/cfg/VideoOption;

.field private f:Lcom/qq/e/ads/nativ/ADSize;

.field private g:Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;

.field private h:Ljava/lang/String;

.field private i:Lcom/qq/e/comm/constants/LoadAdParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adSize"    # Lcom/qq/e/ads/nativ/ADSize;
    .param p3, "appID"    # Ljava/lang/String;
    .param p4, "posID"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;

    .prologue
    invoke-direct {p0}, Lcom/qq/e/ads/AbstractAD;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->d:Ljava/util/List;

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {p4}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    if-eqz p2, :cond_1e

    if-nez p1, :cond_3c

    :cond_1e
    const-string v0, "NativeExpressAD Constructor params error, adSize=%s, appid=%s, posId=%s, context=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 v0, 0x7d1

    invoke-virtual {p0, p5, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->a(Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V

    :goto_3b
    return-void

    :cond_3c
    iput-object p2, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->f:Lcom/qq/e/ads/nativ/ADSize;

    iput-object p5, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->g:Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;

    iput-object p4, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->h:Ljava/lang/String;

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/qq/e/ads/nativ/NativeExpressAD;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/AbstractAD$BasicADListener;)V

    goto :goto_3b
.end method

.method static synthetic a(Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_a

    const-string v0, "No DevADListener Bound"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_26c

    goto :goto_9

    :pswitch_12
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_37

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/qq/e/comm/a;->a(I)Lcom/qq/e/comm/util/AdError;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    goto :goto_9

    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdEvent.Params error for NativeExpressAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_50
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_6d

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_6d

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Ljava/util/List;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onADLoaded(Ljava/util/List;)V

    goto :goto_9

    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Params error for NativeExpressAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_86
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_a4

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_a4

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onRenderFail(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    goto/16 :goto_9

    :cond_a4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Params error for NativeExpressAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_be
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_dc

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_dc

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onRenderSuccess(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    goto/16 :goto_9

    :cond_dc
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Params error for NativeExpressAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_f6
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_114

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_114

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onADExposure(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    goto/16 :goto_9

    :cond_114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Params error for NativeExpressAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_12e
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_166

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_166

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onADClicked(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v3

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;->ext:Ljava/util/Map;

    const-string v2, "clickUrl"

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Params error for NativeExpressAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_180
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_1a9

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_1a9

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onADClosed(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-virtual {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView;->negativeFeedback()V

    goto/16 :goto_9

    :cond_1a9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Params error for NativeExpressAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_1c3
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_1e1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_1e1

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onADLeftApplication(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    goto/16 :goto_9

    :cond_1e1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Params error for NativeExpressAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_1fb
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_219

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_219

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onADOpenOverlay(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    goto/16 :goto_9

    :cond_219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Params error for NativeExpressAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_233
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_251

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_251

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;->onADCloseOverlay(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    goto/16 :goto_9

    :cond_251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Params error for NativeExpressAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_9

    nop

    :pswitch_data_26c
    .packed-switch 0x1
        :pswitch_12
        :pswitch_50
        :pswitch_86
        :pswitch_be
        :pswitch_f6
        :pswitch_12e
        :pswitch_180
        :pswitch_1c3
        :pswitch_1fb
        :pswitch_233
    .end packed-switch
.end method

.method static synthetic a(Lcom/qq/e/ads/nativ/NativeExpressMediaListener;Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_b

    const-string v0, "No media listener"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_24a

    :pswitch_12
    goto :goto_a

    :pswitch_13
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v2, :cond_30

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoInit(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    goto :goto_a

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Params error for NativeExpressAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_a

    :pswitch_49
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v2, :cond_66

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_66

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoLoading(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    goto :goto_a

    :cond_66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Params error for NativeExpressAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_a

    :pswitch_7f
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v2, :cond_9d

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_9d

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoCached(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    goto/16 :goto_a

    :cond_9d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Params error for NativeExpressAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_b7
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_ec

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_ec

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_ec

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p0, v0, v2, v3}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoReady(Lcom/qq/e/ads/nativ/NativeExpressADView;J)V

    goto/16 :goto_a

    :cond_ec
    const-string v0, "NativeMedia ADEvent Paras error!"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_f3
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v2, :cond_111

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_111

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoStart(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    goto/16 :goto_a

    :cond_111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Params error for NativeExpressAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_12b
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v2, :cond_149

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_149

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoPause(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    goto/16 :goto_a

    :cond_149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Params error for NativeExpressAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_163
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v2, :cond_181

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_181

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoComplete(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    goto/16 :goto_a

    :cond_181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Params error for NativeExpressAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_19b
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_1d3

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_1d3

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1d3

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/qq/e/comm/a;->a(I)Lcom/qq/e/comm/util/AdError;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoError(Lcom/qq/e/ads/nativ/NativeExpressADView;Lcom/qq/e/comm/util/AdError;)V

    goto/16 :goto_a

    :cond_1d3
    const-string v0, "Native express media event paras error!"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_1da
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v2, :cond_1f8

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_1f8

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoPageOpen(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    goto/16 :goto_a

    :cond_1f8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Params error for NativeExpressAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_212
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v2, :cond_230

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    if-eqz v0, :cond_230

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    invoke-interface {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressMediaListener;->onVideoPageClose(Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    goto/16 :goto_a

    :cond_230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADEvent.Params error for NativeExpressAD("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_data_24a
    .packed-switch 0xb
        :pswitch_13
        :pswitch_49
        :pswitch_b7
        :pswitch_f3
        :pswitch_12b
        :pswitch_163
        :pswitch_19b
        :pswitch_1da
        :pswitch_212
        :pswitch_12
        :pswitch_7f
    .end packed-switch
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;Lcom/qq/e/comm/pi/POFactory;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/ADI;
    .registers 11

    iget-object v2, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->f:Lcom/qq/e/ads/nativ/ADSize;

    new-instance v5, Lcom/qq/e/ads/nativ/NativeExpressAD$ADListenerAdapter;

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->g:Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;

    invoke-direct {v5, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;)V

    move-object v0, p2

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/qq/e/comm/pi/POFactory;->getNativeExpressADDelegate(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/NEADI;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Lcom/qq/e/comm/pi/ADI;)V
    .registers 5

    check-cast p1, Lcom/qq/e/comm/pi/NEADI;

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->a:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NEADI;->setMinVideoDuration(I)V

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->b:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NEADI;->setMaxVideoDuration(I)V

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->c:I

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/NEADI;->setVideoPlayPolicy(I)V

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->e:Lcom/qq/e/ads/cfg/VideoOption;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->e:Lcom/qq/e/ads/cfg/VideoOption;

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    :cond_1a
    iget-object v1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_1d
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->loadAD(I)V

    goto :goto_23

    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_37

    throw v0

    :cond_3a
    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_37

    return-void
.end method

.method public loadAD(I)V
    .registers 3
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->loadAD(ILcom/qq/e/comm/constants/LoadAdParams;)V

    return-void
.end method

.method public loadAD(ILcom/qq/e/comm/constants/LoadAdParams;)V
    .registers 5
    .param p1, "count"    # I
    .param p2, "params"    # Lcom/qq/e/comm/constants/LoadAdParams;

    .prologue
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->c()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "AD init Paras OR Context error,details in logs produced while init NativeAD"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    if-eqz p2, :cond_11

    invoke-virtual {p0, p2}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V

    :cond_11
    iget v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->c:I

    if-nez v0, :cond_1a

    const-string v0, "\u8bf7\u8c03\u7528setVideoPlayPolicy()\u63a5\u53e3\uff0c\u8bbe\u7f6e\u201c\u7528\u6237\u611f\u77e5\u7684\u89c6\u9891\u5e7f\u544a\u64ad\u653e\u7b56\u7565\u201d\uff0c\u6709\u52a9\u4e8e\u63d0\u9ad8\u89c6\u9891\u5e7f\u544a\u7684eCPM\u503c\uff1b\u5982\u679c\u5e7f\u544a\u4f4d\u4e0d\u652f\u6301\u89c6\u9891\u5e7f\u544a\uff0c\u8bf7\u5ffd\u7565\u672c\u63d0\u793a\u3002"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->b()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_2a
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NEADI;

    if-eqz v0, :cond_40

    iget-object v1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->i:Lcom/qq/e/comm/constants/LoadAdParams;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->i:Lcom/qq/e/comm/constants/LoadAdParams;

    invoke-interface {v0, p1, v1}, Lcom/qq/e/comm/pi/NEADI;->loadAd(ILcom/qq/e/comm/constants/LoadAdParams;)V

    goto :goto_b

    :cond_3c
    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NEADI;->loadAd(I)V

    goto :goto_b

    :cond_40
    const-string v0, "Native Express AD Init error, see more logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public setAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V
    .registers 4
    .param p1, "adParams"    # Lcom/qq/e/comm/constants/LoadAdParams;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->i:Lcom/qq/e/comm/constants/LoadAdParams;

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Lcom/qq/e/comm/constants/LoadAdParams;->getPassThroughInfoJsonString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Lcom/qq/e/comm/constants/LoadAdParams;->getPassThroughInfoJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x200

    if-lt v0, v1, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeExpressAD setAdParams too large ,current size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qq/e/comm/constants/LoadAdParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method public setMaxVideoDuration(I)V
    .registers 4
    .param p1, "maxVideoDuration"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->b:I

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->b:I

    if-lez v0, :cond_11

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->a:I

    iget v1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->b:I

    if-le v0, v1, :cond_11

    const-string v0, "maxVideoDuration \u8bbe\u7f6e\u503c\u975e\u6cd5\uff0c\u4e0d\u5f97\u5c0f\u4e8eminVideoDuration"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NEADI;

    if-eqz v0, :cond_1e

    iget v1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->b:I

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/NEADI;->setMaxVideoDuration(I)V

    :cond_1e
    return-void
.end method

.method public setMinVideoDuration(I)V
    .registers 4
    .param p1, "minVideoDuration"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->a:I

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->b:I

    if-lez v0, :cond_11

    iget v0, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->a:I

    iget v1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->b:I

    if-le v0, v1, :cond_11

    const-string v0, "minVideoDuration \u8bbe\u7f6e\u503c\u975e\u6cd5\uff0c\u4e0d\u5f97\u5927\u4e8emaxVideoDuration"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NEADI;

    if-eqz v0, :cond_1e

    iget v1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->a:I

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/NEADI;->setMinVideoDuration(I)V

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

    iget-object v3, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->h:Ljava/lang/String;

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

.method public setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V
    .registers 3
    .param p1, "videoOption"    # Lcom/qq/e/ads/cfg/VideoOption;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->e:Lcom/qq/e/ads/cfg/VideoOption;

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
    .registers 4
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
    iput p1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->c:I

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->a()Lcom/qq/e/comm/pi/ADI;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/pi/NEADI;

    if-eqz v0, :cond_b

    iget v1, p0, Lcom/qq/e/ads/nativ/NativeExpressAD;->c:I

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/NEADI;->setVideoPlayPolicy(I)V

    goto :goto_b
.end method
