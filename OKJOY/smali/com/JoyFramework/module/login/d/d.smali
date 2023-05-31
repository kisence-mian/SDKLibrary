.class Lcom/JoyFramework/module/login/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/cb$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/login/d/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/d/c;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/d;->a:Lcom/JoyFramework/module/login/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 86
    new-instance v0, Lcom/JoyFramework/module/login/d/ap;

    invoke-direct {v0}, Lcom/JoyFramework/module/login/d/ap;-><init>()V

    .line 87
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-string v2, "protocol_Type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/login/d/ap;->setArguments(Landroid/os/Bundle;)V

    .line 90
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/d;->a:Lcom/JoyFramework/module/login/d/c;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/JoyFramework/module/login/d/c;->a(Lcom/JoyFramework/module/login/d/c;Landroid/app/Fragment;Z)V

    .line 92
    return-void
.end method
