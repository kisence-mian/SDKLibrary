.class Lcom/tds/achievement/ui/UIManager$3;
.super Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;
.source "UIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/ui/UIManager;->showSheet(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/ui/UIManager;

.field final synthetic val$closeBG:Landroid/graphics/drawable/GradientDrawable;

.field final synthetic val$closeRoot:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/tds/achievement/ui/UIManager;Landroid/widget/FrameLayout;Landroid/graphics/drawable/GradientDrawable;)V
    .registers 4
    .param p1, "this$0"    # Lcom/tds/achievement/ui/UIManager;

    .line 151
    iput-object p1, p0, Lcom/tds/achievement/ui/UIManager$3;->this$0:Lcom/tds/achievement/ui/UIManager;

    iput-object p2, p0, Lcom/tds/achievement/ui/UIManager$3;->val$closeRoot:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/tds/achievement/ui/UIManager$3;->val$closeBG:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .registers 5
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 159
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_d

    .line 160
    iget-object v0, p0, Lcom/tds/achievement/ui/UIManager$3;->val$closeRoot:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_14

    .line 162
    :cond_d
    iget-object v0, p0, Lcom/tds/achievement/ui/UIManager$3;->val$closeRoot:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tds/achievement/ui/UIManager$3;->val$closeBG:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 164
    :goto_14
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .registers 3
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "newState"    # I

    .line 155
    return-void
.end method
