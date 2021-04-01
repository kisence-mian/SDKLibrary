.class Lcom/JoyFramework/module/user/fragment/account/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$e;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/user/fragment/account/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/user/fragment/account/c;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/account/f;->a:Lcom/JoyFramework/module/user/fragment/account/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 166
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/n;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/n;-><init>()V

    .line 167
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 168
    const-string v2, "shouldShowBack"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/user/fragment/account/n;->setArguments(Landroid/os/Bundle;)V

    .line 170
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/f;->a:Lcom/JoyFramework/module/user/fragment/account/c;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/JoyFramework/module/user/fragment/account/c;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    .line 172
    return-void
.end method
