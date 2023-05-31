.class final Lcom/JoyFramework/d/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 502
    invoke-static {}, Lcom/JoyFramework/d/e;->h()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 503
    invoke-static {}, Lcom/JoyFramework/d/e;->h()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 504
    invoke-static {v1}, Lcom/JoyFramework/d/e;->b(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 505
    invoke-static {v1}, Lcom/JoyFramework/d/e;->b(Landroid/view/View;)Landroid/view/View;

    .line 507
    :cond_14
    return-void
.end method
