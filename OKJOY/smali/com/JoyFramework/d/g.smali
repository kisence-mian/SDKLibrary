.class final Lcom/JoyFramework/d/g;
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
    .line 342
    iput-object p1, p0, Lcom/JoyFramework/d/g;->a:Lcom/JoyFramework/d/e$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 345
    invoke-static {}, Lcom/JoyFramework/d/e;->g()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 346
    invoke-static {}, Lcom/JoyFramework/d/e;->g()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 347
    invoke-static {v1}, Lcom/JoyFramework/d/e;->a(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 348
    invoke-static {v1}, Lcom/JoyFramework/d/e;->a(Landroid/view/View;)Landroid/view/View;

    .line 350
    :cond_14
    iget-object v0, p0, Lcom/JoyFramework/d/g;->a:Lcom/JoyFramework/d/e$e;

    if-eqz v0, :cond_1d

    .line 351
    iget-object v0, p0, Lcom/JoyFramework/d/g;->a:Lcom/JoyFramework/d/e$e;

    invoke-interface {v0}, Lcom/JoyFramework/d/e$e;->a()V

    .line 354
    :cond_1d
    return-void
.end method
