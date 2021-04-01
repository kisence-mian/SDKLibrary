.class public abstract Lcom/JoyFramework/module/BaseFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# instance fields
.field protected mSubscription:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/module/BaseFragment;->mSubscription:Lrx/subscriptions/CompositeSubscription;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 31
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/module/BaseFragment;->mSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 32
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 78
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 73
    return-void
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 83
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 62
    iget-object v0, p0, Lcom/JoyFramework/module/BaseFragment;->mSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->clear()V

    .line 63
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 57
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 52
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 68
    return-void
.end method

.method public replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V
    .registers 7

    .prologue
    .line 124
    invoke-static {p1}, Lcom/JoyFramework/d/ar;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p0}, Lcom/JoyFramework/module/BaseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/JoyFramework/module/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_account_base_fragment_host"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 128
    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 129
    if-eqz p2, :cond_20

    .line 130
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 132
    :cond_20
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 133
    return-void
.end method

.method protected replaceFragmentToActivity(Landroid/app/Fragment;Z)V
    .registers 7

    .prologue
    .line 93
    invoke-static {p1}, Lcom/JoyFramework/d/ar;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {p0}, Lcom/JoyFramework/module/BaseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/JoyFramework/module/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "contentFrame"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 97
    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 98
    if-eqz p2, :cond_20

    .line 99
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 101
    :cond_20
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 102
    return-void
.end method

.method public stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 111
    invoke-virtual {p0}, Lcom/JoyFramework/module/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-array v0, v0, [Z

    invoke-static {v1, p2, v0}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 112
    const/4 v0, 0x1

    .line 114
    :cond_11
    return v0
.end method
