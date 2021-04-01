.class final Lcom/JoyFramework/d/j;
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
    .line 452
    iput-object p1, p0, Lcom/JoyFramework/d/j;->a:Lcom/JoyFramework/d/e$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 455
    iget-object v0, p0, Lcom/JoyFramework/d/j;->a:Lcom/JoyFramework/d/e$c;

    if-eqz v0, :cond_a

    .line 456
    iget-object v0, p0, Lcom/JoyFramework/d/j;->a:Lcom/JoyFramework/d/e$c;

    invoke-interface {v0}, Lcom/JoyFramework/d/e$c;->a()V

    .line 458
    :cond_a
    invoke-static {}, Lcom/JoyFramework/d/e;->h()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 459
    invoke-static {}, Lcom/JoyFramework/d/e;->h()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 460
    invoke-static {v1}, Lcom/JoyFramework/d/e;->b(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 461
    invoke-static {v1}, Lcom/JoyFramework/d/e;->b(Landroid/view/View;)Landroid/view/View;

    .line 464
    :cond_1d
    return-void
.end method
