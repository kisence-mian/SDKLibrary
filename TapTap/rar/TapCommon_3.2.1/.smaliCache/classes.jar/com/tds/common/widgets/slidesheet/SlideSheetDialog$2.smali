.class Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$2;
.super Ljava/lang/Object;
.source "SlideSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
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

    .line 221
    iput-object p1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$2;->this$0:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 224
    const/4 v0, 0x1

    return v0
.end method
