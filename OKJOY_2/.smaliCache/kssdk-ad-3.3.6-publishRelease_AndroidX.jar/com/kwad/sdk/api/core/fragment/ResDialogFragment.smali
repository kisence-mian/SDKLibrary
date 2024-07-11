.class public Lcom/kwad/sdk/api/core/fragment/ResDialogFragment;
.super Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;-><init>(Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;)V

    invoke-direct {p0, v0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;-><init>(Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/api/core/fragment/ResDialogFragment;->getBase()Lcom/kwad/sdk/api/core/fragment/KsFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->setBase(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method constructor <init>(Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;-><init>(Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;)V

    return-void
.end method


# virtual methods
.method public final getActivity2()Landroid/app/Activity;
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBase()Lcom/kwad/sdk/api/core/fragment/KsFragment;
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->getBase()Lcom/kwad/sdk/api/core/fragment/KsFragment;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/Wrapper;->wrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Wrapper;->wrapInflaterIfNeed(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onAttach(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Wrapper;->wrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public bridge synthetic onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onDestroyOptionsMenu()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onDestroyOptionsMenu()V

    return-void
.end method

.method public bridge synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onDestroyView()V

    return-void
.end method

.method public bridge synthetic onDetach()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onDetach()V

    return-void
.end method

.method public bridge synthetic onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Wrapper;->wrapInflaterIfNeed(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onHiddenChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onHiddenChanged(Z)V

    return-void
.end method

.method public bridge synthetic onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onLowMemory()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onLowMemory()V

    return-void
.end method

.method public bridge synthetic onMultiWindowModeChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public bridge synthetic onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public bridge synthetic onPause()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onPause()V

    return-void
.end method

.method public bridge synthetic onPictureInPictureModeChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public bridge synthetic onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public bridge synthetic onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public bridge synthetic onResume()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onResume()V

    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onStart()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onStart()V

    return-void
.end method

.method public bridge synthetic onStop()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onStop()V

    return-void
.end method

.method public bridge synthetic onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onViewStateRestored(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    return-void
.end method
