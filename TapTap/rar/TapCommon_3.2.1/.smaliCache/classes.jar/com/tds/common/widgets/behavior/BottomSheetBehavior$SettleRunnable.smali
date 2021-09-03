.class public Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/widgets/behavior/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SettleRunnable"
.end annotation


# instance fields
.field protected isPosted:Z

.field targetState:I

.field final synthetic this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/tds/common/widgets/behavior/BottomSheetBehavior;Landroid/view/View;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/tds/common/widgets/behavior/BottomSheetBehavior;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "targetState"    # I

    .line 1390
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>.SettleRunnable;"
    iput-object p1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1391
    iput-object p2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;->view:Landroid/view/View;

    .line 1392
    iput p3, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;->targetState:I

    .line 1393
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1397
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<TV;>.SettleRunnable;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget-object v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget-object v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltds/androidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1398
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;->view:Landroid/view/View;

    invoke-static {v0, p0}, Ltds/androidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1e

    .line 1400
    :cond_17
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;->targetState:I

    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setStateInternal(I)V

    .line 1402
    :goto_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;->isPosted:Z

    .line 1403
    return-void
.end method
