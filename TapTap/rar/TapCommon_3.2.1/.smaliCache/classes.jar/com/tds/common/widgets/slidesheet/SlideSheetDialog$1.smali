.class Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$1;
.super Ljava/lang/Object;
.source "SlideSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->ensureContainerAndBehavior()Landroid/widget/FrameLayout;
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

    .line 176
    iput-object p1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$1;->this$0:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$1;->this$0:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    iget-boolean v0, v0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->cancelable:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$1;->this$0:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    invoke-virtual {v0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$1;->this$0:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    invoke-virtual {v0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->shouldWindowCloseOnTouchOutside()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 180
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$1;->this$0:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    invoke-virtual {v0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->cancel()V

    .line 182
    :cond_1b
    return-void
.end method
