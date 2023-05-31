.class Lcom/JoyFramework/module/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/wight/z$a;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/JoyFramework/module/a/n;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/a/n;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 179
    iput-object p1, p0, Lcom/JoyFramework/module/a/p;->b:Lcom/JoyFramework/module/a/n;

    iput-object p2, p0, Lcom/JoyFramework/module/a/p;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/JoyFramework/module/a/p;->b:Lcom/JoyFramework/module/a/n;

    iget-object v1, v1, Lcom/JoyFramework/module/a/n;->a:Landroid/content/Context;

    const-string v2, "button_updata"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 186
    iget-object v0, p0, Lcom/JoyFramework/module/a/p;->b:Lcom/JoyFramework/module/a/n;

    iget-object v1, p0, Lcom/JoyFramework/module/a/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/a/n;->a(Ljava/lang/String;)V

    .line 188
    :cond_19
    return-void
.end method
