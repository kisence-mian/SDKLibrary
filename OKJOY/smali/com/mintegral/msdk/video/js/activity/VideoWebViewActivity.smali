.class public abstract Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;
.super Lcom/mintegral/msdk/video/js/activity/AbstractActivity;
.source "VideoWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field public isBidCampaign:Z

.field protected jsbridgeConnectTimeout:Ljava/lang/Runnable;

.field protected mHandler:Landroid/os/Handler;

.field public mIsIV:Z

.field protected mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

.field protected mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

.field protected receiveRunnable:Ljava/lang/Runnable;

.field public unitId:Ljava/lang/String;

.field protected windVaneWebView:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;-><init>()V

    .line 41
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mIsIV:Z

    .line 43
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->isBidCampaign:Z

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->unitId:Ljava/lang/String;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mHandler:Landroid/os/Handler;

    .line 60
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->a:Z

    .line 63
    iput v1, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->b:I

    .line 66
    new-instance v0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity$1;-><init>(Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->receiveRunnable:Ljava/lang/Runnable;

    .line 79
    new-instance v0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity$2;-><init>(Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->jsbridgeConnectTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;I)I
    .registers 2

    .prologue
    .line 26
    iput p1, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->b:I

    return p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;)V
    .registers 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->finish()V

    return-void
.end method


# virtual methods
.method public defaultLoad(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 246
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->defaultLoad(ILjava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->receiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->jsbridgeConnectTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->errorListener:Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a;->a()V

    .line 250
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->windVaneWebView:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_21

    .line 251
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->windVaneWebView:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setVisibility(I)V

    .line 253
    :cond_21
    return-void
.end method

.method public abstract findMintegralContainerView()Lcom/mintegral/msdk/video/module/MintegralContainerView;
.end method

.method public abstract findMintegralVideoView()Lcom/mintegral/msdk/video/module/MintegralVideoView;
.end method

.method public abstract findWindVaneWebView()Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;
.end method

.method public finish()V
    .registers 5

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->receiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->jsbridgeConnectTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->a:Z

    .line 260
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 262
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->windVaneWebView:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_20

    .line 263
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->windVaneWebView:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->clearWebView()V

    .line 265
    :cond_20
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity$3;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity$3;-><init>(Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    :goto_2c
    return-void

    .line 272
    :cond_2d
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->finish()V

    goto :goto_2c
.end method

.method public abstract getCampaignEx()Lcom/mintegral/msdk/base/entity/CampaignEx;
.end method

.method protected getH5CloseType()I
    .registers 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->getCampaignEx()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->getJSCommonByCampaign(Lcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/video/js/a/h;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_f

    .line 102
    invoke-virtual {v0}, Lcom/mintegral/msdk/video/js/a/h;->h()I

    move-result v0

    .line 104
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected getH5MuteState()I
    .registers 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->getCampaignEx()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->getJSCommonByCampaign(Lcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/video/js/a/h;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_f

    .line 112
    invoke-virtual {v0}, Lcom/mintegral/msdk/video/js/a/h;->i()I

    move-result v0

    .line 114
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected getH5Orientation()I
    .registers 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->getCampaignEx()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->getJSCommonByCampaign(Lcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/video/js/a/h;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_f

    .line 94
    invoke-virtual {v0}, Lcom/mintegral/msdk/video/js/a/h;->j()I

    move-result v0

    .line 96
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public abstract getH5Templete()Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity$a;
.end method

.method protected getIsShowingTransparent()Z
    .registers 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->getCampaignEx()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->getJSCommonByCampaign(Lcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/video/js/a/h;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_f

    .line 120
    invoke-virtual {v0}, Lcom/mintegral/msdk/video/js/a/h;->k()Z

    move-result v0

    .line 122
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected getJSCommonByCampaign(Lcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/video/js/a/h;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 134
    if-nez p1, :cond_5

    move-object v0, v1

    .line 148
    :goto_4
    return-object v0

    .line 138
    :cond_5
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mIsIV:Z

    if-eqz v0, :cond_2a

    const/16 v0, 0x11f

    :goto_b
    invoke-static {v0, p1}, Lcom/mintegral/msdk/videocommon/a;->a(ILcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/videocommon/a$a;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/a$a;->b()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 142
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/a$a;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/mintegral/msdk/video/js/a/h;

    if-eqz v2, :cond_2d

    .line 144
    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/video/js/a/h;

    goto :goto_4

    .line 138
    :cond_2a
    const/16 v0, 0x5e

    goto :goto_b

    :cond_2d
    move-object v0, v1

    .line 148
    goto :goto_4
.end method

.method protected initVideoView()Z
    .registers 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->findWindVaneWebView()Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->windVaneWebView:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 237
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->findMintegralVideoView()Lcom/mintegral/msdk/video/module/MintegralVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    .line 238
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-boolean v1, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mIsIV:Z

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setIsIV(Z)V

    .line 239
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->unitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setUnitId(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->findMintegralContainerView()Lcom/mintegral/msdk/video/module/MintegralContainerView;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    .line 241
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mintegralContainerView:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->initViews()Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public abstract initViews()Z
.end method

.method protected isShowingAlertView()Z
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_b

    .line 127
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mintegralVideoView:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->isShowingAlertView()Z

    move-result v0

    .line 129
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public abstract loadModuleDatas()V
.end method

.method protected loadVideoData()V
    .registers 7

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->windVaneWebView:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_74

    .line 157
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 160
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->getIsShowingTransparent()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 161
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/k;->j(Landroid/content/Context;)I

    move-result v2

    .line 162
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/k;->k(Landroid/content/Context;)I

    move-result v0

    .line 163
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/k;->m(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 164
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/k;->l(Landroid/content/Context;)I

    move-result v3

    .line 165
    const/4 v4, 0x2

    if-ne v1, v4, :cond_75

    .line 166
    add-int/2addr v2, v3

    move v3, v2

    move v2, v0

    .line 175
    :goto_2c
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->getCampaignEx()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->b()I

    move-result v0

    .line 177
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->getH5Orientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_40

    move v0, v1

    .line 180
    :cond_40
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->getJSNotifyProxy()Lcom/mintegral/msdk/video/js/e;

    move-result-object v4

    invoke-interface {v4, v1, v0, v3, v2}, Lcom/mintegral/msdk/video/js/e;->a(IIII)V

    .line 181
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 182
    sget-object v1, Lcom/mintegral/msdk/base/common/a;->C:Ljava/lang/String;

    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/k;->c(Landroid/content/Context;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 183
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->getJSNotifyProxy()Lcom/mintegral/msdk/video/js/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/video/js/e;->a(Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b;->b()V

    .line 186
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->loadModuleDatas()V

    .line 187
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->receiveRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    :cond_74
    :goto_74
    return-void

    .line 168
    :cond_75
    add-int/2addr v0, v3

    move v3, v2

    move v2, v0

    .line 170
    goto :goto_2c

    .line 172
    :cond_79
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/k;->i(Landroid/content/Context;)I

    move-result v2

    .line 173
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/k;->h(Landroid/content/Context;)I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_80} :catch_84

    move-result v0

    move v3, v2

    move v2, v0

    goto :goto_2c

    .line 189
    :catch_84
    move-exception v0

    .line 190
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_74

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_74

    :cond_8d
    move v3, v2

    move v2, v0

    goto :goto_2c
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 278
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->onDestroy()V

    .line 279
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->receiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 280
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->jsbridgeConnectTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->a:Z

    .line 282
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->windVaneWebView:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_2d

    .line 283
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->windVaneWebView:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 284
    if-eqz v0, :cond_25

    .line 285
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 287
    :cond_25
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->windVaneWebView:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->release()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->windVaneWebView:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 290
    :cond_2d
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b;->e()V

    .line 293
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 230
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->onResume()V

    .line 1296
    const/4 v0, 0x0

    .line 1297
    iget v1, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->b:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_14

    .line 1298
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->receiveRunnable:Ljava/lang/Runnable;

    .line 1302
    :cond_b
    :goto_b
    if-eqz v0, :cond_13

    .line 1303
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1304
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->b:I

    .line 232
    :cond_13
    return-void

    .line 1299
    :cond_14
    iget v1, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->b:I

    const/4 v2, -0x4

    if-ne v1, v2, :cond_b

    .line 1300
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/VideoWebViewActivity;->jsbridgeConnectTimeout:Ljava/lang/Runnable;

    goto :goto_b
.end method
