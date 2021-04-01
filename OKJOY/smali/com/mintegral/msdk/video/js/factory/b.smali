.class public final Lcom/mintegral/msdk/video/js/factory/b;
.super Lcom/mintegral/msdk/video/js/factory/a;
.source "JSFactory.java"


# instance fields
.field private g:Landroid/app/Activity;

.field private h:Landroid/webkit/WebView;

.field private i:Lcom/mintegral/msdk/video/module/MintegralVideoView;

.field private j:Lcom/mintegral/msdk/video/module/MintegralContainerView;

.field private k:Lcom/mintegral/msdk/base/entity/CampaignEx;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/mintegral/msdk/video/module/MintegralVideoView;Lcom/mintegral/msdk/video/module/MintegralContainerView;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 6

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mintegral/msdk/video/js/factory/a;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mintegral/msdk/video/js/factory/b;->g:Landroid/app/Activity;

    .line 36
    iput-object p2, p0, Lcom/mintegral/msdk/video/js/factory/b;->h:Landroid/webkit/WebView;

    .line 37
    iput-object p3, p0, Lcom/mintegral/msdk/video/js/factory/b;->i:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    .line 38
    iput-object p4, p0, Lcom/mintegral/msdk/video/js/factory/b;->j:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    .line 39
    iput-object p5, p0, Lcom/mintegral/msdk/video/js/factory/b;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 40
    return-void
.end method


# virtual methods
.method public final getActivityProxy()Lcom/mintegral/msdk/video/js/a;
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->h:Landroid/webkit/WebView;

    if-nez v0, :cond_9

    .line 45
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/factory/a;->getActivityProxy()Lcom/mintegral/msdk/video/js/a;

    move-result-object v0

    .line 50
    :goto_8
    return-object v0

    .line 47
    :cond_9
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->a:Lcom/mintegral/msdk/video/js/a;

    if-nez v0, :cond_16

    .line 48
    new-instance v0, Lcom/mintegral/msdk/video/js/a/g;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/factory/b;->h:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/video/js/a/g;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->a:Lcom/mintegral/msdk/video/js/a;

    .line 50
    :cond_16
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->a:Lcom/mintegral/msdk/video/js/a;

    goto :goto_8
.end method

.method public final getIJSRewardVideoV1()Lcom/mintegral/msdk/video/js/g;
    .registers 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->j:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->g:Landroid/app/Activity;

    if-nez v0, :cond_d

    .line 105
    :cond_8
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/factory/a;->getIJSRewardVideoV1()Lcom/mintegral/msdk/video/js/g;

    move-result-object v0

    .line 110
    :goto_c
    return-object v0

    .line 107
    :cond_d
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->f:Lcom/mintegral/msdk/video/js/g;

    if-nez v0, :cond_1c

    .line 108
    new-instance v0, Lcom/mintegral/msdk/video/js/a/k;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/factory/b;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/factory/b;->j:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/video/js/a/k;-><init>(Landroid/app/Activity;Lcom/mintegral/msdk/video/module/MintegralContainerView;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->f:Lcom/mintegral/msdk/video/js/g;

    .line 110
    :cond_1c
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->f:Lcom/mintegral/msdk/video/js/g;

    goto :goto_c
.end method

.method public final getJSCommon()Lcom/mintegral/msdk/video/js/b;
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->g:Landroid/app/Activity;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v0, :cond_d

    .line 69
    :cond_8
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/factory/a;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    .line 74
    :goto_c
    return-object v0

    .line 71
    :cond_d
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->b:Lcom/mintegral/msdk/video/js/b;

    if-nez v0, :cond_1c

    .line 72
    new-instance v0, Lcom/mintegral/msdk/video/js/a/h;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/factory/b;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mintegral/msdk/video/js/factory/b;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/video/js/a/h;-><init>(Landroid/app/Activity;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->b:Lcom/mintegral/msdk/video/js/b;

    .line 74
    :cond_1c
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->b:Lcom/mintegral/msdk/video/js/b;

    goto :goto_c
.end method

.method public final getJSContainerModule()Lcom/mintegral/msdk/video/js/d;
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->j:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-nez v0, :cond_9

    .line 93
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/factory/a;->getJSContainerModule()Lcom/mintegral/msdk/video/js/d;

    move-result-object v0

    .line 98
    :goto_8
    return-object v0

    .line 95
    :cond_9
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->e:Lcom/mintegral/msdk/video/js/d;

    if-nez v0, :cond_16

    .line 96
    new-instance v0, Lcom/mintegral/msdk/video/js/a/i;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/factory/b;->j:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/video/js/a/i;-><init>(Lcom/mintegral/msdk/video/module/MintegralContainerView;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->e:Lcom/mintegral/msdk/video/js/d;

    .line 98
    :cond_16
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->e:Lcom/mintegral/msdk/video/js/d;

    goto :goto_8
.end method

.method public final getJSNotifyProxy()Lcom/mintegral/msdk/video/js/e;
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->h:Landroid/webkit/WebView;

    if-nez v0, :cond_9

    .line 57
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/factory/a;->getJSNotifyProxy()Lcom/mintegral/msdk/video/js/e;

    move-result-object v0

    .line 62
    :goto_8
    return-object v0

    .line 59
    :cond_9
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->d:Lcom/mintegral/msdk/video/js/e;

    if-nez v0, :cond_16

    .line 60
    new-instance v0, Lcom/mintegral/msdk/video/js/a/j;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/factory/b;->h:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/video/js/a/j;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->d:Lcom/mintegral/msdk/video/js/e;

    .line 62
    :cond_16
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->d:Lcom/mintegral/msdk/video/js/e;

    goto :goto_8
.end method

.method public final getJSVideoModule()Lcom/mintegral/msdk/video/js/h;
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->i:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-nez v0, :cond_9

    .line 81
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/factory/a;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    .line 86
    :goto_8
    return-object v0

    .line 83
    :cond_9
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->c:Lcom/mintegral/msdk/video/js/h;

    if-nez v0, :cond_16

    .line 84
    new-instance v0, Lcom/mintegral/msdk/video/js/a/l;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/factory/b;->i:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/video/js/a/l;-><init>(Lcom/mintegral/msdk/video/module/MintegralVideoView;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->c:Lcom/mintegral/msdk/video/js/h;

    .line 86
    :cond_16
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/factory/b;->c:Lcom/mintegral/msdk/video/js/h;

    goto :goto_8
.end method
