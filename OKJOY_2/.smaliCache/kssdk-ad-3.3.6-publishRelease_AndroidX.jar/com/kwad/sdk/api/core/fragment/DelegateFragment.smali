.class abstract Lcom/kwad/sdk/api/core/fragment/DelegateFragment;
.super Landroidx/fragment/app/Fragment;

# interfaces
.implements Lcom/kwad/sdk/api/core/fragment/IDelegateFragment;


# static fields
.field private static final REAL_BASE_CLASS:Ljava/lang/String; = "real_base_class"


# instance fields
.field private mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;


# direct methods
.method protected constructor <init>(Lcom/kwad/sdk/api/core/fragment/KsFragment;)V
    .registers 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    return-void
.end method


# virtual methods
.method public getActivity2()Landroid/app/Activity;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getBase()Lcom/kwad/sdk/api/core/fragment/KsFragment;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    check-cast v0, Lcom/kwad/sdk/api/core/fragment/KsFragment;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1, p2, p3}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4

    instance-of v0, p1, Lcom/kwad/sdk/api/core/fragment/IDelegateFragment;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    check-cast p1, Lcom/kwad/sdk/api/core/fragment/IDelegateFragment;

    invoke-interface {p1}, Lcom/kwad/sdk/api/core/fragment/IDelegateFragment;->getBase()Lcom/kwad/sdk/api/core/fragment/KsFragment;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onAttachFragment(Lcom/kwad/sdk/api/core/fragment/KsFragment;)V

    goto :goto_18

    :cond_10
    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onAttachFragment(Lcom/kwad/sdk/api/core/fragment/KsFragment;)V

    :goto_18
    return-void

    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not a DelegateFragment or DelegateDialogFragment"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    if-eqz p1, :cond_28

    :try_start_2
    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/loader/Loader;->getRealClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "real_base_class"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/api/core/fragment/KsFragment;

    iput-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    check-cast v0, Lcom/kwad/sdk/api/core/fragment/KsFragment;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->setBase(Landroidx/fragment/app/Fragment;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_24

    goto :goto_25

    :catch_24
    move-exception v0

    :goto_25
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    :cond_28
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1, p2, p3}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1, p2, p3}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1, p2, p3}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1, p2, p3}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onDestroy()V

    return-void
.end method

.method public onDestroyOptionsMenu()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onDestroyOptionsMenu()V

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onDetach()V

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onHiddenChanged(Z)V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1, p2, p3}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1, p2, p3}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onLowMemory()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onPause()V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPictureInPictureModeChanged(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1, p2, p3}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "real_base_class"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onStart()V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;->onViewStateRestored(Landroid/os/Bundle;)V

    return-void
.end method

.method setBase(Lcom/kwad/sdk/api/core/fragment/KsFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/api/core/fragment/DelegateFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/IFragmentLifecycle;

    return-void
.end method
