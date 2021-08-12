.class public abstract Lcom/kwad/sdk/api/core/fragment/KsFragmentManager$FragmentLifecycleCallbacks;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FragmentLifecycleCallbacks"
.end annotation


# instance fields
.field private mBase:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getBase()Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentManager$FragmentLifecycleCallbacks;->mBase:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    return-object v0
.end method

.method public onFragmentActivityCreated(Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;Lcom/kwad/sdk/api/core/fragment/KsFragment;Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onFragmentAttached(Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;Lcom/kwad/sdk/api/core/fragment/KsFragment;Landroid/content/Context;)V
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onFragmentCreated(Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;Lcom/kwad/sdk/api/core/fragment/KsFragment;Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onFragmentDestroyed(Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;Lcom/kwad/sdk/api/core/fragment/KsFragment;)V
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onFragmentDetached(Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;Lcom/kwad/sdk/api/core/fragment/KsFragment;)V
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onFragmentPaused(Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;Lcom/kwad/sdk/api/core/fragment/KsFragment;)V
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onFragmentPreAttached(Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;Lcom/kwad/sdk/api/core/fragment/KsFragment;Landroid/content/Context;)V
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onFragmentPreCreated(Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;Lcom/kwad/sdk/api/core/fragment/KsFragment;Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onFragmentResumed(Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;Lcom/kwad/sdk/api/core/fragment/KsFragment;)V
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onFragmentSaveInstanceState(Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;Lcom/kwad/sdk/api/core/fragment/KsFragment;Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onFragmentStarted(Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;Lcom/kwad/sdk/api/core/fragment/KsFragment;)V
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onFragmentStopped(Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;Lcom/kwad/sdk/api/core/fragment/KsFragment;)V
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onFragmentViewCreated(Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;Lcom/kwad/sdk/api/core/fragment/KsFragment;Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method public onFragmentViewDestroyed(Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;Lcom/kwad/sdk/api/core/fragment/KsFragment;)V
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    return-void
.end method

.method setBase(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentManager$FragmentLifecycleCallbacks;->mBase:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    return-void
.end method
