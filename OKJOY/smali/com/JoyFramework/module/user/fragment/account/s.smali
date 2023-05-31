.class Lcom/JoyFramework/module/user/fragment/account/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$c;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/user/fragment/account/q;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/user/fragment/account/q;)V
    .registers 2

    .prologue
    .line 161
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/account/s;->a:Lcom/JoyFramework/module/user/fragment/account/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 164
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/b;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/b;-><init>()V

    .line 165
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/s;->a:Lcom/JoyFramework/module/user/fragment/account/q;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/JoyFramework/module/user/fragment/account/q;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    .line 166
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/s;->a:Lcom/JoyFramework/module/user/fragment/account/q;

    invoke-virtual {v0}, Lcom/JoyFramework/module/user/fragment/account/q;->a()V

    .line 171
    return-void
.end method
