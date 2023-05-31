.class public Lcom/JoyFramework/module/user/fragment/account/a;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 61
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_frg_base_change_pwd_password"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1c

    .line 63
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/m;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/m;-><init>()V

    .line 64
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/user/fragment/account/a;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    .line 81
    :cond_1b
    :goto_1b
    return-void

    .line 65
    :cond_1c
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_frg_base_change_pwd_phone"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_33

    .line 67
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/l;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/l;-><init>()V

    .line 68
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/user/fragment/account/a;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    goto :goto_1b

    .line 69
    :cond_33
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_change_pwd_back"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_45

    .line 70
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/a;->a()V

    goto :goto_1b

    .line 71
    :cond_45
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_change_pwd_close"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5b

    .line 72
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/a;->a(Landroid/app/Activity;)V

    goto :goto_1b

    .line 73
    :cond_5b
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_change_pwd_change_edit"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 74
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/c;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/c;-><init>()V

    .line 75
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string v2, "shouldShowBack"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/user/fragment/account/c;->setArguments(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/user/fragment/account/a;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    goto :goto_1b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 26
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "joy_frg_base_change_pwd"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 27
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "l_frg_base_change_pwd_password"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 28
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_frg_base_change_pwd_phone"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 29
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "l_change_pwd_account_name"

    invoke-static {v2, v4}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/JoyFramework/module/user/fragment/account/a;->a:Landroid/widget/TextView;

    .line 30
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "l_change_pwd_change_edit"

    invoke-static {v2, v4}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/JoyFramework/module/user/fragment/account/a;->b:Landroid/widget/TextView;

    .line 31
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "l_change_pwd_account_name_layout"

    invoke-static {v2, v4}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/JoyFramework/module/user/fragment/account/a;->c:Landroid/widget/LinearLayout;

    .line 33
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "l_change_pwd_back"

    invoke-static {v2, v4}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "l_change_pwd_close"

    invoke-static {v2, v4}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    sget-boolean v0, Lcom/JoyFramework/a/a;->s:Z

    if-eqz v0, :cond_ad

    .line 41
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 46
    :goto_a3
    sget-boolean v0, Lcom/JoyFramework/a/a;->r:Z

    if-nez v0, :cond_ac

    .line 47
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    :cond_ac
    return-object v3

    .line 43
    :cond_ad
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_a3
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 54
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onStart()V

    .line 55
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/JoyFramework/module/user/fragment/account/a;->a(Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    .line 56
    return-void
.end method
