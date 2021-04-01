.class final Lcom/JoyFramework/d/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/e$e;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/e$e;)V
    .registers 2

    .prologue
    .line 796
    iput-object p1, p0, Lcom/JoyFramework/d/v;->a:Lcom/JoyFramework/d/e$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 799
    invoke-static {}, Lcom/JoyFramework/d/e;->k()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 800
    invoke-static {}, Lcom/JoyFramework/d/e;->k()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 801
    invoke-static {v1}, Lcom/JoyFramework/d/e;->e(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 802
    invoke-static {v1}, Lcom/JoyFramework/d/e;->e(Landroid/view/View;)Landroid/view/View;

    .line 804
    :cond_14
    iget-object v0, p0, Lcom/JoyFramework/d/v;->a:Lcom/JoyFramework/d/e$e;

    if-eqz v0, :cond_1d

    .line 805
    iget-object v0, p0, Lcom/JoyFramework/d/v;->a:Lcom/JoyFramework/d/e$e;

    invoke-interface {v0}, Lcom/JoyFramework/d/e$e;->a()V

    .line 807
    :cond_1d
    return-void
.end method
