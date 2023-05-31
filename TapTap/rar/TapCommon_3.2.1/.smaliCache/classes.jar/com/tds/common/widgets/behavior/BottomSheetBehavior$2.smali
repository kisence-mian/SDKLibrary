.class Lcom/tds/common/widgets/behavior/BottomSheetBehavior$2;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setSystemGestureInsets(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/tds/common/widgets/behavior/BottomSheetBehavior;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    .line 1146
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior$2;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior$2;"
    iput-object p1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Ltds/androidx/core/view/WindowInsetsCompat;Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Ltds/androidx/core/view/WindowInsetsCompat;
    .param p3, "initialPadding"    # Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;

    .line 1150
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior$2;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior$2;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    invoke-virtual {p2}, Ltds/androidx/core/view/WindowInsetsCompat;->getMandatorySystemGestureInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v1

    iget v1, v1, Ltds/androidx/core/graphics/Insets;->bottom:I

    iput v1, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->gestureInsetBottom:I

    .line 1151
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->updatePeekHeight(Z)V

    .line 1152
    return-object p2
.end method
