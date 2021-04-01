.class public Lcom/JoyFramework/module/user/fragment/account/m;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/JoyFramework/module/user/a/e$b;


# instance fields
.field private a:Lcom/JoyFramework/module/user/a/e$a;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 41
    new-instance v0, Lcom/JoyFramework/module/user/b/l;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/user/b/l;-><init>(Lcom/JoyFramework/module/user/a/e$b;)V

    .line 42
    return-void
.end method

.method private c()V
    .registers 7

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 98
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/m;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/m;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/JoyFramework/module/user/fragment/account/m;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 102
    const-string v3, "\u539f\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v0, v3}, Lcom/JoyFramework/module/user/fragment/account/m;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    const-string v3, "\u65b0\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v1, v3}, Lcom/JoyFramework/module/user/fragment/account/m;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    const-string v3, "\u518d\u6b21\u8f93\u5165\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v2, v3}, Lcom/JoyFramework/module/user/fragment/account/m;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 115
    :cond_44
    :goto_44
    return-void

    .line 105
    :cond_45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_51

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_5d

    .line 106
    :cond_51
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5bc6\u7801\u97006~20\u4f4d\u957f\u5ea6"

    new-array v2, v4, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_44

    .line 109
    :cond_5d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 110
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4e24\u6b21\u5bc6\u7801\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    new-array v2, v4, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_44

    .line 113
    :cond_6f
    iget-object v2, p0, Lcom/JoyFramework/module/user/fragment/account/m;->a:Lcom/JoyFramework/module/user/a/e$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/JoyFramework/module/user/a/e$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/user/a/e$a;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/account/m;->a:Lcom/JoyFramework/module/user/a/e$a;

    .line 127
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 26
    check-cast p1, Lcom/JoyFramework/module/user/a/e$a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/user/fragment/account/m;->a(Lcom/JoyFramework/module/user/a/e$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 133
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/m;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v1

    sget-object v2, Lcom/JoyFramework/a/a;->A:Ljava/lang/String;

    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/JoyFramework/user/UserManager;->saveUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v1, Lcom/JoyFramework/user/LoginUser;

    sget-object v2, Lcom/JoyFramework/a/a;->A:Ljava/lang/String;

    sget-object v3, Lcom/JoyFramework/user/LoginUser$LoginType;->ACCOUNT_PWD:Lcom/JoyFramework/user/LoginUser$LoginType;

    invoke-direct {v1, v2, v0, v3}, Lcom/JoyFramework/user/LoginUser;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/user/LoginUser$LoginType;)V

    .line 136
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Lcom/JoyFramework/user/LoginUser;)V

    .line 137
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->a()V

    .line 138
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 145
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 81
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "pwdchangesPwdBtn"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 82
    invoke-direct {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->c()V

    .line 94
    :cond_16
    :goto_16
    return-void

    .line 83
    :cond_17
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_pwd_change_pwd_back"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_29

    .line 84
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->a()V

    goto :goto_16

    .line 85
    :cond_29
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_pwd_change_pwd_close"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3f

    .line 86
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/m;->a(Landroid/app/Activity;)V

    goto :goto_16

    .line 87
    :cond_3f
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_pwd_change_pwd_change_edit"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 88
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/c;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/c;-><init>()V

    .line 89
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 90
    const-string v2, "shouldShowBack"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/user/fragment/account/c;->setArguments(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/user/fragment/account/m;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    goto :goto_16
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_frg_pwd_changes_pwd"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "id_frg_pwd_change_pwd_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/m;->a(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "oldPasswordET"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/m;->b:Landroid/widget/EditText;

    .line 50
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "newPasswordET"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/m;->c:Landroid/widget/EditText;

    .line 51
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "againPasswordET"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/m;->d:Landroid/widget/EditText;

    .line 52
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "pwdchangesPwdBtn"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/m;->e:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/m;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_pwd_change_pwd_account_name"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/m;->f:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_pwd_change_pwd_change_edit"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/m;->g:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_pwd_change_pwd_account_name_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/m;->h:Landroid/widget/LinearLayout;

    .line 60
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_pwd_change_pwd_back"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_pwd_change_pwd_close"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget-boolean v0, Lcom/JoyFramework/a/a;->r:Z

    if-nez v0, :cond_d3

    .line 64
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/m;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :goto_d2
    return-object v1

    .line 66
    :cond_d3
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/m;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d2
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/m;->a:Lcom/JoyFramework/module/user/a/e$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/user/a/e$a;->b()V

    .line 121
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 73
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onStart()V

    .line 74
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/m;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/JoyFramework/module/user/fragment/account/m;->a(Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    .line 75
    return-void
.end method
