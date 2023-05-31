.class Ltds/androidx/core/view/ViewPropertyAnimatorCompat$2;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/core/view/ViewPropertyAnimatorCompat;->setUpdateListener(Ltds/androidx/core/view/ViewPropertyAnimatorUpdateListener;)Ltds/androidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$listener:Ltds/androidx/core/view/ViewPropertyAnimatorUpdateListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Ltds/androidx/core/view/ViewPropertyAnimatorCompat;Ltds/androidx/core/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

    .line 780
    iput-object p1, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$2;->this$0:Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

    iput-object p2, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$2;->val$listener:Ltds/androidx/core/view/ViewPropertyAnimatorUpdateListener;

    iput-object p3, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 783
    iget-object v0, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$2;->val$listener:Ltds/androidx/core/view/ViewPropertyAnimatorUpdateListener;

    iget-object v1, p0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat$2;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Ltds/androidx/core/view/ViewPropertyAnimatorUpdateListener;->onAnimationUpdate(Landroid/view/View;)V

    .line 784
    return-void
.end method
