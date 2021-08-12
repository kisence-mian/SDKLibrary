.class public abstract Lcom/kwad/sdk/api/proxy/IFragmentActivityProxy;
.super Lcom/kwad/sdk/api/proxy/IActivityProxy;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
.end annotation


# instance fields
.field private mProxyFragmentActivity:Lcom/kwad/sdk/api/proxy/BaseProxyFragmentActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/api/proxy/IActivityProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSupportFragmentManager()Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/IFragmentActivityProxy;->mProxyFragmentActivity:Lcom/kwad/sdk/api/proxy/BaseProxyFragmentActivity;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/proxy/BaseProxyFragmentActivity;->getSupportFragmentManager2()Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public onAttachFragment(Lcom/kwad/sdk/api/core/fragment/KsFragment;)V
    .registers 2

    return-void
.end method

.method setProxyFragmentActivity(Lcom/kwad/sdk/api/proxy/BaseProxyFragmentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/api/proxy/IFragmentActivityProxy;->mProxyFragmentActivity:Lcom/kwad/sdk/api/proxy/BaseProxyFragmentActivity;

    return-void
.end method
