.class Lcom/JoyFramework/wight/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/wight/ServerOrRoleListDialog$a;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)V
    .registers 2

    .prologue
    .line 208
    iput-object p1, p0, Lcom/JoyFramework/wight/m;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/JoyFramework/remote/bean/am;)V
    .registers 6

    .prologue
    .line 211
    iget-object v0, p0, Lcom/JoyFramework/wight/m;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v0, p1}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->a(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;Lcom/JoyFramework/remote/bean/am;)Lcom/JoyFramework/remote/bean/am;

    .line 212
    iget-object v0, p0, Lcom/JoyFramework/wight/m;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v0}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->f(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/wight/m;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v1}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->g(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Lcom/JoyFramework/remote/bean/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/remote/bean/am;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/JoyFramework/wight/m;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v0}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->f(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/wight/m;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v1}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->d(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/wight/m;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v2}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->d(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "joygame_theme_blue"

    invoke-static {v2, v3}, Lcom/JoyFramework/d/as;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object v0, p0, Lcom/JoyFramework/wight/m;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;Z)Z

    .line 215
    return-void
.end method

.method public a(Lcom/JoyFramework/remote/bean/m;)V
    .registers 2

    .prologue
    .line 220
    return-void
.end method
