.class Lcom/JoyFramework/wight/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/module/login/a/c$a;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/SwitchAccountPopupEditText;)V
    .registers 2

    .prologue
    .line 147
    iput-object p1, p0, Lcom/JoyFramework/wight/w;->a:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/JoyFramework/wight/w;->a:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    invoke-static {v0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->a(Lcom/JoyFramework/wight/SwitchAccountPopupEditText;)V

    .line 151
    iget-object v0, p0, Lcom/JoyFramework/wight/w;->a:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    invoke-static {v0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->b(Lcom/JoyFramework/wight/SwitchAccountPopupEditText;)Lcom/JoyFramework/wight/SwitchAccountPopupEditText$b;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 153
    iget-object v0, p0, Lcom/JoyFramework/wight/w;->a:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    invoke-static {v0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->b(Lcom/JoyFramework/wight/SwitchAccountPopupEditText;)Lcom/JoyFramework/wight/SwitchAccountPopupEditText$b;

    move-result-object v1

    iget-object v0, p0, Lcom/JoyFramework/wight/w;->a:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    invoke-static {v0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->c(Lcom/JoyFramework/wight/SwitchAccountPopupEditText;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    invoke-interface {v1, v0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText$b;->a(Lcom/JoyFramework/user/LoginUser;)V

    .line 155
    :cond_22
    return-void
.end method

.method public b(I)V
    .registers 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/JoyFramework/wight/w;->a:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    invoke-static {v0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->d(Lcom/JoyFramework/wight/SwitchAccountPopupEditText;)Lcom/JoyFramework/wight/SwitchAccountPopupEditText$a;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 160
    iget-object v0, p0, Lcom/JoyFramework/wight/w;->a:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    invoke-static {v0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->d(Lcom/JoyFramework/wight/SwitchAccountPopupEditText;)Lcom/JoyFramework/wight/SwitchAccountPopupEditText$a;

    move-result-object v1

    iget-object v0, p0, Lcom/JoyFramework/wight/w;->a:Lcom/JoyFramework/wight/SwitchAccountPopupEditText;

    invoke-static {v0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText;->c(Lcom/JoyFramework/wight/SwitchAccountPopupEditText;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/user/LoginUser;

    invoke-interface {v1, v0}, Lcom/JoyFramework/wight/SwitchAccountPopupEditText$a;->b(Lcom/JoyFramework/user/LoginUser;)V

    .line 173
    :cond_1d
    return-void
.end method
