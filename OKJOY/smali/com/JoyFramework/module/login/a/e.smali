.class Lcom/JoyFramework/module/login/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/JoyFramework/module/login/a/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/a/c;I)V
    .registers 3

    .prologue
    .line 70
    iput-object p1, p0, Lcom/JoyFramework/module/login/a/e;->b:Lcom/JoyFramework/module/login/a/c;

    iput p2, p0, Lcom/JoyFramework/module/login/a/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/JoyFramework/module/login/a/e;->b:Lcom/JoyFramework/module/login/a/c;

    invoke-static {v0}, Lcom/JoyFramework/module/login/a/c;->a(Lcom/JoyFramework/module/login/a/c;)Lcom/JoyFramework/module/login/a/c$a;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 74
    iget-object v0, p0, Lcom/JoyFramework/module/login/a/e;->b:Lcom/JoyFramework/module/login/a/c;

    invoke-static {v0}, Lcom/JoyFramework/module/login/a/c;->a(Lcom/JoyFramework/module/login/a/c;)Lcom/JoyFramework/module/login/a/c$a;

    move-result-object v0

    iget v1, p0, Lcom/JoyFramework/module/login/a/e;->a:I

    invoke-interface {v0, v1}, Lcom/JoyFramework/module/login/a/c$a;->b(I)V

    .line 76
    :cond_13
    return-void
.end method
