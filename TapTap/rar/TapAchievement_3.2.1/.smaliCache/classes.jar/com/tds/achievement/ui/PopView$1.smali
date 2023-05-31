.class Lcom/tds/achievement/ui/PopView$1;
.super Ljava/lang/Object;
.source "PopView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/ui/PopView;->start()V
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

    .line 126
    iput-object p1, p0, Lcom/tds/achievement/ui/PopView$1;->this$0:Lcom/tds/achievement/ui/PopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 129
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 130
    .local v0, "scale":F
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView$1;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->bgView:Landroid/view/View;
    invoke-static {v1}, Lcom/tds/achievement/ui/PopView;->access$000(Lcom/tds/achievement/ui/PopView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 131
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView$1;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->bgView:Landroid/view/View;
    invoke-static {v1}, Lcom/tds/achievement/ui/PopView;->access$000(Lcom/tds/achievement/ui/PopView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 132
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView$1;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->root:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/tds/achievement/ui/PopView;->access$100(Lcom/tds/achievement/ui/PopView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 133
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView$1;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->root:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/tds/achievement/ui/PopView;->access$100(Lcom/tds/achievement/ui/PopView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 134
    return-void
.end method
