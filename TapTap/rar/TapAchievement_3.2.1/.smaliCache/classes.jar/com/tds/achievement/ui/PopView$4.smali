.class Lcom/tds/achievement/ui/PopView$4;
.super Ljava/lang/Object;
.source "PopView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/ui/PopView;->showNext(Lcom/tds/achievement/TapAchievementBean;)V
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

    .line 182
    iput-object p1, p0, Lcom/tds/achievement/ui/PopView$4;->this$0:Lcom/tds/achievement/ui/PopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 185
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 186
    .local v0, "size":F
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView$4;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->iconImage:Lcom/tds/common/widgets/image/RoundNetImageView;
    invoke-static {v1}, Lcom/tds/achievement/ui/PopView;->access$300(Lcom/tds/achievement/ui/PopView;)Lcom/tds/common/widgets/image/RoundNetImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tds/common/widgets/image/RoundNetImageView;->setScaleX(F)V

    .line 187
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView$4;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->iconImage:Lcom/tds/common/widgets/image/RoundNetImageView;
    invoke-static {v1}, Lcom/tds/achievement/ui/PopView;->access$300(Lcom/tds/achievement/ui/PopView;)Lcom/tds/common/widgets/image/RoundNetImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tds/common/widgets/image/RoundNetImageView;->setScaleY(F)V

    .line 188
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView$4;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->titleText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tds/achievement/ui/PopView;->access$400(Lcom/tds/achievement/ui/PopView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 189
    return-void
.end method
