.class Lcom/tds/achievement/ui/PopView$8;
.super Ljava/lang/Object;
.source "PopView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 257
    iput-object p1, p0, Lcom/tds/achievement/ui/PopView$8;->this$0:Lcom/tds/achievement/ui/PopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 260
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 262
    .local v0, "size":I
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView$8;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->bgView:Landroid/view/View;
    invoke-static {v1}, Lcom/tds/achievement/ui/PopView;->access$000(Lcom/tds/achievement/ui/PopView;)Landroid/view/View;

    move-result-object v1

    int-to-float v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 263
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView$8;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->bgView:Landroid/view/View;
    invoke-static {v1}, Lcom/tds/achievement/ui/PopView;->access$000(Lcom/tds/achievement/ui/PopView;)Landroid/view/View;

    move-result-object v1

    int-to-float v2, v0

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 264
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView$8;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->iconImage:Lcom/tds/common/widgets/image/RoundNetImageView;
    invoke-static {v1}, Lcom/tds/achievement/ui/PopView;->access$300(Lcom/tds/achievement/ui/PopView;)Lcom/tds/common/widgets/image/RoundNetImageView;

    move-result-object v1

    add-int/lit8 v2, v0, -0x50

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/tds/common/widgets/image/RoundNetImageView;->setScaleX(F)V

    .line 265
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView$8;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->iconImage:Lcom/tds/common/widgets/image/RoundNetImageView;
    invoke-static {v1}, Lcom/tds/achievement/ui/PopView;->access$300(Lcom/tds/achievement/ui/PopView;)Lcom/tds/common/widgets/image/RoundNetImageView;

    move-result-object v1

    add-int/lit8 v2, v0, -0x50

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/tds/common/widgets/image/RoundNetImageView;->setScaleY(F)V

    .line 266
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView$8;->this$0:Lcom/tds/achievement/ui/PopView;

    # getter for: Lcom/tds/achievement/ui/PopView;->titleText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tds/achievement/ui/PopView;->access$400(Lcom/tds/achievement/ui/PopView;)Landroid/widget/TextView;

    move-result-object v1

    add-int/lit8 v2, v0, -0x32

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42480000    # 50.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 267
    return-void
.end method
