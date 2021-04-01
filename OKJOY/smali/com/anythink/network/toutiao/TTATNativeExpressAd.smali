.class public Lcom/anythink/network/toutiao/TTATNativeExpressAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field b:Landroid/content/Context;

.field c:Ljava/lang/String;

.field d:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;ZZ)V
    .registers 7

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->b:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->c:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 27
    invoke-virtual {p0, p4, p5}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->setAdData(ZZ)V

    .line 28
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-nez v0, :cond_5

    .line 123
    :goto_4
    return-void

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    new-instance v1, Lcom/anythink/network/toutiao/TTATNativeExpressAd$2;

    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd$2;-><init>(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)V

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    goto :goto_4
.end method

.method private b()V
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-nez v0, :cond_5

    .line 154
    :goto_4
    return-void

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    new-instance v1, Lcom/anythink/network/toutiao/TTATNativeExpressAd$3;

    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd$3;-><init>(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    goto :goto_4
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 167
    return-void
.end method

.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 189
    sget-object v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->e:Ljava/lang/String;

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-object v2, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->d:Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_15

    .line 192
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 193
    iput-object v2, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 195
    :cond_15
    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 3

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->d:Landroid/view/View;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_10

    .line 173
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->d:Landroid/view/View;

    .line 175
    :cond_10
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->d:Landroid/view/View;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 179
    :goto_12
    return-object v0

    :catch_13
    move-exception v0

    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isNativeExpress()Z
    .registers 2

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->b()V

    .line 85
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_16

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a(Landroid/app/Activity;)V

    .line 88
    :cond_16
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_1f

    .line 89
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 91
    :cond_1f
    return-void
.end method

.method public prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->b()V

    .line 96
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_16

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a(Landroid/app/Activity;)V

    .line 99
    :cond_16
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_1f

    .line 100
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 102
    :cond_1f
    return-void
.end method

.method public setAdData(ZZ)V
    .registers 5

    .prologue
    .line 33
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setCanInterruptVideoPlay(Z)V

    .line 35
    if-eqz p2, :cond_11

    .line 37
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    new-instance v1, Lcom/anythink/network/toutiao/TTATNativeExpressAd$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd$1;-><init>(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;)V

    .line 80
    :cond_11
    return-void
.end method
