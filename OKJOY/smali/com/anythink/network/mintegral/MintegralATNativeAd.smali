.class public Lcom/anythink/network/mintegral/MintegralATNativeAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/mintegral/msdk/out/MtgNativeHandler;

.field c:Lcom/mintegral/msdk/out/MtgBidNativeHandler;

.field d:Lcom/mintegral/msdk/out/Campaign;

.field e:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

.field f:Z

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/Campaign;Z)V
    .registers 7

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 25
    const-class v0, Lcom/anythink/network/mintegral/MintegralATNativeAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->g:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->a:Landroid/content/Context;

    .line 37
    invoke-static {p2}, Lcom/mintegral/msdk/out/MtgNativeHandler;->getNativeProperties(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 39
    iput-object p3, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->d:Lcom/mintegral/msdk/out/Campaign;

    .line 41
    if-eqz p4, :cond_2e

    .line 42
    new-instance v1, Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    invoke-direct {v1, v0, p1}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->c:Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    .line 43
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->c:Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    new-instance v1, Lcom/anythink/network/mintegral/MintegralATNativeAd$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/mintegral/MintegralATNativeAd$1;-><init>(Lcom/anythink/network/mintegral/MintegralATNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->setAdListener(Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V

    .line 97
    :goto_2a
    invoke-virtual {p0}, Lcom/anythink/network/mintegral/MintegralATNativeAd;->setAdData()V

    .line 98
    return-void

    .line 69
    :cond_2e
    new-instance v1, Lcom/mintegral/msdk/out/MtgNativeHandler;

    invoke-direct {v1, v0, p1}, Lcom/mintegral/msdk/out/MtgNativeHandler;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->b:Lcom/mintegral/msdk/out/MtgNativeHandler;

    .line 70
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->b:Lcom/mintegral/msdk/out/MtgNativeHandler;

    new-instance v1, Lcom/anythink/network/mintegral/MintegralATNativeAd$2;

    invoke-direct {v1, p0}, Lcom/anythink/network/mintegral/MintegralATNativeAd$2;-><init>(Lcom/anythink/network/mintegral/MintegralATNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/MtgNativeHandler;->setAdListener(Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V

    goto :goto_2a
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->e:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    if-eqz v0, :cond_1e

    .line 143
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->b:Lcom/mintegral/msdk/out/MtgNativeHandler;

    if-eqz v0, :cond_d

    .line 144
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->b:Lcom/mintegral/msdk/out/MtgNativeHandler;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MtgNativeHandler;->clearVideoCache()V

    .line 146
    :cond_d
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->c:Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    if-eqz v0, :cond_16

    .line 147
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->c:Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->clearVideoCache()V

    .line 150
    :cond_16
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->e:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->destory()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->e:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    .line 153
    :cond_1e
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->b:Lcom/mintegral/msdk/out/MtgNativeHandler;

    if-eqz v0, :cond_29

    .line 154
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->b:Lcom/mintegral/msdk/out/MtgNativeHandler;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->d:Lcom/mintegral/msdk/out/Campaign;

    invoke-virtual {v0, p1, v1}, Lcom/mintegral/msdk/out/MtgNativeHandler;->unregisterView(Landroid/view/View;Lcom/mintegral/msdk/out/Campaign;)V

    .line 156
    :cond_29
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->c:Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    if-eqz v0, :cond_34

    .line 157
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->c:Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->d:Lcom/mintegral/msdk/out/Campaign;

    invoke-virtual {v0, p1, v1}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->unregisterView(Landroid/view/View;Lcom/mintegral/msdk/out/Campaign;)V

    .line 159
    :cond_34
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->e:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    if-eqz v0, :cond_c

    .line 218
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->e:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->destory()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->e:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    .line 221
    :cond_c
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->b:Lcom/mintegral/msdk/out/MtgNativeHandler;

    if-eqz v0, :cond_1a

    .line 222
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->b:Lcom/mintegral/msdk/out/MtgNativeHandler;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MtgNativeHandler;->clearVideoCache()V

    .line 223
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->b:Lcom/mintegral/msdk/out/MtgNativeHandler;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MtgNativeHandler;->release()V

    .line 226
    :cond_1a
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->c:Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    if-eqz v0, :cond_28

    .line 227
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->c:Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->clearVideoCache()V

    .line 228
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->c:Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->bidRelease()V

    .line 230
    :cond_28
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 4

    .prologue
    .line 167
    :try_start_0
    new-instance v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->e:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    .line 168
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->e:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->setIsAllowFullScreen(Z)V

    .line 169
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->e:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->d:Lcom/mintegral/msdk/out/Campaign;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->setNativeAd(Lcom/mintegral/msdk/out/Campaign;)V

    .line 170
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->e:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    new-instance v1, Lcom/anythink/network/mintegral/MintegralATNativeAd$3;

    invoke-direct {v1, p0}, Lcom/anythink/network/mintegral/MintegralATNativeAd$3;-><init>(Lcom/anythink/network/mintegral/MintegralATNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->setOnMediaViewListener(Lcom/mintegral/msdk/out/OnMTGMediaViewListener;)V

    .line 207
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->e:Lcom/mintegral/msdk/nativex/view/MTGMediaView;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 212
    :goto_22
    return-object v0

    .line 210
    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 5

    .prologue
    .line 120
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->b:Lcom/mintegral/msdk/out/MtgNativeHandler;

    if-eqz v0, :cond_b

    .line 121
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->b:Lcom/mintegral/msdk/out/MtgNativeHandler;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->d:Lcom/mintegral/msdk/out/Campaign;

    invoke-virtual {v0, p1, v1}, Lcom/mintegral/msdk/out/MtgNativeHandler;->registerView(Landroid/view/View;Lcom/mintegral/msdk/out/Campaign;)V

    .line 124
    :cond_b
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->c:Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    if-eqz v0, :cond_16

    .line 125
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->c:Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->d:Lcom/mintegral/msdk/out/Campaign;

    invoke-virtual {v0, p1, v1}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->registerView(Landroid/view/View;Lcom/mintegral/msdk/out/Campaign;)V

    .line 127
    :cond_16
    return-void
.end method

.method public prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 6
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
    .line 131
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->b:Lcom/mintegral/msdk/out/MtgNativeHandler;

    if-eqz v0, :cond_b

    .line 132
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->b:Lcom/mintegral/msdk/out/MtgNativeHandler;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->d:Lcom/mintegral/msdk/out/Campaign;

    invoke-virtual {v0, p1, p2, v1}, Lcom/mintegral/msdk/out/MtgNativeHandler;->registerView(Landroid/view/View;Ljava/util/List;Lcom/mintegral/msdk/out/Campaign;)V

    .line 135
    :cond_b
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->c:Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    if-eqz v0, :cond_16

    .line 136
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->c:Lcom/mintegral/msdk/out/MtgBidNativeHandler;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->d:Lcom/mintegral/msdk/out/Campaign;

    invoke-virtual {v0, p1, v1}, Lcom/mintegral/msdk/out/MtgBidNativeHandler;->registerView(Landroid/view/View;Lcom/mintegral/msdk/out/Campaign;)V

    .line 138
    :cond_16
    return-void
.end method

.method public setAdData()V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->d:Lcom/mintegral/msdk/out/Campaign;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/mintegral/MintegralATNativeAd;->setTitle(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->d:Lcom/mintegral/msdk/out/Campaign;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/Campaign;->getAppDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/mintegral/MintegralATNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->d:Lcom/mintegral/msdk/out/Campaign;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/mintegral/MintegralATNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->d:Lcom/mintegral/msdk/out/Campaign;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/Campaign;->getAdCall()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/mintegral/MintegralATNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->d:Lcom/mintegral/msdk/out/Campaign;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/mintegral/MintegralATNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->d:Lcom/mintegral/msdk/out/Campaign;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/Campaign;->getRating()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/network/mintegral/MintegralATNativeAd;->setStarRating(Ljava/lang/Double;)V

    .line 108
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->d:Lcom/mintegral/msdk/out/Campaign;

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 110
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_53

    .line 111
    const-string v0, "1"

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->mAdSourceType:Ljava/lang/String;

    .line 115
    :goto_52
    return-void

    .line 113
    :cond_53
    const-string v0, "2"

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->mAdSourceType:Ljava/lang/String;

    goto :goto_52
.end method

.method public setIsAutoPlay(Z)V
    .registers 2

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/anythink/network/mintegral/MintegralATNativeAd;->f:Z

    .line 236
    return-void
.end method
