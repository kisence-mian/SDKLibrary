.class final Lcom/JoyFramework/d/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 1042
    invoke-static {}, Lcom/JoyFramework/d/e;->n()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1043
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/JoyFramework/d/e;->g(Landroid/view/View;)Landroid/view/View;

    .line 1045
    :cond_a
    invoke-static {}, Lcom/JoyFramework/d/e;->o()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1046
    invoke-static {}, Lcom/JoyFramework/d/e;->o()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1048
    :cond_17
    return-void
.end method
