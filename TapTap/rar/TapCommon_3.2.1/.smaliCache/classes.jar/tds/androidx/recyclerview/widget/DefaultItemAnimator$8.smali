.class Ltds/androidx/recyclerview/widget/DefaultItemAnimator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/recyclerview/widget/DefaultItemAnimator;->animateChangeImpl(Ltds/androidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$changeInfo:Ltds/androidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/DefaultItemAnimator;Ltds/androidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .registers 5
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    .line 380
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Ltds/androidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 387
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 388
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 389
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 390
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 391
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Ltds/androidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltds/androidx/recyclerview/widget/DefaultItemAnimator;->dispatchChangeFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 392
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Ltds/androidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 394
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 383
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$8;->this$0:Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Ltds/androidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltds/androidx/recyclerview/widget/DefaultItemAnimator;->dispatchChangeStarting(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 384
    return-void
.end method
