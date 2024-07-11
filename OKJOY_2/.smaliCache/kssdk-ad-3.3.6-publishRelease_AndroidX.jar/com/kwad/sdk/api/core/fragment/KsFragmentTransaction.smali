.class public Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
.end annotation


# instance fields
.field private final mBase:Landroidx/fragment/app/FragmentTransaction;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentTransaction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method


# virtual methods
.method public add(ILcom/kwad/sdk/api/core/fragment/KsFragment;)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p2}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->getBase()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public add(ILcom/kwad/sdk/api/core/fragment/KsFragment;Ljava/lang/String;)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 5
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p2}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->getBase()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public add(Lcom/kwad/sdk/api/core/fragment/KsFragment;Ljava/lang/String;)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->getBase()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public addToBackStack(Ljava/lang/String;)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public attach(Lcom/kwad/sdk/api/core/fragment/KsFragment;)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->getBase()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public commit()I
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v0

    return v0
.end method

.method public commitNow()V
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    return-void
.end method

.method public commitNowAllowingStateLoss()V
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void
.end method

.method public detach(Lcom/kwad/sdk/api/core/fragment/KsFragment;)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->getBase()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public disallowAddToBackStack()Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method getBase()Landroidx/fragment/app/FragmentTransaction;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    return-object v0
.end method

.method public hide(Lcom/kwad/sdk/api/core/fragment/KsFragment;)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->getBase()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public isAddToBackStackAllowed()Z
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->isAddToBackStackAllowed()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/kwad/sdk/api/core/fragment/KsFragment;)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->getBase()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public replace(ILcom/kwad/sdk/api/core/fragment/KsFragment;)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p2}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->getBase()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public replace(ILcom/kwad/sdk/api/core/fragment/KsFragment;Ljava/lang/String;)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 5
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p2}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->getBase()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public runOnCommit(Ljava/lang/Runnable;)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public setAllowOptimization(Z)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->setAllowOptimization(Z)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public setBreadCrumbShortTitle(I)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->setBreadCrumbShortTitle(I)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public setBreadCrumbTitle(I)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public setCustomAnimations(II)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public setCustomAnimations(IIII)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 6
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public setPrimaryNavigationFragment(Lcom/kwad/sdk/api/core/fragment/KsFragment;)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->getBase()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public setReorderingAllowed(Z)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public setTransition(I)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public setTransitionStyle(I)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->setTransitionStyle(I)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public show(Lcom/kwad/sdk/api/core/fragment/KsFragment;)Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->mBase:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->getBase()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method
