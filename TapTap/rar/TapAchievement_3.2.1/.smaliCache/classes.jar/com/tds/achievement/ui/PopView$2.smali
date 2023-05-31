.class Lcom/tds/achievement/ui/PopView$2;
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

    .line 143
    iput-object p1, p0, Lcom/tds/achievement/ui/PopView$2;->this$0:Lcom/tds/achievement/ui/PopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 146
    iget-object v0, p0, Lcom/tds/achievement/ui/PopView$2;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->root:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/tds/achievement/ui/PopView;->access$100(Lcom/tds/achievement/ui/PopView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 147
    .local v0, "rootLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 148
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView$2;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->root:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/tds/achievement/ui/PopView;->access$100(Lcom/tds/achievement/ui/PopView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView$2;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->bgView:Landroid/view/View;
    invoke-static {v1}, Lcom/tds/achievement/ui/PopView;->access$000(Lcom/tds/achievement/ui/PopView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    return-void
.end method
