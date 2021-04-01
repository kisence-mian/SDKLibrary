.class public abstract Lcom/anythink/nativead/unitgroup/a;
.super Lcom/anythink/core/b/c/e;


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

.field protected mAdTrackingInfo:Lcom/anythink/core/b/c/b;

.field public mDownLoadProgressListener:Lcom/anythink/nativead/api/NativeAd$DownLoadProgressListener;

.field private mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

.field protected mNetworkType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/anythink/nativead/unitgroup/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/nativead/unitgroup/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 60
    invoke-direct {p0}, Lcom/anythink/core/b/c/e;-><init>()V

    .line 29
    const-string v0, "1"

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->VIDEO_TYPE:Ljava/lang/String;

    .line 30
    const-string v0, "2"

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->IMAGE_TYPE:Ljava/lang/String;

    .line 31
    const-string v0, "0"

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->UNKNOW_TYPE:Ljava/lang/String;

    .line 33
    iput v1, p0, Lcom/anythink/nativead/unitgroup/a;->NETWORK_UNKNOW:I

    .line 56
    const-string v0, "0"

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 58
    iput v1, p0, Lcom/anythink/nativead/unitgroup/a;->mNetworkType:I

    .line 61
    return-void
.end method


# virtual methods
.method public abstract clear(Landroid/view/View;)V
.end method

.method public final getAdCacheId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdCacheId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getAdIconView()Landroid/view/View;
.end method

.method public varargs abstract getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
.end method

.method public final getAdType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getCustomAdContainer()Landroid/view/ViewGroup;
.end method

.method public final getDetail()Lcom/anythink/core/b/c/b;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/b/c/b;

    return-object v0
.end method

.method public final getNetworkType()I
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNetworkType:I

    return v0
.end method

.method public abstract isNativeExpress()Z
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 209
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 210
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/b/c/b;

    if-eqz v0, :cond_e5

    .line 212
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 213
    iget-object v1, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->o()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 214
    const-string v1, "isDefault"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 216
    :cond_1d
    const-string v1, "placemengId"

    iget-object v2, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v1, "adType"

    iget-object v2, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v1, "refresh"

    iget-object v2, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->v()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v1, "position"

    iget-object v2, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->q()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    const-string v1, "networkType"

    iget-object v2, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->x()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 223
    const-string v1, "networkName"

    iget-object v2, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v1, "networkVersion"

    iget-object v2, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/b/c/b;

    .line 1226
    iget-object v2, v2, Lcom/anythink/core/b/c/b;->o:Ljava/lang/String;

    .line 224
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v1, "networkUnit"

    iget-object v2, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v1, "isHB"

    iget-object v2, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    const-string v1, "msg"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v1, "hourly_frequency"

    iget-object v2, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->r()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    const-string v1, "daily_frequency"

    iget-object v2, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->s()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 230
    const-string v1, "network_list"

    iget-object v2, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v1, "request_network_num"

    iget-object v2, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/b/c/b;

    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->u()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    const-string v1, "handle_class"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e5} :catch_e6

    .line 239
    :cond_e5
    :goto_e5
    return-void

    :catch_e6
    move-exception v0

    goto :goto_e5
.end method

.method public final notifyAdClicked()V
    .registers 3

    .prologue
    .line 132
    sget-object v0, Lcom/anythink/nativead/unitgroup/a;->TAG:Ljava/lang/String;

    const-string v1, "notifyAdClicked..."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    if-eqz v0, :cond_10

    .line 134
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    invoke-interface {v0}, Lcom/anythink/nativead/unitgroup/a$a;->onAdClicked()V

    .line 136
    :cond_10
    return-void
.end method

.method public final notifyAdDislikeClick()V
    .registers 3

    .prologue
    .line 174
    sget-object v0, Lcom/anythink/nativead/unitgroup/a;->TAG:Ljava/lang/String;

    const-string v1, "notifyAdDislikeClick..."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    if-eqz v0, :cond_10

    .line 176
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    invoke-interface {v0}, Lcom/anythink/nativead/unitgroup/a$a;->onAdDislikeButtonClick()V

    .line 178
    :cond_10
    return-void
.end method

.method public final notifyAdVideoEnd()V
    .registers 3

    .prologue
    .line 152
    sget-object v0, Lcom/anythink/nativead/unitgroup/a;->TAG:Ljava/lang/String;

    const-string v1, "notifyAdVideoEnd..."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    if-eqz v0, :cond_10

    .line 154
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    invoke-interface {v0}, Lcom/anythink/nativead/unitgroup/a$a;->onAdVideoEnd()V

    .line 156
    :cond_10
    return-void
.end method

.method public final notifyAdVideoPlayProgress(I)V
    .registers 4

    .prologue
    .line 162
    sget-object v0, Lcom/anythink/nativead/unitgroup/a;->TAG:Ljava/lang/String;

    const-string v1, "notifyAdVideoPlayProgress..."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    if-eqz v0, :cond_10

    .line 164
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    invoke-interface {v0, p1}, Lcom/anythink/nativead/unitgroup/a$a;->onAdVideoProgress(I)V

    .line 166
    :cond_10
    return-void
.end method

.method public final notifyAdVideoStart()V
    .registers 3

    .prologue
    .line 142
    sget-object v0, Lcom/anythink/nativead/unitgroup/a;->TAG:Ljava/lang/String;

    const-string v1, "notifyAdVideoStart..."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    if-eqz v0, :cond_10

    .line 144
    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    invoke-interface {v0}, Lcom/anythink/nativead/unitgroup/a$a;->onAdVideoStart()V

    .line 146
    :cond_10
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
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation
.end method

.method public final setAdCacheId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/a;->mAdCacheId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public final setDownLoadProgressListener(Lcom/anythink/nativead/api/NativeAd$DownLoadProgressListener;)V
    .registers 2

    .prologue
    .line 205
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/a;->mDownLoadProgressListener:Lcom/anythink/nativead/api/NativeAd$DownLoadProgressListener;

    .line 206
    return-void
.end method

.method public setNativeEventListener(Lcom/anythink/nativead/unitgroup/a$a;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/nativead/unitgroup/a$a;

    .line 125
    return-void
.end method

.method public final setNetworkType(I)V
    .registers 2

    .prologue
    .line 194
    iput p1, p0, Lcom/anythink/nativead/unitgroup/a;->mNetworkType:I

    .line 195
    return-void
.end method

.method public final setTrackingInfo(Lcom/anythink/core/b/c/b;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/b/c/b;

    .line 68
    return-void
.end method
