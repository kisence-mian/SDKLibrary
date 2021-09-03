.class Lcom/tds/achievement/ui/PopView$9;
.super Ljava/lang/Object;
.source "PopView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/ui/PopView;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/ui/PopView;


# direct methods
.method constructor <init>(Lcom/tds/achievement/ui/PopView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/achievement/ui/PopView;

    .line 270
    iput-object p1, p0, Lcom/tds/achievement/ui/PopView$9;->this$0:Lcom/tds/achievement/ui/PopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 286
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 278
    iget-object v0, p0, Lcom/tds/achievement/ui/PopView$9;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->callback:Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;
    invoke-static {v0}, Lcom/tds/achievement/ui/PopView;->access$600(Lcom/tds/achievement/ui/PopView;)Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 279
    iget-object v0, p0, Lcom/tds/achievement/ui/PopView$9;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->callback:Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;
    invoke-static {v0}, Lcom/tds/achievement/ui/PopView;->access$600(Lcom/tds/achievement/ui/PopView;)Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;->onDismiss()V

    .line 281
    :cond_11
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 291
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 274
    return-void
.end method
