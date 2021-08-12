.class public Lokjoy/c/b;
.super Landroid/app/Fragment;
.source ""


# instance fields
.field public a:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :cond_d
    return-void
.end method

.method public a(Landroid/app/Fragment;Z)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "contentFrame"

    invoke-static {v1, v2}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    if-eqz p2, :cond_1e

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_1e
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .registers 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .registers 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .registers 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method
