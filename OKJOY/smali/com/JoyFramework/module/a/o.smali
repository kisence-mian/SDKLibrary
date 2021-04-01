.class Lcom/JoyFramework/module/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/wight/z$a;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/JoyFramework/module/a/n$a;

.field final synthetic c:Lcom/JoyFramework/module/a/n;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/a/n;Ljava/lang/String;Lcom/JoyFramework/module/a/n$a;)V
    .registers 4

    .prologue
    .line 96
    iput-object p1, p0, Lcom/JoyFramework/module/a/o;->c:Lcom/JoyFramework/module/a/n;

    iput-object p2, p0, Lcom/JoyFramework/module/a/o;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/JoyFramework/module/a/o;->b:Lcom/JoyFramework/module/a/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/JoyFramework/module/a/o;->c:Lcom/JoyFramework/module/a/n;

    iget-object v1, v1, Lcom/JoyFramework/module/a/n;->a:Landroid/content/Context;

    const-string v2, "button_updata"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_21

    .line 103
    iget-object v0, p0, Lcom/JoyFramework/module/a/o;->c:Lcom/JoyFramework/module/a/n;

    iget-object v1, p0, Lcom/JoyFramework/module/a/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/a/n;->a(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/JoyFramework/module/a/o;->b:Lcom/JoyFramework/module/a/n$a;

    const-string v1, "update"

    invoke-interface {v0, v1}, Lcom/JoyFramework/module/a/n$a;->a(Ljava/lang/String;)V

    .line 111
    :cond_20
    :goto_20
    return-void

    .line 105
    :cond_21
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/JoyFramework/module/a/o;->c:Lcom/JoyFramework/module/a/n;

    iget-object v1, v1, Lcom/JoyFramework/module/a/n;->a:Landroid/content/Context;

    const-string v2, "next_button_updata"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_20

    .line 107
    iget-object v0, p0, Lcom/JoyFramework/module/a/o;->c:Lcom/JoyFramework/module/a/n;

    iget-object v0, v0, Lcom/JoyFramework/module/a/n;->b:Lcom/JoyFramework/wight/z;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/z;->dismiss()V

    .line 108
    iget-object v0, p0, Lcom/JoyFramework/module/a/o;->b:Lcom/JoyFramework/module/a/n$a;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/JoyFramework/module/a/n$a;->a(Ljava/lang/String;)V

    goto :goto_20
.end method
