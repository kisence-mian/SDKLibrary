.class Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartEnterTransitionListener"
.end annotation


# instance fields
.field final mIsBack:Z

.field private mNumPostponed:I

.field final mRecord:Landroid/support/v4/app/BackStackRecord;


# direct methods
.method constructor <init>(Landroid/support/v4/app/BackStackRecord;Z)V
    .registers 3
    .param p1, "record"    # Landroid/support/v4/app/BackStackRecord;
    .param p2, "isBack"    # Z

    .prologue
    .line 3873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3874
    iput-boolean p2, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    .line 3875
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    .line 3876
    return-void
.end method


# virtual methods
.method public cancelTransaction()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3934
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/support/v4/app/FragmentManagerImpl;->completeExecute(Landroid/support/v4/app/BackStackRecord;ZZZ)V

    .line 3935
    return-void
.end method

.method public completeTransaction()V
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3916
    iget v7, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-lez v7, :cond_2e

    move v0, v5

    .line 3917
    .local v0, "canceled":Z
    :goto_7
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v3, v7, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 3918
    .local v3, "manager":Landroid/support/v4/app/FragmentManagerImpl;
    iget-object v7, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3919
    .local v4, "numAdded":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v4, :cond_30

    .line 3920
    iget-object v7, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3921
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/support/v4/app/Fragment;->setOnStartEnterTransitionListener(Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;)V

    .line 3922
    if-eqz v0, :cond_2b

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isPostponed()Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 3923
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->startPostponedEnterTransition()V

    .line 3919
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .end local v0    # "canceled":Z
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "i":I
    .end local v3    # "manager":Landroid/support/v4/app/FragmentManagerImpl;
    .end local v4    # "numAdded":I
    :cond_2e
    move v0, v6

    .line 3916
    goto :goto_7

    .line 3926
    .restart local v0    # "canceled":Z
    .restart local v2    # "i":I
    .restart local v3    # "manager":Landroid/support/v4/app/FragmentManagerImpl;
    .restart local v4    # "numAdded":I
    :cond_30
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-boolean v9, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-nez v0, :cond_3b

    move v6, v5

    :cond_3b
    invoke-virtual {v7, v8, v9, v6, v5}, Landroid/support/v4/app/FragmentManagerImpl;->completeExecute(Landroid/support/v4/app/BackStackRecord;ZZZ)V

    .line 3927
    return-void
.end method

.method public isReady()Z
    .registers 2

    .prologue
    .line 3906
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onStartEnterTransition()V
    .registers 2

    .prologue
    .line 3885
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 3886
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-eqz v0, :cond_b

    .line 3890
    :goto_a
    return-void

    .line 3889
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->scheduleCommit()V

    goto :goto_a
.end method

.method public startListening()V
    .registers 2

    .prologue
    .line 3899
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 3900
    return-void
.end method
