.class Lcom/JoyFramework/module/login/d/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/cb$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/login/d/ai;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/d/ai;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/ak;->a:Lcom/JoyFramework/module/login/d/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 113
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ak;->a:Lcom/JoyFramework/module/login/d/ai;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/ai;->a(Lcom/JoyFramework/module/login/d/ai;)Lcom/JoyFramework/module/login/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/c/a;->onFinish()V

    .line 114
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ak;->a:Lcom/JoyFramework/module/login/d/ai;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/ai;->b(Lcom/JoyFramework/module/login/d/ai;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u91cd\u65b0\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ak;->a:Lcom/JoyFramework/module/login/d/ai;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/JoyFramework/module/login/d/ai;->a(Lcom/JoyFramework/module/login/d/ai;Lcom/JoyFramework/module/login/c/a;)Lcom/JoyFramework/module/login/c/a;

    .line 116
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/ak;->a:Lcom/JoyFramework/module/login/d/ai;

    iput-boolean v3, v0, Lcom/JoyFramework/module/login/d/ai;->a:Z

    .line 117
    new-instance v0, Lcom/JoyFramework/module/login/d/ap;

    invoke-direct {v0}, Lcom/JoyFramework/module/login/d/ap;-><init>()V

    .line 118
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 119
    const-string v2, "protocol_Type"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/login/d/ap;->setArguments(Landroid/os/Bundle;)V

    .line 121
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ak;->a:Lcom/JoyFramework/module/login/d/ai;

    invoke-static {v1, v0, v3}, Lcom/JoyFramework/module/login/d/ai;->b(Lcom/JoyFramework/module/login/d/ai;Landroid/app/Fragment;Z)V

    .line 122
    return-void
.end method
