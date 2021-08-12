.class public Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;
.super Lcom/kwad/sdk/api/core/fragment/KsFragment;

# interfaces
.implements Lcom/kwad/sdk/api/core/fragment/IDialogFragmentLifecycle;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
.end annotation


# instance fields
.field private mBase:Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v0, Lcom/kwad/sdk/api/core/fragment/ResDialogFragment;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/api/core/fragment/ResDialogFragment;-><init>(Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;)V

    iput-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;->setBase(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method constructor <init>(Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/api/core/fragment/KsFragment;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->dismiss()V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public getShowsDialog()Z
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->getShowsDialog()Z

    move-result v0

    return v0
.end method

.method public getTheme()I
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->getTheme()I

    move-result v0

    return v0
.end method

.method public isCancelable()Z
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;

    invoke-virtual {v0}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->isCancelable()Z

    move-result v0

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->superOnCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->superOnCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->superOnDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public setCancelable(Z)V
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->setCancelable(Z)V

    return-void
.end method

.method public setShowsDialog(Z)V
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->setShowsDialog(Z)V

    return-void
.end method

.method public setStyle(II)V
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->setStyle(II)V

    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    return-void
.end method

.method public show(Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;Ljava/lang/String;)I
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;

    invoke-virtual {p1}, Lcom/kwad/sdk/api/core/fragment/KsFragmentTransaction;->getBase()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public show(Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/api/core/fragment/KsDialogFragment;->mBase:Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;

    invoke-virtual {p1}, Lcom/kwad/sdk/api/core/fragment/KsFragmentManager;->getBase()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/api/core/fragment/DelegateDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
