.class Lcom/tapsdk/moment/view/MomentDialog$3;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog;->onStart()V
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

    .line 229
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$3;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 232
    const/4 v0, 0x4

    if-ne p2, v0, :cond_11

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 233
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$3;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/MomentDialog;->back()Z

    move-result v0

    return v0

    .line 235
    :cond_11
    const/4 v0, 0x0

    return v0
.end method
