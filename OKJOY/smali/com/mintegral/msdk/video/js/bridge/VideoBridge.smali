.class public Lcom/mintegral/msdk/video/js/bridge/VideoBridge;
.super Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;
.source "VideoBridge.java"


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->init(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->click(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->statistics(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->showVideoLocation(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->soundOperate(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->videoOperate(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->closeVideoOperte(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->progressOperate(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->getCurrentProgress(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->showVideoClickView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->setScaleFitXY(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic m(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic n(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->handlerH5Exception(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic p(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->isSystemResume(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->readyStatus(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic r(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->playVideoFinishOperate(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public click(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 39
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->click(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    :goto_9
    return-void

    .line 42
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$11;-><init>(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public closeVideoOperte(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 123
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 124
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->closeVideoOperte(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    :goto_9
    return-void

    .line 126
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$17;-><init>(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public getCurrentProgress(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 151
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 152
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->getCurrentProgress(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    :goto_9
    return-void

    .line 154
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$2;-><init>(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public handlerH5Exception(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 221
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 222
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->handlerH5Exception(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    :goto_9
    return-void

    .line 224
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$7;-><init>(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public init(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 25
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->init(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :goto_9
    return-void

    .line 28
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$1;-><init>(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public isSystemResume(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 235
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 236
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->isSystemResume(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    :goto_9
    return-void

    .line 238
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$8;-><init>(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 193
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 194
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    :goto_9
    return-void

    .line 196
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$5;-><init>(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public openURL(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 277
    const-string v0, "JS-Video-Brigde"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get H5 params:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 280
    :try_start_1a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 281
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    const-string v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 283
    const/4 v2, 0x1

    if-ne v0, v2, :cond_33

    .line 284
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/click/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_33} :catch_34

    .line 291
    :cond_33
    :goto_33
    return-void

    .line 287
    :catch_34
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_33
.end method

.method public playVideoFinishOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 264
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 265
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->playVideoFinishOperate(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    :goto_9
    return-void

    .line 267
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$10;-><init>(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public progressOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 137
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 138
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->progressOperate(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    :goto_9
    return-void

    .line 140
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$18;-><init>(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public readyStatus(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 249
    const-string v0, "JS-Video-Brigde"

    const-string v1, "VIDEOBridge readyStatus"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 251
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->readyStatus(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    :goto_10
    return-void

    .line 253
    :cond_11
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$9;-><init>(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10
.end method

.method public setScaleFitXY(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 179
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 180
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->setScaleFitXY(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    :goto_9
    return-void

    .line 182
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$4;-><init>(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public showVideoClickView(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 165
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 166
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->showVideoClickView(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    :goto_9
    return-void

    .line 168
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$3;-><init>(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public showVideoLocation(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 81
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 82
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->showVideoLocation(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    :goto_9
    return-void

    .line 84
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$14;-><init>(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public soundOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 95
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 96
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->soundOperate(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    :goto_9
    return-void

    .line 98
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$15;-><init>(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public statistics(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 53
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 54
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->statistics(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    :goto_9
    return-void

    .line 56
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$12;-><init>(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 207
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 208
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    :goto_9
    return-void

    .line 210
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$6;-><init>(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 67
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 68
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :goto_9
    return-void

    .line 70
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$13;-><init>(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public videoOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 109
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 110
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->videoOperate(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    :goto_9
    return-void

    .line 112
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/VideoBridge;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/VideoBridge$16;-><init>(Lcom/mintegral/msdk/video/js/bridge/VideoBridge;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method
