.class Ltds/androidx/recyclerview/widget/DefaultItemAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/recyclerview/widget/DefaultItemAnimator;->animateRemoveImpl(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$holder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/DefaultItemAnimator;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .registers 5
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    .line 203
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$4;->this$0:Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 211
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 212
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$4;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 213
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$4;->this$0:Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 214
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$4;->this$0:Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$4;->this$0:Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 216
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 206
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$4;->this$0:Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveStarting(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 207
    return-void
.end method
