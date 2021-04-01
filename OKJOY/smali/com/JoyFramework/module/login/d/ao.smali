.class Lcom/JoyFramework/module/login/d/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/cb$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/login/d/am;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/d/am;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/ao;->a:Lcom/JoyFramework/module/login/d/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 85
    new-instance v0, Lcom/JoyFramework/module/login/d/ap;

    invoke-direct {v0}, Lcom/JoyFramework/module/login/d/ap;-><init>()V

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v2, "protocol_Type"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/login/d/ap;->setArguments(Landroid/os/Bundle;)V

    .line 89
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/ao;->a:Lcom/JoyFramework/module/login/d/am;

    invoke-static {v1, v0, v3}, Lcom/JoyFramework/module/login/d/am;->b(Lcom/JoyFramework/module/login/d/am;Landroid/app/Fragment;Z)V

    .line 90
    return-void
.end method
