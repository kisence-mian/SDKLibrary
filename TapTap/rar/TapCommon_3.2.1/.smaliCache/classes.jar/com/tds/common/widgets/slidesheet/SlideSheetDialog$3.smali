.class Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$3;
.super Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;
.source "SlideSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;


# direct methods
.method constructor <init>(Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    .line 243
    iput-object p1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$3;->this$0:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    invoke-direct {p0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .registers 3
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 253
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "newState"    # I

    .line 246
    const/4 v0, 0x5

    if-ne p2, v0, :cond_8

    .line 247
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$3;->this$0:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    invoke-virtual {v0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->cancel()V

    .line 249
    :cond_8
    return-void
.end method
