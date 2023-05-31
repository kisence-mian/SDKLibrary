.class final Lcom/JoyFramework/d/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 381
    invoke-static {}, Lcom/JoyFramework/d/e;->g()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 382
    invoke-static {}, Lcom/JoyFramework/d/e;->g()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 383
    invoke-static {v1}, Lcom/JoyFramework/d/e;->a(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 384
    invoke-static {v1}, Lcom/JoyFramework/d/e;->a(Landroid/view/View;)Landroid/view/View;

    .line 386
    :cond_14
    return-void
.end method
