.class Lcom/JoyFramework/wight/l;
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
    .line 169
    iput-object p1, p0, Lcom/JoyFramework/wight/l;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/JoyFramework/remote/bean/am;)V
    .registers 2

    .prologue
    .line 173
    return-void
.end method

.method public a(Lcom/JoyFramework/remote/bean/m;)V
    .registers 6

    .prologue
    .line 177
    iget-object v0, p0, Lcom/JoyFramework/wight/l;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v0, p1}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->a(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;Lcom/JoyFramework/remote/bean/m;)Lcom/JoyFramework/remote/bean/m;

    .line 178
    iget-object v0, p0, Lcom/JoyFramework/wight/l;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v0}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->a(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 179
    iget-object v0, p0, Lcom/JoyFramework/wight/l;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v0}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->a(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog$a;->a(Lcom/JoyFramework/remote/bean/m;)V

    .line 181
    :cond_16
    iget-object v0, p0, Lcom/JoyFramework/wight/l;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v0}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->c(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/wight/l;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v1}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->b(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Lcom/JoyFramework/remote/bean/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/remote/bean/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/JoyFramework/wight/l;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v0}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->c(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/wight/l;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v1}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->d(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/wight/l;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v2}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->d(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "joygame_theme_blue"

    invoke-static {v2, v3}, Lcom/JoyFramework/d/as;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget-object v0, p0, Lcom/JoyFramework/wight/l;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->a(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;Z)Z

    .line 185
    iget-object v0, p0, Lcom/JoyFramework/wight/l;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v0}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->e(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 186
    iget-object v0, p0, Lcom/JoyFramework/wight/l;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v0}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->f(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u8bf7\u9009\u62e9\u89d2\u8272"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/JoyFramework/wight/l;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v0}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->f(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/wight/l;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v1}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->d(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/wight/l;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    invoke-static {v2}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->d(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "joygame_light_grey"

    invoke-static {v2, v3}, Lcom/JoyFramework/d/as;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    iget-object v0, p0, Lcom/JoyFramework/wight/l;->a:Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;->a(Lcom/JoyFramework/wight/GiftBagRoleSelectDialog;Lcom/JoyFramework/remote/bean/am;)Lcom/JoyFramework/remote/bean/am;

    .line 191
    :cond_8e
    return-void
.end method
