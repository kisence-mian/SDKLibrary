.class Lcom/JoyFramework/module/b/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/JoyFramework/module/b/a/d;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/b/a/d;I)V
    .registers 3

    .prologue
    .line 88
    iput-object p1, p0, Lcom/JoyFramework/module/b/a/f;->b:Lcom/JoyFramework/module/b/a/d;

    iput p2, p0, Lcom/JoyFramework/module/b/a/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/f;->b:Lcom/JoyFramework/module/b/a/d;

    invoke-static {v0}, Lcom/JoyFramework/module/b/a/d;->a(Lcom/JoyFramework/module/b/a/d;)Lcom/JoyFramework/module/b/a/d$a;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 92
    iget-object v0, p0, Lcom/JoyFramework/module/b/a/f;->b:Lcom/JoyFramework/module/b/a/d;

    invoke-static {v0}, Lcom/JoyFramework/module/b/a/d;->a(Lcom/JoyFramework/module/b/a/d;)Lcom/JoyFramework/module/b/a/d$a;

    move-result-object v0

    iget v1, p0, Lcom/JoyFramework/module/b/a/f;->a:I

    invoke-interface {v0, v1}, Lcom/JoyFramework/module/b/a/d$a;->b(I)V

    .line 94
    :cond_13
    return-void
.end method
