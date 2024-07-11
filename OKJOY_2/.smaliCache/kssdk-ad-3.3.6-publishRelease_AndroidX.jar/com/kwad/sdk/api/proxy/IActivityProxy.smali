.class public abstract Lcom/kwad/sdk/api/proxy/IActivityProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/proxy/IComponentProxy;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/IActivityProxy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public finish()V
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/IActivityProxy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/IActivityProxy;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/IActivityProxy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/IActivityProxy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onBackPressed()V
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/IActivityProxy;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->superOnBackPressed()V

    goto :goto_15

    :cond_c
    instance-of v1, v0, Lcom/kwad/sdk/api/proxy/BaseProxyFragmentActivity;

    if-eqz v1, :cond_16

    check-cast v0, Lcom/kwad/sdk/api/proxy/BaseProxyFragmentActivity;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/BaseProxyFragmentActivity;->superOnBackPressed()V

    :goto_15
    return-void

    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kwad/sdk/api/proxy/IActivityProxy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be BaseProxyActivity or BaseProxyFragmentActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method protected onDestroy()V
    .registers 1
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/IActivityProxy;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->superOnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_d
    instance-of v1, v0, Lcom/kwad/sdk/api/proxy/BaseProxyFragmentActivity;

    if-eqz v1, :cond_18

    check-cast v0, Lcom/kwad/sdk/api/proxy/BaseProxyFragmentActivity;

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/api/proxy/BaseProxyFragmentActivity;->superOnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_18
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/IActivityProxy;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " must be BaseProxyActivity or BaseProxyFragmentActivity"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 5
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/IActivityProxy;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->superOnKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_d
    instance-of v1, v0, Lcom/kwad/sdk/api/proxy/BaseProxyFragmentActivity;

    if-eqz v1, :cond_18

    check-cast v0, Lcom/kwad/sdk/api/proxy/BaseProxyFragmentActivity;

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/api/proxy/BaseProxyFragmentActivity;->superOnKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_18
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/IActivityProxy;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " must be BaseProxyActivity or BaseProxyFragmentActivity"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/IActivityProxy;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->superOnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_d
    instance-of v1, v0, Lcom/kwad/sdk/api/proxy/BaseProxyFragmentActivity;

    if-eqz v1, :cond_18

    check-cast v0, Lcom/kwad/sdk/api/proxy/BaseProxyFragmentActivity;

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/api/proxy/BaseProxyFragmentActivity;->superOnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_18
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/IActivityProxy;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " must be BaseProxyActivity or BaseProxyFragmentActivity"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onPause()V
    .registers 1
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onPostResume()V
    .registers 1
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method protected onPreCreate(Landroid/os/Bundle;)V
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onPreDestroy()V
    .registers 1
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onPrePause()V
    .registers 1
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onPreResume()V
    .registers 1
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onPreSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onPreStart()V
    .registers 1
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onPreStop()V
    .registers 1
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onRestart()V
    .registers 1
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onResume()V
    .registers 1
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onStart()V
    .registers 1
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onStop()V
    .registers 1
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onUserLeaveHint()V
    .registers 1
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public overridePendingTransition(II)V
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/IActivityProxy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method setActivity(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/api/proxy/IActivityProxy;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setContentView(I)V
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/IActivityProxy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/IActivityProxy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/IActivityProxy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
