.class Lcom/tds/achievement/ui/UIManager$1;
.super Ljava/lang/Object;
.source "UIManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/tds/achievement/ui/UIManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/achievement/ui/UIManager;

    .line 95
    iput-object p1, p0, Lcom/tds/achievement/ui/UIManager$1;->this$0:Lcom/tds/achievement/ui/UIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/tds/achievement/ui/UIManager$1;->this$0:Lcom/tds/achievement/ui/UIManager;

    # getter for: Lcom/tds/achievement/ui/UIManager;->dialog:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;
    invoke-static {v0}, Lcom/tds/achievement/ui/UIManager;->access$000(Lcom/tds/achievement/ui/UIManager;)Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->dismiss()V

    .line 99
    return-void
.end method
