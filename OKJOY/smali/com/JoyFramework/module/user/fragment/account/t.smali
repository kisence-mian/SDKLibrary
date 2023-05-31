.class public Lcom/JoyFramework/module/user/fragment/account/t;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public b()Z
    .registers 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/t;->a(Landroid/app/Activity;)V

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 70
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_user_center_account"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1c

    .line 72
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/u;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/u;-><init>()V

    .line 73
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/user/fragment/account/t;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    .line 97
    :cond_1b
    :goto_1b
    return-void

    .line 74
    :cond_1c
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_user_center_custom_service"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_44

    .line 76
    new-instance v0, Lcom/JoyFramework/module/user/fragment/a/a;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/a/a;-><init>()V

    .line 77
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 78
    const-string v2, "canBack"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    const-string v2, "canClose"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/user/fragment/a/a;->setArguments(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/user/fragment/account/t;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    goto :goto_1b

    .line 84
    :cond_44
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "l_account_center_back"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5c

    .line 85
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1b

    .line 86
    :cond_5c
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "l_account_center_base_close"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_74

    .line 87
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1b

    .line 88
    :cond_74
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "l_user_center_more_game"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_90

    .line 89
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/c/e;->l(Landroid/app/Activity;)V

    goto :goto_1b

    .line 90
    :cond_90
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "l_account_center_change_account"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 91
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/c;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/c;-><init>()V

    .line 92
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 93
    const-string v2, "shouldShowBack"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/user/fragment/account/c;->setArguments(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/user/fragment/account/t;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    goto/16 :goto_1b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "joy_frg_user_center"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 36
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_account_center_back"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/t;->b:Landroid/widget/FrameLayout;

    .line 37
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_account_center_base_close"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/t;->a:Landroid/widget/FrameLayout;

    .line 38
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_user_center_account"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/t;->c:Landroid/widget/FrameLayout;

    .line 39
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_user_center_custom_service"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/t;->d:Landroid/widget/FrameLayout;

    .line 41
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_user_center_more_game"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/t;->e:Landroid/widget/FrameLayout;

    .line 42
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_account_center_account_name"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/t;->f:Landroid/widget/TextView;

    .line 43
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_account_center_account_name_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/t;->g:Landroid/widget/LinearLayout;

    .line 44
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_account_center_change_account"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget-boolean v0, Lcom/JoyFramework/a/a;->r:Z

    if-eqz v0, :cond_d5

    .line 47
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_account_center_change_account"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    :goto_bb
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/t;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/t;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/t;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/t;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/t;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-object v1

    .line 49
    :cond_d5
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_account_center_change_account"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_bb
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 102
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 63
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onStart()V

    .line 64
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/t;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/t;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/JoyFramework/module/user/fragment/account/t;->a(Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    .line 65
    return-void
.end method
