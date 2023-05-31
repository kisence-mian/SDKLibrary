.class final Lcom/JoyFramework/d/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 919
    invoke-static {}, Lcom/JoyFramework/d/e;->l()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 920
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/JoyFramework/d/e;->f(Landroid/view/View;)Landroid/view/View;

    .line 922
    :cond_a
    invoke-static {}, Lcom/JoyFramework/d/e;->m()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 923
    invoke-static {}, Lcom/JoyFramework/d/e;->m()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 925
    :cond_17
    return-void
.end method
