.class public LsdkInterface/tool/ActResultRequest;
.super Ljava/lang/Object;
.source "ActResultRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LsdkInterface/tool/ActResultRequest$Callback;
    }
.end annotation


# instance fields
.field private fragment:LsdkInterface/tool/OnActResultEventDispatcherFragment;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-direct {p0, p1}, LsdkInterface/tool/ActResultRequest;->getEventDispatchFragment(Landroid/app/Activity;)LsdkInterface/tool/OnActResultEventDispatcherFragment;

    move-result-object v0

    iput-object v0, p0, LsdkInterface/tool/ActResultRequest;->fragment:LsdkInterface/tool/OnActResultEventDispatcherFragment;

    .line 12
    return-void
.end method

.method private findEventDispatchFragment(Landroid/app/FragmentManager;)LsdkInterface/tool/OnActResultEventDispatcherFragment;
    .registers 3
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .line 35
    const-string v0, "on_act_result_event_dispatcher"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, LsdkInterface/tool/OnActResultEventDispatcherFragment;

    return-object v0
.end method

.method private getEventDispatchFragment(Landroid/app/Activity;)LsdkInterface/tool/OnActResultEventDispatcherFragment;
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 22
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-direct {p0, v0}, LsdkInterface/tool/ActResultRequest;->findEventDispatchFragment(Landroid/app/FragmentManager;)LsdkInterface/tool/OnActResultEventDispatcherFragment;

    move-result-object v1

    .line 23
    .local v1, "fragment":LsdkInterface/tool/OnActResultEventDispatcherFragment;
    if-nez v1, :cond_21

    .line 24
    new-instance v2, LsdkInterface/tool/OnActResultEventDispatcherFragment;

    invoke-direct {v2}, LsdkInterface/tool/OnActResultEventDispatcherFragment;-><init>()V

    move-object v1, v2

    .line 25
    nop

    .line 26
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 27
    const-string v3, "on_act_result_event_dispatcher"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 29
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 31
    :cond_21
    return-object v1
.end method


# virtual methods
.method public getFragment()LsdkInterface/tool/OnActResultEventDispatcherFragment;
    .registers 2

    .line 16
    iget-object v0, p0, LsdkInterface/tool/ActResultRequest;->fragment:LsdkInterface/tool/OnActResultEventDispatcherFragment;

    return-object v0
.end method

.method public startForResult(Landroid/content/Intent;LsdkInterface/tool/ActResultRequest$Callback;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # LsdkInterface/tool/ActResultRequest$Callback;

    .line 39
    iget-object v0, p0, LsdkInterface/tool/ActResultRequest;->fragment:LsdkInterface/tool/OnActResultEventDispatcherFragment;

    invoke-virtual {v0, p1, p2}, LsdkInterface/tool/OnActResultEventDispatcherFragment;->startForResult(Landroid/content/Intent;LsdkInterface/tool/ActResultRequest$Callback;)V

    .line 40
    return-void
.end method
