.class public abstract Landroidx/fragment/app/FragmentManager;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;,
        Landroidx/fragment/app/FragmentManager$PopBackStackState;,
        Landroidx/fragment/app/FragmentManager$OpGenerator;,
        Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;,
        Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;,
        Landroidx/fragment/app/FragmentManager$BackStackEntry;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final POP_BACK_STACK_INCLUSIVE:I = 0x1

.field static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field mContainer:Landroidx/fragment/app/FragmentContainer;

.field private mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field private mDestroyed:Z

.field private mExecCommit:Ljava/lang/Runnable;

.field private mExecutingActions:Z

.field private mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/HashSet<",
            "Landroidx/core/os/CancellationSignal;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

.field private final mFragmentStore:Landroidx/fragment/app/FragmentStore;

.field private final mFragmentTransitionCallback:Landroidx/fragment/app/FragmentTransition$Callback;

.field private mHavePendingDeferredStart:Z

.field mHost:Landroidx/fragment/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation
.end field

.field private mHostFragmentFactory:Landroidx/fragment/app/FragmentFactory;

.field private final mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

.field private final mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

.field private mNeedMenuInvalidate:Z

.field private mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

.field private final mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field private mParent:Landroidx/fragment/app/Fragment;

.field private final mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManager$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Landroidx/fragment/app/Fragment;

.field private mStateSaved:Z

.field private mStopped:Z

.field private mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/fragment/app/FragmentManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    .line 340
    new-instance v0, Landroidx/fragment/app/FragmentStore;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentStore;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 343
    new-instance v0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentLayoutInflaterFactory;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    .line 346
    new-instance v0, Landroidx/fragment/app/FragmentManager$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/FragmentManager$1;-><init>(Landroidx/fragment/app/FragmentManager;Z)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 354
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 357
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    .line 359
    new-instance v0, Landroidx/fragment/app/FragmentManager$2;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$2;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentTransitionCallback:Landroidx/fragment/app/FragmentTransition$Callback;

    .line 374
    new-instance v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    .line 377
    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    .line 385
    new-instance v0, Landroidx/fragment/app/FragmentManager$3;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$3;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHostFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    .line 410
    new-instance v0, Landroidx/fragment/app/FragmentManager$4;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$4;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method private addAddedFragments(Landroidx/collection/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2217
    .local p1, "added":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    .line 2218
    return-void

    .line 2221
    :cond_6
    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2222
    .local v0, "state":I
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2223
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    iget v3, v2, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v3, v0, :cond_37

    .line 2224
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;I)V

    .line 2225
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_37

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v3, :cond_37

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v3, :cond_37

    .line 2226
    invoke-virtual {p1, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2229
    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_37
    goto :goto_15

    .line 2230
    :cond_38
    return-void
.end method

.method private cancelExitAnimation(Landroidx/fragment/app/Fragment;)V
    .registers 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1319
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 1320
    .local v0, "signals":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/core/os/CancellationSignal;>;"
    if-eqz v0, :cond_29

    .line 1321
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/os/CancellationSignal;

    .line 1322
    .local v2, "signal":Landroidx/core/os/CancellationSignal;
    invoke-virtual {v2}, Landroidx/core/os/CancellationSignal;->cancel()V

    .line 1323
    .end local v2    # "signal":Landroidx/core/os/CancellationSignal;
    goto :goto_e

    .line 1324
    :cond_1e
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1325
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->destroyFragmentView(Landroidx/fragment/app/Fragment;)V

    .line 1326
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    :cond_29
    return-void
.end method

.method private checkStateLoss()V
    .registers 3

    .line 1690
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1694
    return-void

    .line 1691
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cleanupExec()V
    .registers 2

    .line 1834
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 1835
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1836
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1837
    return-void
.end method

.method private completeShowHideFragment(Landroidx/fragment/app/Fragment;)V
    .registers 9
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1370
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_77

    .line 1371
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 1372
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    iget-boolean v4, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1371
    xor-int/2addr v4, v1

    invoke-static {v0, v3, p1, v4}, Landroidx/fragment/app/FragmentAnim;->loadAnimation(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v0

    .line 1373
    .local v0, "anim":Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    if-eqz v0, :cond_4d

    iget-object v3, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v3, :cond_4d

    .line 1374
    iget-object v3, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1375
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_42

    .line 1376
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1377
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    goto :goto_47

    .line 1379
    :cond_30
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1380
    .local v3, "container":Landroid/view/ViewGroup;
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1381
    .local v4, "animatingView":Landroid/view/View;
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1384
    iget-object v5, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v6, Landroidx/fragment/app/FragmentManager$5;

    invoke-direct {v6, p0, v3, v4, p1}, Landroidx/fragment/app/FragmentManager$5;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1394
    .end local v3    # "container":Landroid/view/ViewGroup;
    .end local v4    # "animatingView":Landroid/view/View;
    goto :goto_47

    .line 1396
    :cond_42
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1398
    :goto_47
    iget-object v3, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto :goto_77

    .line 1400
    :cond_4d
    if-eqz v0, :cond_5b

    .line 1401
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1402
    iget-object v3, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->start()V

    .line 1404
    :cond_5b
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_68

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-nez v3, :cond_68

    const/16 v3, 0x8

    goto :goto_69

    :cond_68
    const/4 v3, 0x0

    .line 1407
    .local v3, "visibility":I
    :goto_69
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1408
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 1409
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 1413
    .end local v0    # "anim":Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .end local v3    # "visibility":I
    :cond_77
    :goto_77
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_83

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1414
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1416
    :cond_83
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1417
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 1418
    return-void
.end method

.method private destroyFragmentView(Landroidx/fragment/app/Fragment;)V
    .registers 5
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1344
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 1345
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 1346
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1347
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1350
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 1351
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 1352
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 1353
    return-void
.end method

.method private dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V
    .registers 3
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 2763
    if-eqz p1, :cond_11

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2764
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    .line 2766
    :cond_11
    return-void
.end method

.method private dispatchStateChange(I)V
    .registers 5
    .param p1, "nextState"    # I

    .line 2623
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 2624
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/FragmentStore;->dispatchStateChange(I)V

    .line 2625
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_13

    .line 2627
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 2628
    nop

    .line 2629
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 2630
    return-void

    .line 2627
    :catchall_13
    move-exception v0

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 2628
    throw v0
.end method

.method private doPendingDeferredStart()V
    .registers 2

    .line 2285
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    if-eqz v0, :cond_a

    .line 2286
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    .line 2287
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->startPendingDeferredFragments()V

    .line 2289
    :cond_a
    return-void
.end method

.method public static enableDebugLogging(Z)V
    .registers 1
    .param p0, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    sput-boolean p0, Landroidx/fragment/app/FragmentManager;->DEBUG:Z

    .line 90
    return-void
.end method

.method private endAnimatingAwayFragments()V
    .registers 4

    .line 2248
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 2249
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2250
    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->cancelExitAnimation(Landroidx/fragment/app/Fragment;)V

    .line 2251
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;I)V

    .line 2252
    .end local v1    # "fragment":Landroidx/fragment/app/Fragment;
    goto :goto_12

    .line 2254
    :cond_29
    return-void
.end method

.method private ensureExecReady(Z)V
    .registers 4
    .param p1, "allowStateLoss"    # Z

    .line 1777
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    if-nez v0, :cond_5b

    .line 1781
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_1c

    .line 1782
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    if-eqz v0, :cond_14

    .line 1783
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1785
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager has not been attached to a host."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1789
    :cond_1c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_53

    .line 1793
    if-nez p1, :cond_31

    .line 1794
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->checkStateLoss()V

    .line 1797
    :cond_31
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_43

    .line 1798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    .line 1799
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    .line 1801
    :cond_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 1803
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_48
    invoke-direct {p0, v1, v1}, Landroidx/fragment/app/FragmentManager;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4f

    .line 1805
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 1806
    nop

    .line 1807
    return-void

    .line 1805
    :catchall_4f
    move-exception v1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 1806
    throw v1

    .line 1790
    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1778
    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 9
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 2158
    .local p0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p1, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_2d

    .line 2159
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    .line 2160
    .local v1, "record":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2161
    .local v2, "isPop":Z
    const/4 v3, 0x1

    if-eqz v2, :cond_24

    .line 2162
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2165
    add-int/lit8 v4, p3, -0x1

    if-ne v0, v4, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    .line 2166
    .local v3, "moveToState":Z
    :goto_20
    invoke-virtual {v1, v3}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    .line 2167
    .end local v3    # "moveToState":Z
    goto :goto_2a

    .line 2168
    :cond_24
    invoke-virtual {v1, v3}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2169
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    .line 2158
    .end local v1    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v2    # "isPop":Z
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2172
    .end local v0    # "i":I
    :cond_2d
    return-void
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 23
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 1967
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v12, v0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 1968
    .local v12, "allowReordering":Z
    const/4 v0, 0x0

    .line 1969
    .local v0, "addToBackStack":Z
    iget-object v1, v7, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v1, :cond_1f

    .line 1970
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    goto :goto_22

    .line 1972
    :cond_1f
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1974
    :goto_22
    iget-object v1, v7, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    iget-object v2, v7, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1975
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentManager;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 1976
    .local v1, "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    move/from16 v2, p3

    move v13, v0

    move-object v14, v1

    .end local v0    # "addToBackStack":Z
    .end local v1    # "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    .local v2, "recordNum":I
    .local v13, "addToBackStack":Z
    .local v14, "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    :goto_35
    const/4 v15, 0x1

    if-ge v2, v11, :cond_65

    .line 1977
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    .line 1978
    .local v0, "record":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1979
    .local v1, "isPop":Z
    if-nez v1, :cond_52

    .line 1980
    iget-object v3, v7, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v14}, Landroidx/fragment/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    move-object v14, v3

    .end local v14    # "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    .local v3, "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    goto :goto_59

    .line 1982
    .end local v3    # "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    .restart local v14    # "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    :cond_52
    iget-object v3, v7, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v14}, Landroidx/fragment/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    move-object v14, v3

    .line 1984
    :goto_59
    if-nez v13, :cond_61

    iget-boolean v3, v0, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v3, :cond_60

    goto :goto_61

    :cond_60
    const/4 v15, 0x0

    :cond_61
    :goto_61
    move v13, v15

    .line 1976
    .end local v0    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v1    # "isPop":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 1986
    .end local v2    # "recordNum":I
    :cond_65
    iget-object v0, v7, Landroidx/fragment/app/FragmentManager;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1988
    if-nez v12, :cond_7c

    .line 1989
    const/4 v5, 0x0

    iget-object v6, v7, Landroidx/fragment/app/FragmentManager;->mFragmentTransitionCallback:Landroidx/fragment/app/FragmentTransition$Callback;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v6}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/FragmentTransition$Callback;)V

    .line 1992
    :cond_7c
    invoke-static/range {p1 .. p4}, Landroidx/fragment/app/FragmentManager;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 1994
    move/from16 v6, p4

    .line 1995
    .local v6, "postponeIndex":I
    if-eqz v12, :cond_a1

    .line 1996
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    move-object v5, v0

    .line 1997
    .local v5, "addedFragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    invoke-direct {v7, v5}, Landroidx/fragment/app/FragmentManager;->addAddedFragments(Landroidx/collection/ArraySet;)V

    .line 1998
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v16, v5

    .end local v5    # "addedFragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    .local v16, "addedFragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/FragmentManager;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/collection/ArraySet;)I

    move-result v6

    .line 2000
    move-object/from16 v0, v16

    .end local v16    # "addedFragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    .local v0, "addedFragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    invoke-direct {v7, v0}, Landroidx/fragment/app/FragmentManager;->makeRemovedFragmentsInvisible(Landroidx/collection/ArraySet;)V

    .line 2003
    .end local v0    # "addedFragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    :cond_a1
    if-eq v6, v10, :cond_c0

    if-eqz v12, :cond_c0

    .line 2005
    const/4 v5, 0x1

    iget-object v4, v7, Landroidx/fragment/app/FragmentManager;->mFragmentTransitionCallback:Landroidx/fragment/app/FragmentTransition$Callback;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v16, v4

    move v4, v6

    move/from16 v17, v6

    .end local v6    # "postponeIndex":I
    .local v17, "postponeIndex":I
    move-object/from16 v6, v16

    invoke-static/range {v0 .. v6}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/FragmentTransition$Callback;)V

    .line 2007
    iget v0, v7, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v7, v0, v15}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    goto :goto_c2

    .line 2003
    .end local v17    # "postponeIndex":I
    .restart local v6    # "postponeIndex":I
    :cond_c0
    move/from16 v17, v6

    .line 2010
    .end local v6    # "postponeIndex":I
    .restart local v17    # "postponeIndex":I
    :goto_c2
    move/from16 v0, p3

    .local v0, "recordNum":I
    :goto_c4
    if-ge v0, v11, :cond_e5

    .line 2011
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    .line 2012
    .local v1, "record":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2013
    .local v2, "isPop":Z
    if-eqz v2, :cond_df

    iget v3, v1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v3, :cond_df

    .line 2014
    const/4 v3, -0x1

    iput v3, v1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 2016
    :cond_df
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->runOnCommitRunnables()V

    .line 2010
    .end local v1    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v2    # "isPop":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_c4

    .line 2018
    .end local v0    # "recordNum":I
    :cond_e5
    if-eqz v13, :cond_ea

    .line 2019
    invoke-direct/range {p0 .. p0}, Landroidx/fragment/app/FragmentManager;->reportBackStackChanged()V

    .line 2021
    :cond_ea
    return-void
.end method

.method private executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1869
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1870
    .local v0, "numPostponed":I
    :goto_b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_84

    .line 1871
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;

    .line 1872
    .local v3, "listener":Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;
    const/4 v4, -0x1

    if-eqz p1, :cond_40

    iget-boolean v5, v3, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mIsBack:Z

    if-nez v5, :cond_40

    .line 1873
    iget-object v5, v3, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1874
    .local v5, "index":I
    if-eq v5, v4, :cond_40

    if-eqz p2, :cond_40

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 1875
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1876
    add-int/lit8 v2, v2, -0x1

    .line 1877
    add-int/lit8 v0, v0, -0x1

    .line 1878
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->cancelTransaction()V

    .line 1879
    goto :goto_81

    .line 1882
    .end local v5    # "index":I
    :cond_40
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->isReady()Z

    move-result v5

    if-nez v5, :cond_54

    if-eqz p1, :cond_81

    iget-object v5, v3, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    .line 1883
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Landroidx/fragment/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 1884
    :cond_54
    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1885
    add-int/lit8 v2, v2, -0x1

    .line 1886
    add-int/lit8 v0, v0, -0x1

    .line 1888
    if-eqz p1, :cond_7e

    iget-boolean v5, v3, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mIsBack:Z

    if-nez v5, :cond_7e

    iget-object v5, v3, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    .line 1889
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    move v6, v5

    .local v6, "index":I
    if-eq v5, v4, :cond_7e

    if-eqz p2, :cond_7e

    .line 1891
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 1893
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_81

    .line 1895
    .end local v6    # "index":I
    :cond_7e
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->completeTransaction()V

    .line 1870
    .end local v3    # "listener":Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;
    :cond_81
    :goto_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1899
    .end local v2    # "i":I
    :cond_84
    return-void
.end method

.method public static findFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Landroid/view/View;",
            ")TF;"
        }
    .end annotation

    .line 793
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->findViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 794
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_7

    .line 797
    return-object v0

    .line 795
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have a Fragment set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static findFragmentManager(Landroid/view/View;)Landroidx/fragment/app/FragmentManager;
    .registers 7
    .param p0, "view"    # Landroid/view/View;

    .line 843
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->findViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 847
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_b

    .line 848
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .local v1, "fm":Landroidx/fragment/app/FragmentManager;
    goto :goto_2b

    .line 850
    .end local v1    # "fm":Landroidx/fragment/app/FragmentManager;
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 851
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 852
    .local v2, "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    :goto_10
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_24

    .line 853
    instance-of v3, v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v3, :cond_1c

    .line 854
    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    .line 855
    goto :goto_24

    .line 857
    :cond_1c
    move-object v3, v1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_10

    .line 859
    :cond_24
    :goto_24
    if-eqz v2, :cond_2c

    .line 860
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    move-object v1, v3

    .line 867
    .end local v2    # "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    .local v1, "fm":Landroidx/fragment/app/FragmentManager;
    :goto_2b
    return-object v1

    .line 862
    .local v1, "context":Landroid/content/Context;
    .restart local v2    # "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    :cond_2c
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not within a subclass of FragmentActivity."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4c

    :goto_4b
    throw v3

    :goto_4c
    goto :goto_4b
.end method

.method private static findViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .line 807
    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_17

    .line 808
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->getViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 809
    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_a

    .line 810
    return-object v1

    .line 812
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 813
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_15

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    :cond_15
    move-object p0, v0

    .line 814
    .end local v1    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v2    # "parent":Landroid/view/ViewParent;
    goto :goto_0

    .line 815
    :cond_17
    return-object v0
.end method

.method private forcePostponedTransactions()V
    .registers 3

    .line 2236
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 2237
    :goto_4
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2238
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_4

    .line 2241
    :cond_19
    return-void
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2268
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 2269
    .local v0, "didSomething":Z
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2270
    :try_start_4
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2271
    const/4 v2, 0x0

    monitor-exit v1

    return v2

    .line 2274
    :cond_f
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2275
    .local v2, "numActions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_28

    .line 2276
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentManager$OpGenerator;

    invoke-interface {v4, p1, p2}, Landroidx/fragment/app/FragmentManager$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 2275
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 2278
    .end local v3    # "i":I
    :cond_28
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2279
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2280
    .end local v2    # "numActions":I
    monitor-exit v1

    .line 2281
    return v0

    .line 2280
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_3a

    goto :goto_3e

    :goto_3d
    throw v2

    :goto_3e
    goto :goto_3d
.end method

.method private getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;
    .registers 3
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 894
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object v0

    return-object v0
.end method

.method private getFragmentContainer(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .registers 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 2193
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v1, 0x0

    if-gtz v0, :cond_6

    .line 2194
    return-object v1

    .line 2200
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2201
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    iget v2, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2203
    .local v0, "view":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1e

    .line 2204
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1

    .line 2207
    .end local v0    # "view":Landroid/view/View;
    :cond_1e
    return-object v1
.end method

.method static getViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 825
    sget v0, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 826
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_e

    .line 827
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    return-object v1

    .line 829
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method static isLoggingEnabled(I)Z
    .registers 2
    .param p0, "level"    # I

    .line 93
    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->DEBUG:Z

    if-nez v0, :cond_f

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private isMenuAvailable(Landroidx/fragment/app/Fragment;)Z
    .registers 3
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 2883
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-nez v0, :cond_10

    :cond_8
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->checkForMenus()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private makeInactive(Landroidx/fragment/app/FragmentStateManager;)V
    .registers 5
    .param p1, "fragmentStateManager"    # Landroidx/fragment/app/FragmentStateManager;

    .line 1548
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 1549
    .local v0, "f":Landroidx/fragment/app/Fragment;
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentStore;->containsActiveFragment(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1550
    return-void

    .line 1553
    :cond_f
    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed fragment from active set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_2e
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentStore;->makeInactive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 1558
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    .line 1559
    return-void
.end method

.method private makeRemovedFragmentsInvisible(Landroidx/collection/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2031
    .local p1, "fragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    invoke-virtual {p1}, Landroidx/collection/ArraySet;->size()I

    move-result v0

    .line 2032
    .local v0, "numAdded":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_22

    .line 2033
    invoke-virtual {p1, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2034
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v3, :cond_1f

    .line 2035
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v3

    .line 2036
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v2, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 2037
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2032
    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v3    # "view":Landroid/view/View;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2040
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .line 641
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 642
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->ensureExecReady(Z)V

    .line 644
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1b

    if-gez p2, :cond_1b

    if-nez p1, :cond_1b

    .line 647
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 648
    .local v1, "childManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 650
    return v0

    .line 654
    .end local v1    # "childManager":Landroidx/fragment/app/FragmentManager;
    :cond_1b
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Landroidx/fragment/app/FragmentManager;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v1

    .line 655
    .local v1, "executePop":Z
    if-eqz v1, :cond_3b

    .line 656
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 658
    :try_start_2b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Landroidx/fragment/app/FragmentManager;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_36

    .line 660
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    .line 661
    goto :goto_3b

    .line 660
    :catchall_36
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    .line 661
    throw v0

    .line 664
    :cond_3b
    :goto_3b
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 665
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->doPendingDeferredStart()V

    .line 666
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->burpActive()V

    .line 667
    return v1
.end method

.method private postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/collection/ArraySet;)I
    .registers 14
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroidx/collection/ArraySet<",
            "Landroidx/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation

    .line 2057
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local p5, "added":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    move v0, p4

    .line 2058
    .local v0, "postponeIndex":I
    add-int/lit8 v1, p4, -0x1

    .local v1, "i":I
    :goto_3
    if-lt v1, p3, :cond_5a

    .line 2059
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    .line 2060
    .local v2, "record":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2061
    .local v3, "isPop":Z
    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->isPostponed()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_26

    add-int/lit8 v4, v1, 0x1

    .line 2062
    invoke-virtual {v2, p1, v4, p4}, Landroidx/fragment/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_26

    const/4 v4, 0x1

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    .line 2063
    .local v4, "isPostponed":Z
    :goto_27
    if-eqz v4, :cond_57

    .line 2064
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v6, :cond_34

    .line 2065
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 2067
    :cond_34
    new-instance v6, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;

    invoke-direct {v6, v2, v3}, Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;-><init>(Landroidx/fragment/app/BackStackRecord;Z)V

    .line 2069
    .local v6, "listener":Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;
    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2070
    invoke-virtual {v2, v6}, Landroidx/fragment/app/BackStackRecord;->setOnStartPostponedListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    .line 2073
    if-eqz v3, :cond_47

    .line 2074
    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    goto :goto_4a

    .line 2076
    :cond_47
    invoke-virtual {v2, v5}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    .line 2080
    :goto_4a
    add-int/lit8 v0, v0, -0x1

    .line 2081
    if-eq v1, v0, :cond_54

    .line 2082
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2083
    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2087
    :cond_54
    invoke-direct {p0, p5}, Landroidx/fragment/app/FragmentManager;->addAddedFragments(Landroidx/collection/ArraySet;)V

    .line 2058
    .end local v2    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v3    # "isPop":Z
    .end local v4    # "isPostponed":Z
    .end local v6    # "listener":Landroidx/fragment/app/FragmentManager$StartEnterTransitionListener;
    :cond_57
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2090
    .end local v1    # "i":I
    :cond_5a
    return v0
.end method

.method private removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1917
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1918
    return-void

    .line 1921
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_63

    .line 1926
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/FragmentManager;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1928
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1929
    .local v0, "numRecords":I
    const/4 v1, 0x0

    .line 1930
    .local v1, "startIndex":I
    const/4 v2, 0x0

    .local v2, "recordNum":I
    :goto_1a
    if-ge v2, v0, :cond_5d

    .line 1931
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v3, v3, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 1932
    .local v3, "canReorder":Z
    if-nez v3, :cond_5a

    .line 1934
    if-eq v1, v2, :cond_2b

    .line 1935
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/fragment/app/FragmentManager;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 1939
    :cond_2b
    add-int/lit8 v4, v2, 0x1

    .line 1940
    .local v4, "reorderingEnd":I
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 1941
    :goto_39
    if-ge v4, v0, :cond_54

    .line 1942
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 1943
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v5, v5, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v5, :cond_54

    .line 1944
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 1947
    :cond_54
    invoke-direct {p0, p1, p2, v2, v4}, Landroidx/fragment/app/FragmentManager;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 1948
    move v1, v4

    .line 1949
    add-int/lit8 v2, v4, -0x1

    .line 1930
    .end local v3    # "canReorder":Z
    .end local v4    # "reorderingEnd":I
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1952
    .end local v2    # "recordNum":I
    :cond_5d
    if-eq v1, v0, :cond_62

    .line 1953
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/fragment/app/FragmentManager;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 1955
    :cond_62
    return-void

    .line 1922
    .end local v0    # "numRecords":I
    .end local v1    # "startIndex":I
    :cond_63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error with the back stack records"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6c

    :goto_6b
    throw v0

    :goto_6c
    goto :goto_6b
.end method

.method private reportBackStackChanged()V
    .registers 3

    .line 2292
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 2293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 2294
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 2293
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2297
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method static reverseTransit(I)I
    .registers 2
    .param p0, "transit"    # I

    .line 2887
    const/4 v0, 0x0

    .line 2888
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_10

    goto :goto_e

    .line 2893
    :sswitch_5
    const/16 v0, 0x1001

    .line 2894
    goto :goto_e

    .line 2896
    :sswitch_8
    const/16 v0, 0x1003

    goto :goto_e

    .line 2890
    :sswitch_b
    const/16 v0, 0x2002

    .line 2891
    nop

    .line 2899
    :goto_e
    return v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x1001 -> :sswitch_b
        0x1003 -> :sswitch_8
        0x2002 -> :sswitch_5
    .end sparse-switch
.end method

.method private setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 2181
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->getFragmentContainer(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 2182
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_22

    .line 2183
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    .line 2184
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 2186
    :cond_13
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2187
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 2189
    :cond_22
    return-void
.end method

.method private startPendingDeferredFragments()V
    .registers 3

    .line 1517
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 1518
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_1b

    .line 1519
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->performPendingDeferredStart(Landroidx/fragment/app/Fragment;)V

    .line 1521
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_1b
    goto :goto_a

    .line 1522
    :cond_1c
    return-void
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .registers 10
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .line 418
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v0, "Activity state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v0, Landroidx/core/util/LogWriter;

    invoke-direct {v0, v1}, Landroidx/core/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, "logw":Landroidx/core/util/LogWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 422
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    const-string v4, "Failed dumping state"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "  "

    if-eqz v3, :cond_2d

    .line 424
    :try_start_22
    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v7, v6, v2, v5}, Landroidx/fragment/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_2c

    .line 425
    :catch_28
    move-exception v3

    .line 426
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2c
    goto :goto_37

    .line 430
    :cond_2d
    :try_start_2d
    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {p0, v7, v6, v2, v3}, Landroidx/fragment/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_33

    .line 433
    goto :goto_37

    .line 431
    :catch_33
    move-exception v3

    .line 432
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_37
    throw p1
.end method

.method private updateOnBackPressedCallbackEnabled()V
    .registers 4

    .line 498
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v0

    .line 499
    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_13

    .line 500
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 501
    monitor-exit v0

    return-void

    .line 503
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2a

    .line 507
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_25

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 508
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    .line 507
    :goto_26
    invoke-virtual {v0, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 509
    return-void

    .line 503
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method


# virtual methods
.method addBackStackState(Landroidx/fragment/app/BackStackRecord;)V
    .registers 3
    .param p1, "state"    # Landroidx/fragment/app/BackStackRecord;

    .line 2300
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 2303
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2304
    return-void
.end method

.method addCancellationSignal(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .registers 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "signal"    # Landroidx/core/os/CancellationSignal;

    .line 710
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 711
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 714
    return-void
.end method

.method addFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1562
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :cond_1f
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->makeActive(Landroidx/fragment/app/Fragment;)V

    .line 1564
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v0, :cond_3d

    .line 1565
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 1566
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1567
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v1, :cond_34

    .line 1568
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1570
    :cond_34
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1571
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1574
    :cond_3d
    return-void
.end method

.method public addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    .line 690
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 693
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    return-void
.end method

.method addRetainedFragment(Landroidx/fragment/app/Fragment;)V
    .registers 6
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 898
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    if-eqz v0, :cond_15

    .line 899
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 900
    const-string v0, "Ignoring addRetainedFragment as the state is already saved"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_14
    return-void

    .line 904
    :cond_15
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->addRetainedFragment(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    .line 905
    .local v0, "added":Z
    if-eqz v0, :cond_39

    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating retained Fragments: Added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_39
    return-void
.end method

.method allocBackStackIndex()I
    .registers 2

    .line 1767
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method attachController(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V
    .registers 8
    .param p2, "container"    # Landroidx/fragment/app/FragmentContainer;
    .param p3, "parent"    # Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;",
            "Landroidx/fragment/app/FragmentContainer;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 2523
    .local p1, "host":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<*>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_4c

    .line 2524
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 2525
    iput-object p2, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 2526
    iput-object p3, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 2527
    if-eqz p3, :cond_f

    .line 2531
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 2534
    :cond_f
    instance-of v0, p1, Landroidx/activity/OnBackPressedDispatcherOwner;

    if-eqz v0, :cond_26

    .line 2535
    move-object v0, p1

    check-cast v0, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 2536
    .local v0, "dispatcherOwner":Landroidx/activity/OnBackPressedDispatcherOwner;
    invoke-interface {v0}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 2537
    if-eqz p3, :cond_20

    move-object v2, p3

    goto :goto_21

    :cond_20
    move-object v2, v0

    .line 2538
    .local v2, "owner":Landroidx/lifecycle/LifecycleOwner;
    :goto_21
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1, v2, v3}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 2542
    .end local v0    # "dispatcherOwner":Landroidx/activity/OnBackPressedDispatcherOwner;
    .end local v2    # "owner":Landroidx/lifecycle/LifecycleOwner;
    :cond_26
    if-eqz p3, :cond_31

    .line 2543
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {v0, p3}, Landroidx/fragment/app/FragmentManager;->getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    goto :goto_4b

    .line 2544
    :cond_31
    instance-of v0, p1, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_43

    .line 2545
    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    .line 2546
    .local v0, "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    invoke-static {v0}, Landroidx/fragment/app/FragmentManagerViewModel;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 2547
    .end local v0    # "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    goto :goto_4b

    .line 2548
    :cond_43
    new-instance v0, Landroidx/fragment/app/FragmentManagerViewModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManagerViewModel;-><init>(Z)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    .line 2550
    :goto_4b
    return-void

    .line 2523
    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method attachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 6
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1641
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    :cond_1f
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_54

    .line 1643
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 1644
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v1, :cond_54

    .line 1645
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentStore;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 1646
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :cond_4b
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1648
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1652
    :cond_54
    return-void
.end method

.method public beginTransaction()Landroidx/fragment/app/FragmentTransaction;
    .registers 2

    .line 464
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-object v0
.end method

.method checkForMenus()Z
    .registers 4

    .line 2870
    const/4 v0, 0x0

    .line 2871
    .local v0, "hasMenu":Z
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2872
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_1d

    .line 2873
    invoke-direct {p0, v2}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    .line 2875
    :cond_1d
    if-eqz v0, :cond_21

    .line 2876
    const/4 v1, 0x1

    return v1

    .line 2878
    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_21
    goto :goto_b

    .line 2879
    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method completeExecute(Landroidx/fragment/app/BackStackRecord;ZZZ)V
    .registers 15
    .param p1, "record"    # Landroidx/fragment/app/BackStackRecord;
    .param p2, "isPop"    # Z
    .param p3, "runTransitions"    # Z
    .param p4, "moveToState"    # Z

    .line 2111
    if-eqz p2, :cond_6

    .line 2112
    invoke-virtual {p1, p4}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_9

    .line 2114
    :cond_6
    invoke-virtual {p1}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    .line 2116
    :goto_9
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2117
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v2

    .line 2118
    .local v9, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2119
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2120
    if-eqz p3, :cond_2c

    .line 2121
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->mFragmentTransitionCallback:Landroidx/fragment/app/FragmentTransition$Callback;

    move-object v2, p0

    move-object v3, v0

    move-object v4, v9

    invoke-static/range {v2 .. v8}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/FragmentTransition$Callback;)V

    .line 2124
    :cond_2c
    if-eqz p4, :cond_33

    .line 2125
    iget v2, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    .line 2128
    :cond_33
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2131
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_75

    .line 2132
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_75

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v3, :cond_75

    iget v3, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 2133
    invoke-virtual {p1, v3}, Landroidx/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 2134
    iget v3, v2, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_69

    .line 2135
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v5, v2, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2137
    :cond_69
    if-eqz p4, :cond_6e

    .line 2138
    iput v4, v2, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    goto :goto_75

    .line 2140
    :cond_6e
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 2141
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 2145
    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_75
    :goto_75
    goto :goto_3d

    .line 2146
    :cond_76
    return-void
.end method

.method detachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 6
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1625
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :cond_1f
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_56

    .line 1627
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 1628
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_56

    .line 1630
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    :cond_46
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->removeFragment(Landroidx/fragment/app/Fragment;)V

    .line 1632
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1633
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1635
    :cond_53
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V

    .line 1638
    :cond_56
    return-void
.end method

.method dispatchActivityCreated()V
    .registers 2

    .line 2575
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 2576
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 2577
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 2578
    return-void
.end method

.method dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 2649
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2650
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_1b

    .line 2651
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2653
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_1b
    goto :goto_a

    .line 2654
    :cond_1c
    return-void
.end method

.method dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 2726
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    .line 2727
    return v1

    .line 2729
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 2730
    .local v3, "f":Landroidx/fragment/app/Fragment;
    if-eqz v3, :cond_26

    .line 2731
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 2732
    return v2

    .line 2735
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_26
    goto :goto_11

    .line 2736
    :cond_27
    return v1
.end method

.method dispatchCreate()V
    .registers 2

    .line 2569
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 2570
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 2571
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 2572
    return-void
.end method

.method dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 2665
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    .line 2666
    const/4 v0, 0x0

    return v0

    .line 2668
    :cond_7
    const/4 v0, 0x0

    .line 2669
    .local v0, "show":Z
    const/4 v1, 0x0

    .line 2670
    .local v1, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/Fragment;>;"
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 2671
    .local v3, "f":Landroidx/fragment/app/Fragment;
    if-eqz v3, :cond_33

    .line 2672
    invoke-virtual {v3, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2673
    const/4 v0, 0x1

    .line 2674
    if-nez v1, :cond_30

    .line 2675
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 2677
    :cond_30
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2680
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_33
    goto :goto_13

    .line 2682
    :cond_34
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v2, :cond_57

    .line 2683
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_39
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_57

    .line 2684
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 2685
    .restart local v3    # "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_51

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 2686
    :cond_51
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    .line 2683
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 2691
    .end local v2    # "i":I
    :cond_57
    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    .line 2693
    return v0
.end method

.method dispatchDestroy()V
    .registers 3

    .line 2606
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    .line 2607
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 2608
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->endAnimatingAwayFragments()V

    .line 2609
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 2610
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 2611
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 2612
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 2613
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_1f

    .line 2616
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->remove()V

    .line 2617
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 2619
    :cond_1f
    return-void
.end method

.method dispatchDestroyView()V
    .registers 2

    .line 2602
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 2603
    return-void
.end method

.method dispatchLowMemory()V
    .registers 3

    .line 2657
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2658
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_1b

    .line 2659
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    .line 2661
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_1b
    goto :goto_a

    .line 2662
    :cond_1c
    return-void
.end method

.method dispatchMultiWindowModeChanged(Z)V
    .registers 4
    .param p1, "isInMultiWindowMode"    # Z

    .line 2633
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2634
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_1b

    .line 2635
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 2637
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_1b
    goto :goto_a

    .line 2638
    :cond_1c
    return-void
.end method

.method dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 2712
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    .line 2713
    return v1

    .line 2715
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 2716
    .local v3, "f":Landroidx/fragment/app/Fragment;
    if-eqz v3, :cond_26

    .line 2717
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 2718
    return v2

    .line 2721
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_26
    goto :goto_11

    .line 2722
    :cond_27
    return v1
.end method

.method dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 2740
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    .line 2741
    return-void

    .line 2743
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2744
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_21

    .line 2745
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2747
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_21
    goto :goto_10

    .line 2748
    :cond_22
    return-void
.end method

.method dispatchPause()V
    .registers 2

    .line 2593
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 2594
    return-void
.end method

.method dispatchPictureInPictureModeChanged(Z)V
    .registers 4
    .param p1, "isInPictureInPictureMode"    # Z

    .line 2641
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2642
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_1b

    .line 2643
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 2645
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_1b
    goto :goto_a

    .line 2646
    :cond_1c
    return-void
.end method

.method dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .param p1, "menu"    # Landroid/view/Menu;

    .line 2697
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    .line 2698
    const/4 v0, 0x0

    return v0

    .line 2700
    :cond_7
    const/4 v0, 0x0

    .line 2701
    .local v0, "show":Z
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2702
    .local v2, "f":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_27

    .line 2703
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2704
    const/4 v0, 0x1

    .line 2707
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    :cond_27
    goto :goto_12

    .line 2708
    :cond_28
    return v0
.end method

.method dispatchPrimaryNavigationFragmentChanged()V
    .registers 2

    .line 2769
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 2771
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    .line 2772
    return-void
.end method

.method dispatchResume()V
    .registers 2

    .line 2587
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 2588
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 2589
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 2590
    return-void
.end method

.method dispatchStart()V
    .registers 2

    .line 2581
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 2582
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 2583
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 2584
    return-void
.end method

.method dispatchStop()V
    .registers 2

    .line 2597
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 2598
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    .line 2599
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentStore;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1025
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v1, :cond_4f

    .line 1026
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1027
    .local v1, "count":I
    if-lez v1, :cond_4f

    .line 1028
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Fragments Created Menus:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    if-ge v2, v1, :cond_4f

    .line 1030
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 1031
    .local v3, "f":Landroidx/fragment/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1032
    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1034
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 1040
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_4f
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    if-eqz v1, :cond_89

    .line 1041
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1042
    .restart local v1    # "count":I
    if-lez v1, :cond_89

    .line 1043
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Back Stack:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1044
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_62
    if-ge v2, v1, :cond_89

    .line 1045
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    .line 1046
    .local v3, "bs":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1049
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v3}, Landroidx/fragment/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {v3, v0, p3}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1044
    .end local v3    # "bs":Landroidx/fragment/app/BackStackRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 1056
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_89
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Back Stack Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1060
    :try_start_ab
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1061
    .local v2, "count":I
    if-lez v2, :cond_dc

    .line 1062
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Pending Actions:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_bc
    if-ge v3, v2, :cond_dc

    .line 1064
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentManager$OpGenerator;

    .line 1065
    .local v4, "r":Landroidx/fragment/app/FragmentManager$OpGenerator;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1068
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1063
    .end local v4    # "r":Landroidx/fragment/app/FragmentManager$OpGenerator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_bc

    .line 1072
    .end local v3    # "i":I
    :cond_dc
    monitor-exit v1
    :try_end_dd
    .catchall {:try_start_ab .. :try_end_dd} :catchall_14d

    .line 1074
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    const-string v1, "FragmentManager misc state:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    const-string v1, "  mHost="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1078
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1079
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1080
    const-string v1, "  mContainer="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1081
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1082
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_110

    .line 1083
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1084
    const-string v1, "  mParent="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1085
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1087
    :cond_110
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1088
    const-string v1, "  mCurState="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1089
    iget v1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1090
    const-string v1, " mStateSaved="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1092
    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1094
    const-string v1, " mDestroyed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1095
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1096
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    if-eqz v1, :cond_14c

    .line 1097
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1098
    const-string v1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1099
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1101
    :cond_14c
    return-void

    .line 1072
    .end local v2    # "count":I
    :catchall_14d
    move-exception v2

    :try_start_14e
    monitor-exit v1
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_14d

    goto :goto_151

    :goto_150
    throw v2

    :goto_151
    goto :goto_150
.end method

.method enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V
    .registers 6
    .param p1, "action"    # Landroidx/fragment/app/FragmentManager$OpGenerator;
    .param p2, "allowStateLoss"    # Z

    .line 1722
    if-nez p2, :cond_1d

    .line 1723
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_1a

    .line 1724
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    if-eqz v0, :cond_12

    .line 1725
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1727
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager has not been attached to a host."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1731
    :cond_1a
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->checkStateLoss()V

    .line 1733
    :cond_1d
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1734
    :try_start_20
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v1, :cond_30

    .line 1735
    if-eqz p2, :cond_28

    .line 1737
    monitor-exit v0

    return-void

    .line 1739
    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Activity has been destroyed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "action":Landroidx/fragment/app/FragmentManager$OpGenerator;
    .end local p2    # "allowStateLoss":Z
    throw v1

    .line 1741
    .restart local p1    # "action":Landroidx/fragment/app/FragmentManager$OpGenerator;
    .restart local p2    # "allowStateLoss":Z
    :cond_30
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1742
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->scheduleCommit()V

    .line 1743
    monitor-exit v0

    .line 1744
    return-void

    .line 1743
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method execPendingActions(Z)Z
    .registers 5
    .param p1, "allowStateLoss"    # Z

    .line 1843
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->ensureExecReady(Z)V

    .line 1845
    const/4 v0, 0x0

    .line 1846
    .local v0, "didSomething":Z
    :goto_4
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroidx/fragment/app/FragmentManager;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1847
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 1849
    :try_start_11
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroidx/fragment/app/FragmentManager;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1e

    .line 1851
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    .line 1852
    nop

    .line 1853
    const/4 v0, 0x1

    goto :goto_4

    .line 1851
    :catchall_1e
    move-exception v1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    .line 1852
    throw v1

    .line 1856
    :cond_23
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 1857
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->doPendingDeferredStart()V

    .line 1858
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->burpActive()V

    .line 1860
    return v0
.end method

.method execSingleAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V
    .registers 5
    .param p1, "action"    # Landroidx/fragment/app/FragmentManager$OpGenerator;
    .param p2, "allowStateLoss"    # Z

    .line 1810
    if-eqz p2, :cond_b

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    if-eqz v0, :cond_b

    .line 1812
    :cond_a
    return-void

    .line 1814
    :cond_b
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentManager;->ensureExecReady(Z)V

    .line 1815
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Landroidx/fragment/app/FragmentManager$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1816
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    .line 1818
    :try_start_1b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_26

    .line 1820
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    .line 1821
    goto :goto_2b

    .line 1820
    :catchall_26
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->cleanupExec()V

    .line 1821
    throw v0

    .line 1824
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 1825
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->doPendingDeferredStart()V

    .line 1826
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->burpActive()V

    .line 1827
    return-void
.end method

.method public executePendingTransactions()Z
    .registers 2

    .line 489
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    move-result v0

    .line 490
    .local v0, "updates":Z
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->forcePostponedTransactions()V

    .line 491
    return v0
.end method

.method findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3
    .param p1, "who"    # Ljava/lang/String;

    .line 1686
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public findFragmentById(I)Landroidx/fragment/app/Fragment;
    .registers 3
    .param p1, "id"    # I

    .line 1664
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 1677
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3
    .param p1, "who"    # Ljava/lang/String;

    .line 1681
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method getActiveFragmentCount()I
    .registers 2

    .line 940
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragmentCount()I

    move-result v0

    return v0
.end method

.method getActiveFragments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 931
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;
    .registers 3
    .param p1, "index"    # I

    .line 683
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .registers 2

    .line 674
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .line 766
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "who":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 768
    const/4 v1, 0x0

    return-object v1

    .line 770
    :cond_8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 771
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-nez v1, :cond_33

    .line 772
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unique id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 775
    :cond_33
    return-object v1
.end method

.method public getFragmentFactory()Landroidx/fragment/app/FragmentFactory;
    .registers 2

    .line 2825
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    if-eqz v0, :cond_5

    .line 2826
    return-object v0

    .line 2828
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_10

    .line 2833
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v0

    return-object v0

    .line 2835
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHostFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    return-object v0
.end method

.method public getFragments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .registers 2

    .line 2905
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    return-object v0
.end method

.method getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;
    .registers 2

    .line 2840
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    return-object v0
.end method

.method getParent()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 2518
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 2788
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method getViewModelStore(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;
    .registers 3
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 889
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->getViewModelStore(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0
.end method

.method handleOnBackPressed()V
    .registers 2

    .line 538
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 539
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 541
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_15

    .line 549
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 551
    :goto_15
    return-void
.end method

.method hideFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1598
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_1f
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_2e

    .line 1600
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1603
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1604
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V

    .line 1606
    :cond_2e
    return-void
.end method

.method public isDestroyed()Z
    .registers 2

    .line 981
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    return v0
.end method

.method isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z
    .registers 6
    .param p1, "parent"    # Landroidx/fragment/app/Fragment;

    .line 519
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 520
    return v0

    .line 522
    :cond_4
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 523
    .local v1, "parentFragmentManager":Landroidx/fragment/app/FragmentManager;
    nop

    .line 524
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 528
    .local v2, "primaryNavigationFragment":Landroidx/fragment/app/Fragment;
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, v1, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    .line 529
    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentManager;->isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 528
    :goto_1b
    return v0
.end method

.method isStateAtLeast(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 1116
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-lt v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isStateSaved()Z
    .registers 2

    .line 1711
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method makeActive(Landroidx/fragment/app/Fragment;)V
    .registers 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1525
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->containsActiveFragment(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1526
    return-void

    .line 1529
    :cond_b
    new-instance v0, Landroidx/fragment/app/FragmentStateManager;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/Fragment;)V

    .line 1532
    .local v0, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStateManager;->restoreState(Ljava/lang/ClassLoader;)V

    .line 1533
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentStore;->makeActive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 1534
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    if-eqz v1, :cond_36

    .line 1535
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    if-eqz v1, :cond_30

    .line 1536
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->addRetainedFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_33

    .line 1538
    :cond_30
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    .line 1540
    :goto_33
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    .line 1543
    :cond_36
    iget v1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStateManager;->setFragmentManagerState(I)V

    .line 1544
    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added fragment to active set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_5a
    return-void
.end method

.method moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V
    .registers 8
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1427
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->containsActiveFragment(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 1428
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring moving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "since it is not added to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_3f
    return-void

    .line 1434
    :cond_40
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;)V

    .line 1436
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_a9

    .line 1438
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentStore;->findFragmentUnder(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 1439
    .local v0, "underFragment":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_67

    .line 1440
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1442
    .local v1, "underView":Landroid/view/View;
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1443
    .local v2, "container":Landroid/view/ViewGroup;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 1444
    .local v3, "underIndex":I
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 1445
    .local v4, "viewIndex":I
    if-ge v4, v3, :cond_67

    .line 1446
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1447
    iget-object v5, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1450
    .end local v1    # "underView":Landroid/view/View;
    .end local v2    # "container":Landroid/view/ViewGroup;
    .end local v3    # "underIndex":I
    .end local v4    # "viewIndex":I
    :cond_67
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v1, :cond_a9

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_a9

    .line 1452
    iget v1, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7d

    .line 1453
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v3, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1455
    :cond_7d
    iput v2, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 1456
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 1458
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 1459
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    const/4 v3, 0x1

    .line 1458
    invoke-static {v1, v2, p1, v3}, Landroidx/fragment/app/FragmentAnim;->loadAnimation(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v1

    .line 1460
    .local v1, "anim":Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    if-eqz v1, :cond_a9

    .line 1461
    iget-object v2, v1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_9d

    .line 1462
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_a9

    .line 1464
    :cond_9d
    iget-object v2, v1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1465
    iget-object v2, v1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 1470
    .end local v0    # "underFragment":Landroidx/fragment/app/Fragment;
    .end local v1    # "anim":Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    :cond_a9
    :goto_a9
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_b0

    .line 1471
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->completeShowHideFragment(Landroidx/fragment/app/Fragment;)V

    .line 1473
    :cond_b0
    return-void
.end method

.method moveToState(IZ)V
    .registers 6
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    .line 1485
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_10

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    goto :goto_10

    .line 1486
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1489
    :cond_10
    :goto_10
    if-nez p2, :cond_17

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    if-ne p1, v0, :cond_17

    .line 1490
    return-void

    .line 1493
    :cond_17
    iput p1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    .line 1496
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 1497
    .local v1, "f":Landroidx/fragment/app/Fragment;
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    .line 1498
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    goto :goto_23

    .line 1502
    :cond_33
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 1503
    .restart local v1    # "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_52

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-nez v2, :cond_52

    .line 1504
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    .line 1506
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_52
    goto :goto_3d

    .line 1508
    :cond_53
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->startPendingDeferredFragments()V

    .line 1510
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    if-eqz v0, :cond_69

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_69

    iget v1, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_69

    .line 1511
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1512
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1514
    :cond_69
    return-void
.end method

.method moveToState(Landroidx/fragment/app/Fragment;)V
    .registers 3
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1356
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;I)V

    .line 1357
    return-void
.end method

.method moveToState(Landroidx/fragment/app/Fragment;I)V
    .registers 14
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "newState"    # I

    .line 1120
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v0

    .line 1121
    .local v0, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    const/4 v1, 0x1

    if-nez v0, :cond_16

    .line 1126
    new-instance v2, Landroidx/fragment/app/FragmentStateManager;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    invoke-direct {v2, v3, p1}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/Fragment;)V

    move-object v0, v2

    .line 1128
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStateManager;->setFragmentManagerState(I)V

    .line 1130
    :cond_16
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->computeMaxState()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1131
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v3, 0x2

    const-string v4, "FragmentManager"

    const/4 v5, -0x1

    const/4 v6, 0x3

    if-gt v2, p2, :cond_112

    .line 1133
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v2, p2, :cond_36

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 1137
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->cancelExitAnimation(Landroidx/fragment/app/Fragment;)V

    .line 1139
    :cond_36
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    packed-switch v2, :pswitch_data_244

    goto/16 :goto_110

    .line 1141
    :pswitch_3d
    if-le p2, v5, :cond_ef

    .line 1142
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveto ATTACHED: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_5b
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    const-string v7, " that does not belong to this FragmentManager!"

    const-string v8, " declared target fragment "

    const-string v9, "Fragment "

    if-eqz v2, :cond_af

    .line 1147
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object v10, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v10}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 1152
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget v2, v2, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v2, v1, :cond_80

    .line 1153
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;I)V

    .line 1155
    :cond_80
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v2, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 1156
    const/4 v2, 0x0

    iput-object v2, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    goto :goto_af

    .line 1148
    :cond_8a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1158
    :cond_af
    :goto_af
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v2, :cond_e8

    .line 1159
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 1160
    .local v2, "target":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_c3

    .line 1165
    iget v7, v2, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v7, v1, :cond_e8

    .line 1166
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;I)V

    goto :goto_e8

    .line 1161
    :cond_c3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1170
    .end local v2    # "target":Landroidx/fragment/app/Fragment;
    :cond_e8
    :goto_e8
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2, p0, v7}, Landroidx/fragment/app/FragmentStateManager;->attach(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 1174
    :cond_ef
    :pswitch_ef
    if-lez p2, :cond_f4

    .line 1175
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->create()V

    .line 1182
    :cond_f4
    :pswitch_f4
    if-le p2, v5, :cond_f9

    .line 1183
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->ensureInflatedView()V

    .line 1186
    :cond_f9
    if-le p2, v1, :cond_106

    .line 1187
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStateManager;->createView(Landroidx/fragment/app/FragmentContainer;)V

    .line 1188
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->activityCreated()V

    .line 1189
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->restoreViewState()V

    .line 1193
    :cond_106
    :pswitch_106
    if-le p2, v3, :cond_10b

    .line 1194
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->start()V

    .line 1198
    :cond_10b
    :pswitch_10b
    if-le p2, v6, :cond_110

    .line 1199
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->resume()V

    :cond_110
    :goto_110
    goto/16 :goto_20b

    .line 1202
    :cond_112
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-le v2, p2, :cond_20b

    .line 1203
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_252

    goto/16 :goto_20b

    .line 1205
    :pswitch_11e
    const/4 v2, 0x4

    if-ge p2, v2, :cond_124

    .line 1206
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->pause()V

    .line 1210
    :cond_124
    :pswitch_124
    if-ge p2, v6, :cond_129

    .line 1211
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->stop()V

    .line 1215
    :cond_129
    :pswitch_129
    if-ge p2, v3, :cond_1bf

    .line 1216
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_147

    .line 1217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_147
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_15a

    .line 1222
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_15a

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v2, :cond_15a

    .line 1223
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->saveViewState()V

    .line 1226
    :cond_15a
    const/4 v2, 0x0

    .line 1227
    .local v2, "anim":Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_1b0

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1b0

    .line 1229
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v8, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1230
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 1232
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemovingParent()Z

    move-result v3

    if-nez v3, :cond_1b0

    .line 1233
    iget v3, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    const/4 v8, 0x0

    if-le v3, v5, :cond_198

    iget-boolean v3, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    if-nez v3, :cond_198

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1234
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_198

    iget v3, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_198

    .line 1236
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-static {v3, v5, p1, v7}, Landroidx/fragment/app/FragmentAnim;->loadAnimation(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v2

    .line 1239
    :cond_198
    iput v8, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 1243
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1244
    .local v3, "container":Landroid/view/ViewGroup;
    iget-object v5, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1245
    .local v5, "view":Landroid/view/View;
    if-eqz v2, :cond_1a8

    .line 1246
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    .line 1247
    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->mFragmentTransitionCallback:Landroidx/fragment/app/FragmentTransition$Callback;

    invoke-static {p1, v2, v8}, Landroidx/fragment/app/FragmentAnim;->animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;Landroidx/fragment/app/FragmentTransition$Callback;)V

    .line 1250
    :cond_1a8
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1256
    iget-object v8, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eq v3, v8, :cond_1b0

    .line 1257
    return-void

    .line 1263
    .end local v3    # "container":Landroid/view/ViewGroup;
    .end local v5    # "view":Landroid/view/View;
    :cond_1b0
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1bc

    .line 1264
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->destroyFragmentView(Landroidx/fragment/app/Fragment;)V

    goto :goto_1bf

    .line 1266
    :cond_1bc
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    .line 1271
    .end local v2    # "anim":Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    :cond_1bf
    :goto_1bf
    :pswitch_1bf
    if-ge p2, v1, :cond_204

    .line 1272
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v2, :cond_1cc

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v2

    if-nez v2, :cond_1cc

    goto :goto_1cd

    :cond_1cc
    const/4 v1, 0x0

    .line 1273
    .local v1, "beingRemoved":Z
    :goto_1cd
    if-nez v1, :cond_1ed

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->shouldDestroy(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_1d8

    goto :goto_1ed

    .line 1276
    :cond_1d8
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v2, :cond_1f0

    .line 1277
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 1278
    .local v2, "target":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_1f0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getRetainInstance()Z

    move-result v3

    if-eqz v3, :cond_1f0

    .line 1282
    iput-object v2, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    goto :goto_1f0

    .line 1274
    .end local v2    # "target":Landroidx/fragment/app/Fragment;
    :cond_1ed
    :goto_1ed
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->makeInactive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 1286
    :cond_1f0
    :goto_1f0
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1fd

    .line 1293
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    .line 1294
    const/4 p2, 0x1

    goto :goto_204

    .line 1296
    :cond_1fd
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/FragmentStateManager;->destroy(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentManagerViewModel;)V

    .line 1301
    .end local v1    # "beingRemoved":Z
    :cond_204
    :goto_204
    :pswitch_204
    if-gez p2, :cond_20b

    .line 1302
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStateManager;->detach(Landroidx/fragment/app/FragmentManagerViewModel;)V

    .line 1307
    :cond_20b
    :goto_20b
    iget v1, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v1, p2, :cond_243

    .line 1308
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_241

    .line 1309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToState: Fragment state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not updated inline; expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_241
    iput p2, p1, Landroidx/fragment/app/Fragment;->mState:I

    .line 1314
    :cond_243
    return-void

    :pswitch_data_244
    .packed-switch -0x1
        :pswitch_3d
        :pswitch_ef
        :pswitch_f4
        :pswitch_106
        :pswitch_10b
    .end packed-switch

    :pswitch_data_252
    .packed-switch 0x0
        :pswitch_204
        :pswitch_1bf
        :pswitch_129
        :pswitch_124
        :pswitch_11e
    .end packed-switch
.end method

.method noteStateNotSaved()V
    .registers 3

    .line 2556
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_5

    .line 2557
    return-void

    .line 2559
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 2560
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    .line 2561
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2562
    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_25

    .line 2563
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    .line 2565
    .end local v1    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_25
    goto :goto_14

    .line 2566
    :cond_26
    return-void
.end method

.method public openTransaction()Landroidx/fragment/app/FragmentTransaction;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 446
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method performPendingDeferredStart(Landroidx/fragment/app/Fragment;)V
    .registers 3
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1104
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_14

    .line 1105
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mExecutingActions:Z

    if-eqz v0, :cond_c

    .line 1107
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mHavePendingDeferredStart:Z

    .line 1108
    return-void

    .line 1110
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 1111
    iget v0, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;I)V

    .line 1113
    :cond_14
    return-void
.end method

.method public popBackStack()V
    .registers 5

    .line 559
    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 560
    return-void
.end method

.method public popBackStack(II)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 614
    if-ltz p1, :cond_d

    .line 617
    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 618
    return-void

    .line 615
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 586
    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1, p2}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 587
    return-void
.end method

.method public popBackStackImmediate()Z
    .registers 4

    .line 569
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .registers 6
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 627
    if-ltz p1, :cond_8

    .line 630
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 628
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 596
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .registers 11
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 2309
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2310
    return v1

    .line 2312
    :cond_6
    const/4 v2, 0x1

    if-nez p3, :cond_29

    if-gez p4, :cond_29

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_29

    .line 2313
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .line 2314
    .local v0, "last":I
    if-gez v0, :cond_17

    .line 2315
    return v1

    .line 2317
    :cond_17
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2318
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2319
    .end local v0    # "last":I
    goto/16 :goto_a4

    .line 2320
    :cond_29
    const/4 v3, -0x1

    .line 2321
    .local v3, "index":I
    if-nez p3, :cond_2e

    if-ltz p4, :cond_7e

    .line 2324
    :cond_2e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v3, v0

    .line 2325
    :goto_34
    if-ltz v3, :cond_56

    .line 2326
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    .line 2327
    .local v0, "bss":Landroidx/fragment/app/BackStackRecord;
    if-eqz p3, :cond_4b

    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 2328
    goto :goto_56

    .line 2330
    :cond_4b
    if-ltz p4, :cond_52

    iget v4, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ne p4, v4, :cond_52

    .line 2331
    goto :goto_56

    .line 2333
    :cond_52
    nop

    .end local v0    # "bss":Landroidx/fragment/app/BackStackRecord;
    add-int/lit8 v3, v3, -0x1

    .line 2334
    goto :goto_34

    .line 2335
    :cond_56
    :goto_56
    if-gez v3, :cond_59

    .line 2336
    return v1

    .line 2338
    :cond_59
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_7e

    .line 2339
    add-int/lit8 v3, v3, -0x1

    .line 2341
    :goto_5f
    if-ltz v3, :cond_7e

    .line 2342
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    .line 2343
    .restart local v0    # "bss":Landroidx/fragment/app/BackStackRecord;
    if-eqz p3, :cond_75

    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    :cond_75
    if-ltz p4, :cond_7e

    iget v4, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ne p4, v4, :cond_7e

    .line 2345
    :cond_7b
    add-int/lit8 v3, v3, -0x1

    .line 2346
    goto :goto_5f

    .line 2352
    .end local v0    # "bss":Landroidx/fragment/app/BackStackRecord;
    :cond_7e
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne v3, v0, :cond_88

    .line 2353
    return v1

    .line 2355
    :cond_88
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_8f
    if-le v0, v3, :cond_a4

    .line 2356
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2357
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2355
    add-int/lit8 v0, v0, -0x1

    goto :goto_8f

    .line 2360
    .end local v0    # "i":I
    .end local v3    # "index":I
    :cond_a4
    :goto_a4
    return v2
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .registers 7
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 748
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eq v0, p0, :cond_25

    .line 749
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 752
    :cond_25
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method public registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .registers 4
    .param p1, "cb"    # Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
    .param p2, "recursive"    # Z

    .line 2853
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 2854
    return-void
.end method

.method removeCancellationSignal(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .registers 6
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "signal"    # Landroidx/core/os/CancellationSignal;

    .line 724
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 725
    .local v0, "signals":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/core/os/CancellationSignal;>;"
    if-eqz v0, :cond_2a

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 726
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mExitAnimationCancellationSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    iget v1, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2a

    .line 730
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->destroyFragmentView(Landroidx/fragment/app/Fragment;)V

    .line 731
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;I)V

    .line 734
    :cond_2a
    return-void
.end method

.method removeFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1577
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :cond_2b
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1581
    .local v0, "inactive":Z
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_37

    if-eqz v0, :cond_49

    .line 1582
    :cond_37
    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/FragmentStore;->removeFragment(Landroidx/fragment/app/Fragment;)V

    .line 1583
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->isMenuAvailable(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1584
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mNeedMenuInvalidate:Z

    .line 1586
    :cond_44
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1587
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->setVisibleRemovingFragment(Landroidx/fragment/app/Fragment;)V

    .line 1589
    :cond_49
    return-void
.end method

.method public removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    .line 701
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 702
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 704
    :cond_7
    return-void
.end method

.method removeRetainedFragment(Landroidx/fragment/app/Fragment;)V
    .registers 6
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 911
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    if-eqz v0, :cond_15

    .line 912
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 913
    const-string v0, "Ignoring removeRetainedFragment as the state is already saved"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_14
    return-void

    .line 917
    :cond_15
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    .line 918
    .local v0, "removed":Z
    if-eqz v0, :cond_39

    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating retained Fragments: Removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_39
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "nonConfig"    # Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 2424
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_10

    .line 2425
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must use restoreSaveState when your FragmentHostCallback implements ViewModelStoreOwner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 2428
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentManagerViewModel;->restoreFromSnapshot(Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 2429
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->restoreSaveState(Landroid/os/Parcelable;)V

    .line 2430
    return-void
.end method

.method restoreSaveState(Landroid/os/Parcelable;)V
    .registers 13
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2434
    if-nez p1, :cond_3

    return-void

    .line 2435
    :cond_3
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentManagerState;

    .line 2436
    .local v0, "fms":Landroidx/fragment/app/FragmentManagerState;
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    if-nez v1, :cond_b

    return-void

    .line 2440
    :cond_b
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->resetActiveFragments()V

    .line 2441
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "): "

    const/4 v4, 0x2

    const-string v5, "FragmentManager"

    if-eqz v2, :cond_b1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentState;

    .line 2442
    .local v2, "fs":Landroidx/fragment/app/FragmentState;
    if-eqz v2, :cond_af

    .line 2444
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    iget-object v7, v2, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentManagerViewModel;->findRetainedFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v6

    .line 2445
    .local v6, "retainedFragment":Landroidx/fragment/app/Fragment;
    if-eqz v6, :cond_57

    .line 2446
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 2447
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreSaveState: re-attaching retained "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    :cond_4f
    new-instance v7, Landroidx/fragment/app/FragmentStateManager;

    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    invoke-direct {v7, v8, v6, v2}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentState;)V

    .local v7, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    goto :goto_6c

    .line 2453
    .end local v7    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :cond_57
    new-instance v7, Landroidx/fragment/app/FragmentStateManager;

    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v9, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 2454
    invoke-virtual {v9}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10, v2}, Landroidx/fragment/app/FragmentStateManager;-><init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Ljava/lang/ClassLoader;Landroidx/fragment/app/FragmentFactory;Landroidx/fragment/app/FragmentState;)V

    .line 2456
    .restart local v7    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :goto_6c
    invoke-virtual {v7}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v8

    .line 2457
    .local v8, "f":Landroidx/fragment/app/Fragment;
    iput-object p0, v8, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 2458
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 2459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreSaveState: active ("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, v8, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    :cond_98
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroidx/fragment/app/FragmentStateManager;->restoreState(Ljava/lang/ClassLoader;)V

    .line 2462
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v3, v7}, Landroidx/fragment/app/FragmentStore;->makeActive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 2466
    iget v3, p0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v7, v3}, Landroidx/fragment/app/FragmentStateManager;->setFragmentManagerState(I)V

    .line 2468
    .end local v2    # "fs":Landroidx/fragment/app/FragmentState;
    .end local v6    # "retainedFragment":Landroidx/fragment/app/Fragment;
    .end local v7    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    .end local v8    # "f":Landroidx/fragment/app/Fragment;
    :cond_af
    goto/16 :goto_16

    .line 2472
    :cond_b1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerViewModel;->getRetainedFragments()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_104

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2473
    .local v2, "f":Landroidx/fragment/app/Fragment;
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v7, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentStore;->containsActiveFragment(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_103

    .line 2474
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_f9

    .line 2475
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discarding retained Fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was not found in the set of active Fragments "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    :cond_f9
    const/4 v6, 0x1

    invoke-virtual {p0, v2, v6}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;I)V

    .line 2482
    iput-boolean v6, v2, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 2483
    const/4 v6, -0x1

    invoke-virtual {p0, v2, v6}, Landroidx/fragment/app/FragmentManager;->moveToState(Landroidx/fragment/app/Fragment;I)V

    .line 2485
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    :cond_103
    goto :goto_bb

    .line 2488
    :cond_104
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v2, v0, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentStore;->restoreAddedFragments(Ljava/util/List;)V

    .line 2491
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    if-eqz v1, :cond_173

    .line 2492
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 2493
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11a
    iget-object v2, v0, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    array-length v2, v2

    if-ge v1, v2, :cond_172

    .line 2494
    iget-object v2, v0, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Landroidx/fragment/app/BackStackState;->instantiate(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v2

    .line 2495
    .local v2, "bse":Landroidx/fragment/app/BackStackRecord;
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_16a

    .line 2496
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: back stack #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    new-instance v6, Landroidx/core/util/LogWriter;

    invoke-direct {v6, v5}, Landroidx/core/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 2499
    .local v6, "logw":Landroidx/core/util/LogWriter;
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2500
    .local v7, "pw":Ljava/io/PrintWriter;
    const/4 v8, 0x0

    const-string v9, "  "

    invoke-virtual {v2, v9, v7, v8}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2501
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 2503
    .end local v6    # "logw":Landroidx/core/util/LogWriter;
    .end local v7    # "pw":Ljava/io/PrintWriter;
    :cond_16a
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2493
    .end local v2    # "bse":Landroidx/fragment/app/BackStackRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11a

    .end local v1    # "i":I
    :cond_172
    goto :goto_176

    .line 2506
    :cond_173
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 2508
    :goto_176
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, v0, Landroidx/fragment/app/FragmentManagerState;->mBackStackIndex:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2510
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    if-eqz v1, :cond_18c

    .line 2511
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 2512
    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    .line 2514
    :cond_18c
    return-void
.end method

.method retainNonConfig()Landroidx/fragment/app/FragmentManagerNonConfig;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2369
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    instance-of v0, v0, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_10

    .line 2370
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use retainNonConfig when your FragmentHostCallback implements ViewModelStoreOwner."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 2373
    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerViewModel;->getSnapshot()Landroidx/fragment/app/FragmentManagerNonConfig;

    move-result-object v0

    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .registers 10

    .line 2379
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->forcePostponedTransactions()V

    .line 2380
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->endAnimatingAwayFragments()V

    .line 2381
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 2383
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    .line 2386
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->saveActiveFragments()Ljava/util/ArrayList;

    move-result-object v0

    .line 2388
    .local v0, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/FragmentState;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v2, "FragmentManager"

    const/4 v3, 0x2

    if-eqz v1, :cond_28

    .line 2389
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    :cond_26
    const/4 v1, 0x0

    return-object v1

    .line 2394
    :cond_28
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->saveAddedFragments()Ljava/util/ArrayList;

    move-result-object v1

    .line 2397
    .local v1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2398
    .local v4, "backStack":[Landroidx/fragment/app/BackStackState;
    iget-object v5, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    if-eqz v5, :cond_7c

    .line 2399
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2400
    .local v5, "size":I
    if-lez v5, :cond_7c

    .line 2401
    new-array v4, v5, [Landroidx/fragment/app/BackStackState;

    .line 2402
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3c
    if-ge v6, v5, :cond_7c

    .line 2403
    new-instance v7, Landroidx/fragment/app/BackStackState;

    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v7, v8}, Landroidx/fragment/app/BackStackState;-><init>(Landroidx/fragment/app/BackStackRecord;)V

    aput-object v7, v4, v6

    .line 2404
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 2405
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveAllState: adding back stack #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 2406
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2405
    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    :cond_79
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 2412
    .end local v5    # "size":I
    .end local v6    # "i":I
    :cond_7c
    new-instance v2, Landroidx/fragment/app/FragmentManagerState;

    invoke-direct {v2}, Landroidx/fragment/app/FragmentManagerState;-><init>()V

    .line 2413
    .local v2, "fms":Landroidx/fragment/app/FragmentManagerState;
    iput-object v0, v2, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    .line 2414
    iput-object v1, v2, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    .line 2415
    iput-object v4, v2, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    .line 2416
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mBackStackIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iput v3, v2, Landroidx/fragment/app/FragmentManagerState;->mBackStackIndex:I

    .line 2417
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_97

    .line 2418
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    .line 2420
    :cond_97
    return-object v2
.end method

.method public saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;
    .registers 6
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 967
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v0

    .line 969
    .local v0, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 970
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not currently in the FragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/RuntimeException;)V

    .line 973
    :cond_35
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->saveInstanceState()Landroidx/fragment/app/Fragment$SavedState;

    move-result-object v1

    return-object v1
.end method

.method scheduleCommit()V
    .registers 6

    .line 1754
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1755
    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    .line 1756
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 1757
    .local v1, "postponeReady":Z
    :goto_12
    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_1b

    const/4 v2, 0x1

    .line 1758
    .local v2, "pendingReady":Z
    :cond_1b
    if-nez v1, :cond_1f

    if-eqz v2, :cond_38

    .line 1759
    :cond_1f
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1760
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1761
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->updateOnBackPressedCallbackEnabled()V

    .line 1763
    .end local v1    # "postponeReady":Z
    .end local v2    # "pendingReady":Z
    :cond_38
    monitor-exit v0

    .line 1764
    return-void

    .line 1763
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V
    .registers 6
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "isPop"    # Z

    .line 1335
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->getFragmentContainer(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1336
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_12

    .line 1337
    instance-of v1, v0, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v1, :cond_12

    .line 1338
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentContainerView;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    .line 1341
    :cond_12
    return-void
.end method

.method public setFragmentFactory(Landroidx/fragment/app/FragmentFactory;)V
    .registers 2
    .param p1, "fragmentFactory"    # Landroidx/fragment/app/FragmentFactory;

    .line 2811
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    .line 2812
    return-void
.end method

.method setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V
    .registers 6
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 2792
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_14

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, p0, :cond_17

    .line 2797
    :cond_14
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 2798
    return-void

    .line 2794
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 2751
    if-eqz p1, :cond_3a

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_3a

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, p0, :cond_17

    goto :goto_3a

    .line 2753
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2756
    :cond_3a
    :goto_3a
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 2757
    .local v0, "previousPrimaryNav":Landroidx/fragment/app/Fragment;
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 2758
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    .line 2759
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->dispatchParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    .line 2760
    return-void
.end method

.method showFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1615
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :cond_1f
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_2c

    .line 1617
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1620
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1622
    :cond_2c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 988
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_43

    .line 992
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 993
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mParent:Landroidx/fragment/app/Fragment;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_6b

    :cond_43
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v1, :cond_66

    .line 998
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 999
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_6b

    .line 1004
    :cond_66
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    :goto_6b
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .registers 3
    .param p1, "cb"    # Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 2864
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    .line 2865
    return-void
.end method
