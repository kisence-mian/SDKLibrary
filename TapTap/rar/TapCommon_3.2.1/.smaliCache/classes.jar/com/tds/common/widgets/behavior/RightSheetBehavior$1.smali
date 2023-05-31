.class Lcom/tds/common/widgets/behavior/RightSheetBehavior$1;
.super Ljava/lang/Object;
.source "RightSheetBehavior.java"

# interfaces
.implements Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/widgets/behavior/RightSheetBehavior;->setSystemGestureInsets(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;


# direct methods
.method constructor <init>(Lcom/tds/common/widgets/behavior/RightSheetBehavior;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    .line 346
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior$1;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior$1;"
    iput-object p1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$1;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Ltds/androidx/core/view/WindowInsetsCompat;Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Ltds/androidx/core/view/WindowInsetsCompat;
    .param p3, "initialPadding"    # Ltds/com/google/android/material/internal/ViewUtils$RelativePadding;

    .line 350
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior$1;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior$1;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$1;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    invoke-virtual {p2}, Ltds/androidx/core/view/WindowInsetsCompat;->getMandatorySystemGestureInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v1

    iget v1, v1, Ltds/androidx/core/graphics/Insets;->right:I

    iput v1, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->gestureInsetBottom:I

    .line 351
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$1;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->updatePeekHeight(Z)V

    .line 352
    return-object p2
.end method
