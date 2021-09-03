.class Lcom/tapsdk/moment/view/MomentDialog$1;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/view/MomentDialog;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 181
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$1;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$1;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/MomentDialog;->dismiss()V

    .line 185
    return-void
.end method
