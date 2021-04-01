.class final Lcom/JoyFramework/d/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1027
    invoke-static {}, Lcom/JoyFramework/d/e;->n()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1028
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/JoyFramework/d/e;->g(Landroid/view/View;)Landroid/view/View;

    .line 1030
    :cond_a
    invoke-static {}, Lcom/JoyFramework/d/e;->o()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1031
    invoke-static {}, Lcom/JoyFramework/d/e;->o()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1033
    :cond_17
    return-void
.end method
