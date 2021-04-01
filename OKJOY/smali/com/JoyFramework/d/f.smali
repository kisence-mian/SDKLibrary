.class final Lcom/JoyFramework/d/f;
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
    .line 44
    iput-object p1, p0, Lcom/JoyFramework/d/f;->a:Lcom/JoyFramework/d/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/JoyFramework/d/e;->a:Z

    .line 48
    iget-object v0, p0, Lcom/JoyFramework/d/f;->a:Lcom/JoyFramework/d/e$a;

    if-eqz v0, :cond_c

    .line 49
    iget-object v0, p0, Lcom/JoyFramework/d/f;->a:Lcom/JoyFramework/d/e$a;

    invoke-interface {v0}, Lcom/JoyFramework/d/e$a;->a()V

    .line 50
    :cond_c
    invoke-static {}, Lcom/JoyFramework/d/e;->e()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 51
    invoke-static {}, Lcom/JoyFramework/d/e;->e()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 53
    :cond_19
    return-void
.end method
