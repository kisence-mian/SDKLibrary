.class final Lcom/JoyFramework/d/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/e$c;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/e$c;Z)V
    .registers 3

    .prologue
    .line 541
    iput-object p1, p0, Lcom/JoyFramework/d/m;->a:Lcom/JoyFramework/d/e$c;

    iput-boolean p2, p0, Lcom/JoyFramework/d/m;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 544
    iget-object v0, p0, Lcom/JoyFramework/d/m;->a:Lcom/JoyFramework/d/e$c;

    if-eqz v0, :cond_a

    .line 545
    iget-object v0, p0, Lcom/JoyFramework/d/m;->a:Lcom/JoyFramework/d/e$c;

    invoke-interface {v0}, Lcom/JoyFramework/d/e$c;->a()V

    .line 547
    :cond_a
    invoke-static {}, Lcom/JoyFramework/d/e;->h()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 548
    iget-boolean v0, p0, Lcom/JoyFramework/d/m;->b:Z

    if-eqz v0, :cond_21

    .line 549
    invoke-static {}, Lcom/JoyFramework/d/e;->h()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 550
    invoke-static {v1}, Lcom/JoyFramework/d/e;->b(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 551
    invoke-static {v1}, Lcom/JoyFramework/d/e;->b(Landroid/view/View;)Landroid/view/View;

    .line 555
    :cond_21
    return-void
.end method
