.class public Landroidx/lifecycle/ReportFragment;
.super Landroid/app/Fragment;
.source "ReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ReportFragment$LifecycleCallbacks;,
        Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;
    }
.end annotation


# static fields
.field private static final REPORT_FRAGMENT_TAG:Ljava/lang/String; = "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"


# instance fields
.field private mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static dispatch(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 60
    instance-of v0, p0, Landroidx/lifecycle/LifecycleRegistryOwner;

    if-eqz v0, :cond_f

    .line 61
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleRegistryOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleRegistryOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 62
    return-void

    .line 65
    :cond_f
    instance-of v0, p0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_24

    .line 66
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 67
    .local v0, "lifecycle":Landroidx/lifecycle/Lifecycle;
    instance-of v1, v0, Landroidx/lifecycle/LifecycleRegistry;

    if-eqz v1, :cond_24

    .line 68
    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 71
    .end local v0    # "lifecycle":Landroidx/lifecycle/Lifecycle;
    :cond_24
    return-void
.end method

.method private dispatch(Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4
    .param p1, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_d

    .line 144
    invoke-virtual {p0}, Landroidx/lifecycle/ReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 146
    :cond_d
    return-void
.end method

.method private dispatchCreate(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 81
    if-eqz p1, :cond_5

    .line 82
    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onCreate()V

    .line 84
    :cond_5
    return-void
.end method

.method private dispatchResume(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 93
    if-eqz p1, :cond_5

    .line 94
    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onResume()V

    .line 96
    :cond_5
    return-void
.end method

.method private dispatchStart(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 87
    if-eqz p1, :cond_5

    .line 88
    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;->onStart()V

    .line 90
    :cond_5
    return-void
.end method

.method static get(Landroid/app/Activity;)Landroidx/lifecycle/ReportFragment;
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ReportFragment;

    return-object v0
.end method

.method public static injectIfNeededIn(Landroid/app/Activity;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    .line 43
    new-instance v0, Landroidx/lifecycle/ReportFragment$LifecycleCallbacks;

    invoke-direct {v0}, Landroidx/lifecycle/ReportFragment$LifecycleCallbacks;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 50
    :cond_e
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 51
    .local v0, "manager":Landroid/app/FragmentManager;
    const-string v1, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 52
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    new-instance v3, Landroidx/lifecycle/ReportFragment;

    invoke-direct {v3}, Landroidx/lifecycle/ReportFragment;-><init>()V

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 54
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 56
    :cond_2d
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 100
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatchCreate(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 102
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 103
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 133
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 134
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 137
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 121
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 122
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 123
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 114
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 115
    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatchResume(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 116
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 117
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 107
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 108
    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatchStart(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 109
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 110
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 127
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 128
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->dispatch(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 129
    return-void
.end method

.method setProcessListener(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .registers 2
    .param p1, "processListener"    # Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 149
    iput-object p1, p0, Landroidx/lifecycle/ReportFragment;->mProcessListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 150
    return-void
.end method
