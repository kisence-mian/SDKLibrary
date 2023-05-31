.class public abstract Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;
.super Landroid/app/Activity;
.source "AbstractJSActivity.java"

# interfaces
.implements Lcom/mintegral/msdk/video/js/factory/IJSFactory;


# static fields
.field protected static final TAG:Ljava/lang/String; = "AbstractJSActivity"


# instance fields
.field protected jsFactory:Lcom/mintegral/msdk/video/js/factory/IJSFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    new-instance v0, Lcom/mintegral/msdk/video/js/factory/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/video/js/factory/a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->jsFactory:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    return-void
.end method


# virtual methods
.method public canBackPress()Z
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getActivityProxy()Lcom/mintegral/msdk/video/js/a;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->jsFactory:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getActivityProxy()Lcom/mintegral/msdk/video/js/a;

    move-result-object v0

    return-object v0
.end method

.method public getIJSRewardVideoV1()Lcom/mintegral/msdk/video/js/g;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->jsFactory:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getIJSRewardVideoV1()Lcom/mintegral/msdk/video/js/g;

    move-result-object v0

    return-object v0
.end method

.method public getJSCommon()Lcom/mintegral/msdk/video/js/b;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->jsFactory:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    return-object v0
.end method

.method public getJSContainerModule()Lcom/mintegral/msdk/video/js/d;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->jsFactory:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSContainerModule()Lcom/mintegral/msdk/video/js/d;

    move-result-object v0

    return-object v0
.end method

.method public getJSNotifyProxy()Lcom/mintegral/msdk/video/js/e;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->jsFactory:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSNotifyProxy()Lcom/mintegral/msdk/video/js/e;

    move-result-object v0

    return-object v0
.end method

.method public getJSVideoModule()Lcom/mintegral/msdk/video/js/h;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->jsFactory:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 70
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->getJSContainerModule()Lcom/mintegral/msdk/video/js/d;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->getJSContainerModule()Lcom/mintegral/msdk/video/js/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/d;->miniCardShowing()Z

    move-result v0

    if-nez v0, :cond_21

    .line 73
    :cond_1a
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->getActivityProxy()Lcom/mintegral/msdk/video/js/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/a;->d()V

    .line 82
    :cond_21
    :goto_21
    return-void

    .line 76
    :cond_22
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->canBackPress()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_21

    .line 79
    :cond_2c
    const-string v0, "AbstractJSActivity"

    const-string v1, "onBackPressed can\'t excute"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 62
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->getActivityProxy()Lcom/mintegral/msdk/video/js/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/video/js/a;->a(Landroid/content/res/Configuration;)V

    .line 64
    :cond_14
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 52
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 53
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->getActivityProxy()Lcom/mintegral/msdk/video/js/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/a;->c()V

    .line 55
    :cond_14
    invoke-static {}, Lcom/mintegral/msdk/video/module/b/a;->a()V

    .line 56
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 43
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 44
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->getActivityProxy()Lcom/mintegral/msdk/video/js/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/a;->a()V

    .line 46
    :cond_14
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->getActivityProxy()Lcom/mintegral/msdk/video/js/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/video/js/a;->a(I)V

    .line 47
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 34
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 35
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->getActivityProxy()Lcom/mintegral/msdk/video/js/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/a;->b()V

    .line 37
    :cond_14
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->getActivityProxy()Lcom/mintegral/msdk/video/js/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/video/js/a;->a(I)V

    .line 38
    return-void
.end method

.method public registerJsFactory(Lcom/mintegral/msdk/video/js/factory/IJSFactory;)V
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->jsFactory:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    .line 29
    return-void
.end method
