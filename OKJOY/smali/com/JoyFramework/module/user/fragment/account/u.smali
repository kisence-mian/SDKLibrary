.class public Lcom/JoyFramework/module/user/fragment/account/u;
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

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 90
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_user_info_change_pwd"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1c

    .line 92
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/a;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/a;-><init>()V

    .line 93
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/user/fragment/account/u;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    .line 135
    :cond_1b
    :goto_1b
    return-void

    .line 95
    :cond_1c
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_user_info_bind_phone"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_40

    .line 97
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/b;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/b;-><init>()V

    .line 98
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 99
    const-string v2, "shouldShowBack"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/user/fragment/account/b;->setArguments(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/user/fragment/account/u;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    goto :goto_1b

    .line 103
    :cond_40
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_user_info_unbind_phone"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_57

    .line 105
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/q;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/q;-><init>()V

    .line 106
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/user/fragment/account/u;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    goto :goto_1b

    .line 108
    :cond_57
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_user_info_real_name_verify"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_7b

    .line 110
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/n;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/n;-><init>()V

    .line 111
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 112
    const-string v2, "shouldShowBack"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/user/fragment/account/n;->setArguments(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/user/fragment/account/u;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    goto :goto_1b

    .line 115
    :cond_7b
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_user_info_recharge_record"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_92

    .line 117
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/p;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/p;-><init>()V

    .line 118
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/user/fragment/account/u;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    goto :goto_1b

    .line 119
    :cond_92
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_user_info_account_id"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_c5

    .line 120
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 121
    const-string v1, "text"

    sget-object v2, Lcom/JoyFramework/a/a;->B:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 123
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u7528\u6237\u7f16\u53f7\u590d\u5236\u6210\u529f"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto/16 :goto_1b

    .line 124
    :cond_c5
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_account_center_base_back"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_d8

    .line 125
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->a()V

    goto/16 :goto_1b

    .line 126
    :cond_d8
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_account_center_base_close"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_ef

    .line 127
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/u;->a(Landroid/app/Activity;)V

    goto/16 :goto_1b

    .line 128
    :cond_ef
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_account_info_change_account"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 129
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/c;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/c;-><init>()V

    .line 130
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 131
    const-string v2, "shouldShowBack"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/user/fragment/account/c;->setArguments(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/user/fragment/account/u;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    goto/16 :goto_1b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "joy_frg_user_info"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 41
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "l_user_info_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/u;->a(Landroid/view/View;)V

    .line 42
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_user_info_account_id"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->a:Landroid/widget/FrameLayout;

    .line 43
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_user_info_change_pwd"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->b:Landroid/widget/FrameLayout;

    .line 44
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_user_info_bind_phone"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->c:Landroid/widget/FrameLayout;

    .line 45
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_user_info_unbind_phone"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->d:Landroid/widget/FrameLayout;

    .line 46
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_user_info_real_name_verify"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->e:Landroid/widget/FrameLayout;

    .line 47
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_user_info_recharge_record"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->f:Landroid/widget/FrameLayout;

    .line 48
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_account_center_base_back"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_account_center_base_close"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_account_info_account_name"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->g:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_account_info_change_account"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_account_info_account_name_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->h:Landroid/widget/LinearLayout;

    .line 55
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget-boolean v0, Lcom/JoyFramework/a/a;->s:Z

    if-eqz v0, :cond_12e

    .line 61
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :goto_118
    sget-boolean v0, Lcom/JoyFramework/a/a;->r:Z

    if-eqz v0, :cond_13e

    .line 71
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_account_info_change_account"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :goto_12d
    return-object v1

    .line 65
    :cond_12e
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_118

    .line 73
    :cond_13e
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_account_info_change_account"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12d
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 140
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 82
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onStart()V

    .line 83
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/u;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/u;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/JoyFramework/module/user/fragment/account/u;->a(Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    .line 84
    return-void
.end method
