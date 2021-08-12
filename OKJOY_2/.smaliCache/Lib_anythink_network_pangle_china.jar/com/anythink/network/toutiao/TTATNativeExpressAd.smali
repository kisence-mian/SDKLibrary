.class public Lcom/anythink/network/toutiao/TTATNativeExpressAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field b:Landroid/content/Context;

.field c:Ljava/lang/String;

.field d:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

.field e:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;ZZ)V
    .registers 6

    .line 31
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->b:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->c:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 36
    invoke-virtual {p0, p4, p5}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->setAdData(ZZ)V

    .line 37
    nop

    .line 1147
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz p1, :cond_1d

    .line 1151
    new-instance p2, Lcom/anythink/network/toutiao/TTATNativeExpressAd$3;

    invoke-direct {p2, p0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd$3;-><init>(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)V

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 38
    :cond_1d
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 23
    sget-object v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/app/Activity;)V
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-nez v0, :cond_5

    .line 125
    return-void

    .line 128
    :cond_5
    new-instance v1, Lcom/anythink/network/toutiao/TTATNativeExpressAd$2;

    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd$2;-><init>(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)V

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 144
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->d:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 42
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz p1, :cond_9

    .line 43
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 45
    :cond_9
    return-void
.end method

.method private b()V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-nez v0, :cond_5

    .line 148
    return-void

    .line 151
    :cond_5
    new-instance v1, Lcom/anythink/network/toutiao/TTATNativeExpressAd$3;

    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd$3;-><init>(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 183
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .registers 2

    .line 196
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 218
    sget-object v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->f:Ljava/lang/String;

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->e:Landroid/view/View;

    .line 220
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v1, :cond_18

    .line 221
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V

    .line 222
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 223
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 225
    :cond_18
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->b:Landroid/content/Context;

    .line 226
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->d:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    .line 228
    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .registers 2

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 2

    .line 201
    :try_start_0
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->e:Landroid/view/View;

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz p1, :cond_e

    .line 202
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->e:Landroid/view/View;

    .line 204
    :cond_e
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->e:Landroid/view/View;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p1

    .line 205
    :catch_11
    move-exception p1

    .line 208
    const/4 p1, 0x0

    return-object p1
.end method

.method public isNativeExpress()Z
    .registers 2

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3

    .line 101
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_13

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a(Landroid/app/Activity;)V

    .line 107
    :cond_13
    return-void
.end method

.method public prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    .line 112
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_13

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a(Landroid/app/Activity;)V

    .line 118
    :cond_13
    return-void
.end method

.method public setAdData(ZZ)V
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setCanInterruptVideoPlay(Z)V

    .line 51
    if-eqz p2, :cond_11

    .line 53
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    new-instance p2, Lcom/anythink/network/toutiao/TTATNativeExpressAd$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd$1;-><init>(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)V

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;)V

    .line 96
    :cond_11
    return-void
.end method
