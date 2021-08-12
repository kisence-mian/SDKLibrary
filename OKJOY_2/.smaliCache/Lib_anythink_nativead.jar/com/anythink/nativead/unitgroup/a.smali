.class public abstract Lcom/anythink/nativead/unitgroup/a;
.super Lcom/anythink/core/api/BaseAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/nativead/unitgroup/a$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final IMAGE_TYPE:Ljava/lang/String;

.field public final NETWORK_UNKNOW:I

.field protected final UNKNOW_TYPE:Ljava/lang/String;

.field protected final VIDEO_TYPE:Ljava/lang/String;

.field private mAdCacheId:Ljava/lang/String;

.field protected mAdSourceType:Ljava/lang/String;

.field protected mAdTrackingInfo:Lcom/anythink/core/common/d/d;

.field public mDownLoadProgressListener:Lcom/anythink/nativead/api/NativeAd$DownLoadProgressListener;

.field private mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

.field protected mNetworkType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/nativead/unitgroup/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .line 65
    invoke-direct {p0}, Lcom/anythink/core/api/BaseAd;-><init>()V

    .line 32
    const-string v0, "1"

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->VIDEO_TYPE:Ljava/lang/String;

    .line 33
    const-string v0, "2"

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->IMAGE_TYPE:Ljava/lang/String;

    .line 34
    const-string v0, "0"

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->UNKNOW_TYPE:Ljava/lang/String;

    .line 36
    const/4 v1, -0x1

    iput v1, p0, Lcom/anythink/nativead/unitgroup/a;->NETWORK_UNKNOW:I

    .line 61
    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/anythink/nativead/unitgroup/a;->mNetworkType:I

    .line 66
    return-void
.end method


# virtual methods
.method public abstract clear(Landroid/view/View;)V
.end method

.method public abstract getAdIconView()Landroid/view/View;
.end method

.method public varargs abstract getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
.end method

.method public final getAdType()Ljava/lang/String;
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getCustomAdContainer()Landroid/view/ViewGroup;
.end method

.method public final getDetail()Lcom/anythink/core/common/d/d;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/common/d/d;

    return-object v0
.end method

.method public abstract isNativeExpress()Z
.end method

.method public final notifyAdClicked()V
    .registers 3

    .line 139
    sget-object v0, Lcom/anythink/nativead/unitgroup/a;->TAG:Ljava/lang/String;

    const-string v1, "notifyAdClicked..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    if-eqz v0, :cond_e

    .line 141
    invoke-interface {v0}, Lcom/anythink/nativead/unitgroup/a$a;->onAdClicked()V

    .line 143
    :cond_e
    return-void
.end method

.method public final notifyAdDislikeClick()V
    .registers 3

    .line 201
    sget-object v0, Lcom/anythink/nativead/unitgroup/a;->TAG:Ljava/lang/String;

    const-string v1, "notifyAdDislikeClick..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    if-eqz v0, :cond_e

    .line 203
    invoke-interface {v0}, Lcom/anythink/nativead/unitgroup/a$a;->onAdDislikeButtonClick()V

    .line 205
    :cond_e
    return-void
.end method

.method public final notifyAdImpression()V
    .registers 3

    .line 149
    sget-object v0, Lcom/anythink/nativead/unitgroup/a;->TAG:Ljava/lang/String;

    const-string v1, "notifyAdImpression..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    if-eqz v0, :cond_e

    .line 151
    invoke-interface {v0}, Lcom/anythink/nativead/unitgroup/a$a;->onAdImpressed()V

    .line 153
    :cond_e
    return-void
.end method

.method public final notifyAdVideoEnd()V
    .registers 3

    .line 169
    sget-object v0, Lcom/anythink/nativead/unitgroup/a;->TAG:Ljava/lang/String;

    const-string v1, "notifyAdVideoEnd..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    if-eqz v0, :cond_e

    .line 171
    invoke-interface {v0}, Lcom/anythink/nativead/unitgroup/a$a;->onAdVideoEnd()V

    .line 173
    :cond_e
    return-void
.end method

.method public final notifyAdVideoPlayProgress(I)V
    .registers 4

    .line 189
    sget-object v0, Lcom/anythink/nativead/unitgroup/a;->TAG:Ljava/lang/String;

    const-string v1, "notifyAdVideoPlayProgress..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    if-eqz v0, :cond_e

    .line 191
    invoke-interface {v0, p1}, Lcom/anythink/nativead/unitgroup/a$a;->onAdVideoProgress(I)V

    .line 193
    :cond_e
    return-void
.end method

.method public final notifyAdVideoStart()V
    .registers 3

    .line 159
    sget-object v0, Lcom/anythink/nativead/unitgroup/a;->TAG:Ljava/lang/String;

    const-string v1, "notifyAdVideoStart..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    if-eqz v0, :cond_e

    .line 161
    invoke-interface {v0}, Lcom/anythink/nativead/unitgroup/a$a;->onAdVideoStart()V

    .line 163
    :cond_e
    return-void
.end method

.method public final notifyDeeplinkCallback(Z)V
    .registers 4

    .line 179
    sget-object v0, Lcom/anythink/nativead/unitgroup/a;->TAG:Ljava/lang/String;

    const-string v1, "notifyDeeplinkCallback..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    if-eqz v0, :cond_e

    .line 181
    invoke-interface {v0, p1}, Lcom/anythink/nativead/unitgroup/a$a;->onDeeplinkCallback(Z)V

    .line 183
    :cond_e
    return-void
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract prepare(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
.end method

.method public abstract prepare(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
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
.end method

.method public final setDownLoadProgressListener(Lcom/anythink/nativead/api/NativeAd$DownLoadProgressListener;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/a;->mDownLoadProgressListener:Lcom/anythink/nativead/api/NativeAd$DownLoadProgressListener;

    .line 220
    return-void
.end method

.method public setNativeEventListener(Lcom/anythink/nativead/unitgroup/a$a;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    .line 132
    return-void
.end method

.method public final setTrackingInfo(Lcom/anythink/core/common/d/d;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/common/d/d;

    .line 74
    return-void
.end method
