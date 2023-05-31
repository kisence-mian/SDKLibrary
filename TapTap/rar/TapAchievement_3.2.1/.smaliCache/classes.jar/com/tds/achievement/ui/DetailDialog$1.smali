.class Lcom/tds/achievement/ui/DetailDialog$1;
.super Ljava/lang/Object;
.source "DetailDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/ui/DetailDialog;->initLayout(Landroid/app/Activity;Lcom/tds/achievement/TapAchievementBean;Landroid/util/Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/ui/DetailDialog;


# direct methods
.method constructor <init>(Lcom/tds/achievement/ui/DetailDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/achievement/ui/DetailDialog;

    .line 107
    iput-object p1, p0, Lcom/tds/achievement/ui/DetailDialog$1;->this$0:Lcom/tds/achievement/ui/DetailDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/tds/achievement/ui/DetailDialog$1;->this$0:Lcom/tds/achievement/ui/DetailDialog;

    # getter for: Lcom/tds/achievement/ui/DetailDialog;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/tds/achievement/ui/DetailDialog;->access$000(Lcom/tds/achievement/ui/DetailDialog;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/tds/achievement/ui/DetailDialog$1;->this$0:Lcom/tds/achievement/ui/DetailDialog;

    # getter for: Lcom/tds/achievement/ui/DetailDialog;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/tds/achievement/ui/DetailDialog;->access$000(Lcom/tds/achievement/ui/DetailDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 111
    iget-object v0, p0, Lcom/tds/achievement/ui/DetailDialog$1;->this$0:Lcom/tds/achievement/ui/DetailDialog;

    # getter for: Lcom/tds/achievement/ui/DetailDialog;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/tds/achievement/ui/DetailDialog;->access$000(Lcom/tds/achievement/ui/DetailDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 113
    :cond_1d
    return-void
.end method
