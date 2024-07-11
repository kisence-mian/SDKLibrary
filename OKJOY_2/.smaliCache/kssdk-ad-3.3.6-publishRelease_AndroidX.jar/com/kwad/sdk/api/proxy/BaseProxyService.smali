.class public abstract Lcom/kwad/sdk/api/proxy/BaseProxyService;
.super Landroid/app/Service;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mDelegate:Lcom/kwad/sdk/api/proxy/IServiceProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Wrapper;->wrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/api/proxy/BaseProxyService;->getDelegate(Landroid/content/Context;)Lcom/kwad/sdk/api/proxy/IServiceProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/api/proxy/BaseProxyService;->mDelegate:Lcom/kwad/sdk/api/proxy/IServiceProxy;

    return-void
.end method

.method protected abstract getDelegate(Landroid/content/Context;)Lcom/kwad/sdk/api/proxy/IServiceProxy;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/loader/Loader;->getExternalClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    :cond_d
    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyService;->mDelegate:Lcom/kwad/sdk/api/proxy/IServiceProxy;

    invoke-interface {v0, p0, p1}, Lcom/kwad/sdk/api/proxy/IServiceProxy;->onBind(Landroid/app/Service;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyService;->mDelegate:Lcom/kwad/sdk/api/proxy/IServiceProxy;

    invoke-interface {v0, p0}, Lcom/kwad/sdk/api/proxy/IServiceProxy;->onCreate(Landroid/app/Service;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyService;->mDelegate:Lcom/kwad/sdk/api/proxy/IServiceProxy;

    invoke-interface {v0, p0}, Lcom/kwad/sdk/api/proxy/IServiceProxy;->onDestroy(Landroid/app/Service;)V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/loader/Loader;->getExternalClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    :cond_10
    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyService;->mDelegate:Lcom/kwad/sdk/api/proxy/IServiceProxy;

    invoke-interface {v0, p0, p1}, Lcom/kwad/sdk/api/proxy/IServiceProxy;->onRebind(Landroid/app/Service;Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/loader/Loader;->getExternalClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    :cond_f
    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyService;->mDelegate:Lcom/kwad/sdk/api/proxy/IServiceProxy;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/kwad/sdk/api/proxy/IServiceProxy;->onStartCommand(Landroid/app/Service;Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/BaseProxyService;->mDelegate:Lcom/kwad/sdk/api/proxy/IServiceProxy;

    invoke-interface {v0, p0, p1}, Lcom/kwad/sdk/api/proxy/IServiceProxy;->onUnbind(Landroid/app/Service;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public superOnStartCommand(Landroid/content/Intent;II)I
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public superOnUnbind(Landroid/content/Intent;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
