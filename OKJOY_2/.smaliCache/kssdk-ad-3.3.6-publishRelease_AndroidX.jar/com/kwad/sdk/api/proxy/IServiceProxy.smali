.class public interface abstract Lcom/kwad/sdk/api/proxy/IServiceProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/proxy/IComponentProxy;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
.end annotation


# virtual methods
.method public abstract onBind(Landroid/app/Service;Landroid/content/Intent;)Landroid/os/IBinder;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract onCreate(Landroid/app/Service;)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract onDestroy(Landroid/app/Service;)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract onRebind(Landroid/app/Service;Landroid/content/Intent;)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract onStartCommand(Landroid/app/Service;Landroid/content/Intent;II)I
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract onUnbind(Landroid/app/Service;Landroid/content/Intent;)Z
.end method
