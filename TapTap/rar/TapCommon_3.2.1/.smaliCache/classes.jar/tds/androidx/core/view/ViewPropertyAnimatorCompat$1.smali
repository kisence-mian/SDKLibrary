.class Ltds/androidx/core/view/ViewPropertyAnimatorCompat$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/core/view/ViewPropertyAnimatorCompat;->setListenerInternal(Landroid/view/View;Ltds/androidx/core/view/ViewPropertyAnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$listener:Ltds/androidx/core/view/ViewPropertyAnimatorListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Ltds/androidx/core/view/ViewPropertyAnimatorCompat;Ltds/androidx/core/view/ViewPropertyAnimatorListener;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

    .line 742
    iput-object p1, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$1;->this$0:Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

    iput-object p2, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Ltds/androidx/core/view/ViewPropertyAnimatorListener;

    iput-object p3, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 745
    iget-object v0, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Ltds/androidx/core/view/ViewPropertyAnimatorListener;

    iget-object v1, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Ltds/androidx/core/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    .line 746
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 750
    iget-object v0, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Ltds/androidx/core/view/ViewPropertyAnimatorListener;

    iget-object v1, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Ltds/androidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 751
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 755
    iget-object v0, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Ltds/androidx/core/view/ViewPropertyAnimatorListener;

    iget-object v1, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Ltds/androidx/core/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    .line 756
    return-void
.end method
