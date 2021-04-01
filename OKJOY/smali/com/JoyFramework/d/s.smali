.class final Lcom/JoyFramework/d/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/e$c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/e$c;)V
    .registers 2

    .prologue
    .line 704
    iput-object p1, p0, Lcom/JoyFramework/d/s;->a:Lcom/JoyFramework/d/e$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 707
    iget-object v0, p0, Lcom/JoyFramework/d/s;->a:Lcom/JoyFramework/d/e$c;

    if-eqz v0, :cond_a

    .line 708
    iget-object v0, p0, Lcom/JoyFramework/d/s;->a:Lcom/JoyFramework/d/e$c;

    invoke-interface {v0}, Lcom/JoyFramework/d/e$c;->a()V

    .line 710
    :cond_a
    invoke-static {}, Lcom/JoyFramework/d/e;->j()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 711
    invoke-static {}, Lcom/JoyFramework/d/e;->j()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 712
    invoke-static {v1}, Lcom/JoyFramework/d/e;->d(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 713
    invoke-static {v1}, Lcom/JoyFramework/d/e;->d(Landroid/view/View;)Landroid/view/View;

    .line 716
    :cond_1d
    return-void
.end method
