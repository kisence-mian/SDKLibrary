.class public abstract Lcom/kwad/sdk/api/proxy/BaseProxyActivity;
.super Landroid/app/Activity;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Wrapper;->wrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->getDelegate(Landroid/content/Context;)Lcom/kwad/sdk/api/proxy/IActivityProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {p1, p0}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected abstract getDelegate(Landroid/content/Context;)Lcom/kwad/sdk/api/proxy/IActivityProxy;
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/loader/Loader;->getExternalClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    return-object v1

    :cond_12
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onBackPressed()V

    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onPreCreate(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onPreDestroy()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onDestroy()V

    invoke-static {p0}, Lcom/kwad/sdk/api/core/ComponentDestroyer;->destroyActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onPrePause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onPostResume()V

    return-void
.end method

.method protected onRestart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onRestart()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onPreResume()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onPreSaveInstanceState(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onPreStart()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onPreStop()V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onStop()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onTitleChanged(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;->mDelegate:Lcom/kwad/sdk/api/proxy/IActivityProxy;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/IActivityProxy;->onUserLeaveHint()V

    return-void
.end method

.method public superOnBackPressed()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public superOnKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public superOnKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public superOnKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
