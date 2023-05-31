.class final Lcom/JoyFramework/d/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/e$a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/e$a;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/JoyFramework/d/q;->a:Lcom/JoyFramework/d/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/JoyFramework/d/e;->a:Z

    .line 59
    invoke-static {}, Lcom/JoyFramework/d/e;->e()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 60
    invoke-static {}, Lcom/JoyFramework/d/e;->e()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 62
    :cond_10
    iget-object v0, p0, Lcom/JoyFramework/d/q;->a:Lcom/JoyFramework/d/e$a;

    if-eqz v0, :cond_19

    .line 63
    iget-object v0, p0, Lcom/JoyFramework/d/q;->a:Lcom/JoyFramework/d/e$a;

    invoke-interface {v0}, Lcom/JoyFramework/d/e$a;->b()V

    .line 64
    :cond_19
    return-void
.end method
