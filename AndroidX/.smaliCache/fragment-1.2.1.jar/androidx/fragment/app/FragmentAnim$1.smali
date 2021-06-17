.class final Landroidx/fragment/app/FragmentAnim$1;
.super Ljava/lang/Object;
.source "FragmentAnim.java"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentAnim;->animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;Landroidx/fragment/app/FragmentTransition$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 2

    .line 144
    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .line 147
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 148
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, "v":Landroid/view/View;
    iget-object v2, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 150
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 152
    .end local v0    # "v":Landroid/view/View;
    :cond_17
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 153
    return-void
.end method
