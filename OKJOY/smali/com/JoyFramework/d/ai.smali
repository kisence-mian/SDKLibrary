.class final Lcom/JoyFramework/d/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/e$d;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/e$d;)V
    .registers 2

    .prologue
    .line 246
    iput-object p1, p0, Lcom/JoyFramework/d/ai;->a:Lcom/JoyFramework/d/e$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/JoyFramework/d/ai;->a:Lcom/JoyFramework/d/e$d;

    if-eqz v0, :cond_9

    .line 250
    iget-object v0, p0, Lcom/JoyFramework/d/ai;->a:Lcom/JoyFramework/d/e$d;

    invoke-interface {v0}, Lcom/JoyFramework/d/e$d;->e()V

    .line 252
    :cond_9
    return-void
.end method
