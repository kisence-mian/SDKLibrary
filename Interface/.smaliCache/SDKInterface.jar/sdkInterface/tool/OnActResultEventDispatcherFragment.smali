.class public LsdkInterface/tool/OnActResultEventDispatcherFragment;
.super Landroid/app/Fragment;
.source "OnActResultEventDispatcherFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "on_act_result_event_dispatcher"


# instance fields
.field private mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "LsdkInterface/tool/ActResultRequest$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public mRequestCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 11
    const/16 v0, 0x11

    iput v0, p0, LsdkInterface/tool/OnActResultEventDispatcherFragment;->mRequestCode:I

    .line 13
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LsdkInterface/tool/OnActResultEventDispatcherFragment;->mCallbacks:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 32
    iget-object v0, p0, LsdkInterface/tool/OnActResultEventDispatcherFragment;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LsdkInterface/tool/ActResultRequest$Callback;

    .line 33
    .local v0, "callback":LsdkInterface/tool/ActResultRequest$Callback;
    iget-object v1, p0, LsdkInterface/tool/OnActResultEventDispatcherFragment;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 35
    if-eqz v0, :cond_15

    .line 36
    invoke-interface {v0, p1, p2, p3}, LsdkInterface/tool/ActResultRequest$Callback;->onActivityResult(IILandroid/content/Intent;)V

    .line 38
    :cond_15
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 17
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LsdkInterface/tool/OnActResultEventDispatcherFragment;->setRetainInstance(Z)V

    .line 19
    return-void
.end method

.method public setCallBack(LsdkInterface/tool/ActResultRequest$Callback;)V
    .registers 4
    .param p1, "callback"    # LsdkInterface/tool/ActResultRequest$Callback;

    .line 41
    iget-object v0, p0, LsdkInterface/tool/OnActResultEventDispatcherFragment;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    return-void
.end method

.method public startForResult(Landroid/content/Intent;LsdkInterface/tool/ActResultRequest$Callback;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # LsdkInterface/tool/ActResultRequest$Callback;

    .line 23
    iget-object v0, p0, LsdkInterface/tool/OnActResultEventDispatcherFragment;->mCallbacks:Landroid/util/SparseArray;

    iget v1, p0, LsdkInterface/tool/OnActResultEventDispatcherFragment;->mRequestCode:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    iget v0, p0, LsdkInterface/tool/OnActResultEventDispatcherFragment;->mRequestCode:I

    invoke-virtual {p0, p1, v0}, LsdkInterface/tool/OnActResultEventDispatcherFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 25
    iget v0, p0, LsdkInterface/tool/OnActResultEventDispatcherFragment;->mRequestCode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LsdkInterface/tool/OnActResultEventDispatcherFragment;->mRequestCode:I

    .line 26
    return-void
.end method
