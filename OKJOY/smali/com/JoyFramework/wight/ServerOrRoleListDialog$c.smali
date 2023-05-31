.class Lcom/JoyFramework/wight/ServerOrRoleListDialog$c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/wight/ServerOrRoleListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/wight/ServerOrRoleListDialog$c$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/ServerOrRoleListDialog;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/JoyFramework/wight/ServerOrRoleListDialog;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog$c;->a:Lcom/JoyFramework/wight/ServerOrRoleListDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog$c;->b:Ljava/util/List;

    .line 136
    return-void
.end method


# virtual methods
.method public a(I)Lcom/JoyFramework/remote/bean/m;
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog$c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/m;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/JoyFramework/wight/ServerOrRoleListDialog$c;->a(I)Lcom/JoyFramework/remote/bean/m;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 150
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .prologue
    .line 156
    .line 157
    if-nez p2, :cond_47

    .line 158
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 159
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "l_item_server_and_role_select_k"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 158
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 160
    new-instance v1, Lcom/JoyFramework/wight/ServerOrRoleListDialog$c$a;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/ServerOrRoleListDialog$c$a;-><init>(Lcom/JoyFramework/wight/ServerOrRoleListDialog$c;)V

    .line 162
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "k_item_server_role_select_text"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 161
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/JoyFramework/wight/ServerOrRoleListDialog$c$a;->a:Landroid/widget/TextView;

    .line 164
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 168
    :goto_33
    iget-object v0, p0, Lcom/JoyFramework/wight/ServerOrRoleListDialog$c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/m;

    .line 169
    if-eqz v0, :cond_46

    .line 170
    iget-object v1, v1, Lcom/JoyFramework/wight/ServerOrRoleListDialog$c$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_46
    return-object p2

    .line 166
    :cond_47
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/wight/ServerOrRoleListDialog$c$a;

    move-object v1, v0

    goto :goto_33
.end method
