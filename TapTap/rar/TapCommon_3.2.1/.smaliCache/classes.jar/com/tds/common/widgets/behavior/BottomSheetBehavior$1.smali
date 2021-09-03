.class Lcom/tds/common/widgets/behavior/BottomSheetBehavior$1;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->settleToStatePendingLayout(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$finalState:I


# direct methods
.method constructor <init>(Lcom/tds/common/widgets/behavior/BottomSheetBehavior;Landroid/view/View;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    .line 1012
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior$1;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior$1;"
    iput-object p1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$1;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iput-object p2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$1;->val$child:Landroid/view/View;

    iput p3, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$1;->val$finalState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1015
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior$1;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior$1;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$1;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$1;->val$child:Landroid/view/View;

    iget v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$1;->val$finalState:I

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->settleToState(Landroid/view/View;I)V

    .line 1016
    return-void
.end method
