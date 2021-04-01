.class final Lcom/JoyFramework/d/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/e$a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/e$a;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/JoyFramework/d/ab;->a:Lcom/JoyFramework/d/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/JoyFramework/d/ab;->a:Lcom/JoyFramework/d/e$a;

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/JoyFramework/d/e;->a:Z

    if-nez v0, :cond_d

    .line 102
    iget-object v0, p0, Lcom/JoyFramework/d/ab;->a:Lcom/JoyFramework/d/e$a;

    invoke-interface {v0}, Lcom/JoyFramework/d/e$a;->a()V

    .line 103
    :cond_d
    return-void
.end method
