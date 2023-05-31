.class public Lcom/JoyFramework/module/user/fragment/account/l;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/JoyFramework/module/user/a/d$b;


# instance fields
.field private a:Lcom/JoyFramework/module/user/a/d$a;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Lcom/JoyFramework/module/login/c/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 48
    new-instance v0, Lcom/JoyFramework/module/user/b/i;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/user/b/i;-><init>(Lcom/JoyFramework/module/user/a/d$b;)V

    .line 49
    return-void
.end method

.method private c()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 117
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/JoyFramework/d/ar;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 119
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u624b\u673a\u53f7\u7801\u683c\u5f0f\u6709\u8bef"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 129
    :goto_21
    return-void

    .line 122
    :cond_22
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/l;->c:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/l;->a:Lcom/JoyFramework/module/user/a/d$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/JoyFramework/module/user/a/d$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 125
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 126
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 127
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 128
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/l;->c:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_21
.end method

.method private d()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 132
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/l;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/JoyFramework/module/user/fragment/account/l;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/JoyFramework/module/user/fragment/account/l;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 137
    const-string v4, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v1, v4}, Lcom/JoyFramework/module/user/fragment/account/l;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_51

    const-string v4, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v2, v4}, Lcom/JoyFramework/module/user/fragment/account/l;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_51

    const-string v4, "\u518d\u6b21\u8f93\u5165\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v3, v4}, Lcom/JoyFramework/module/user/fragment/account/l;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 154
    :cond_51
    :goto_51
    return-void

    .line 140
    :cond_52
    invoke-static {v0}, Lcom/JoyFramework/d/ar;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_64

    .line 141
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u624b\u673a\u53f7\u7801\u683c\u5f0f\u6709\u8bef"

    new-array v2, v6, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_51

    .line 144
    :cond_64
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_77

    .line 145
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5bc6\u7801\u97006~20\u4f4d\u957f\u5ea6"

    new-array v2, v6, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_51

    .line 148
    :cond_77
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    .line 149
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4e24\u6b21\u5bc6\u7801\u4e0d\u4e00\u81f4"

    new-array v2, v6, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_51

    .line 152
    :cond_89
    iget-object v3, p0, Lcom/JoyFramework/module/user/fragment/account/l;->a:Lcom/JoyFramework/module/user/a/d$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-interface {v3, v4, v2, v0, v1}, Lcom/JoyFramework/module/user/a/d$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/user/a/d$a;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/account/l;->a:Lcom/JoyFramework/module/user/a/d$a;

    .line 169
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 30
    check-cast p1, Lcom/JoyFramework/module/user/a/d$a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/user/fragment/account/l;->a(Lcom/JoyFramework/module/user/a/d$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 175
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/l;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v2

    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/JoyFramework/user/UserManager;->saveUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v2, Lcom/JoyFramework/user/LoginUser;

    sget-object v3, Lcom/JoyFramework/user/LoginUser$LoginType;->ACCOUNT_PWD:Lcom/JoyFramework/user/LoginUser$LoginType;

    invoke-direct {v2, v1, v0, v3}, Lcom/JoyFramework/user/LoginUser;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/user/LoginUser$LoginType;)V

    .line 180
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Lcom/JoyFramework/user/LoginUser;)V

    .line 181
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->a()V

    .line 182
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 188
    new-instance v0, Lcom/JoyFramework/module/login/c/a;

    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/l;->f:Landroid/widget/TextView;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    invoke-direct/range {v0 .. v5}, Lcom/JoyFramework/module/login/c/a;-><init>(Landroid/widget/TextView;JJ)V

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->k:Lcom/JoyFramework/module/login/c/a;

    .line 189
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->k:Lcom/JoyFramework/module/login/c/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/c/a;->start()Landroid/os/CountDownTimer;

    .line 190
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 195
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 99
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "verifyTv"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 100
    invoke-direct {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->c()V

    .line 114
    :cond_16
    :goto_16
    return-void

    .line 101
    :cond_17
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "changesUserPasswordBtn"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_29

    .line 102
    invoke-direct {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->d()V

    goto :goto_16

    .line 103
    :cond_29
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_phone_change_pwd_back"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3b

    .line 104
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->a()V

    goto :goto_16

    .line 105
    :cond_3b
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_phone_change_pwd_close"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_51

    .line 106
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/l;->a(Landroid/app/Activity;)V

    goto :goto_16

    .line 107
    :cond_51
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_phone_change_pwd_change_edit"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 108
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/c;

    invoke-direct {v0}, Lcom/JoyFramework/module/user/fragment/account/c;-><init>()V

    .line 109
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 110
    const-string v2, "shouldShowBack"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/user/fragment/account/c;->setArguments(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/user/fragment/account/l;->replaceFragmentToAccountActivity(Landroid/app/Fragment;Z)V

    goto :goto_16
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/JoyFramework/module/a;->onCreate(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_frg_phone_changes_pwd"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "phoneET"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->b:Landroid/widget/EditText;

    .line 61
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "id_frg_phone_change_phone_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/l;->a(Landroid/view/View;)V

    .line 63
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "verifyET"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->c:Landroid/widget/EditText;

    .line 64
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "passwordET"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->d:Landroid/widget/EditText;

    .line 65
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "againpasswordET"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->e:Landroid/widget/EditText;

    .line 66
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "verifyTv"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->f:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "changesUserPasswordBtn"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->g:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->b:Landroid/widget/EditText;

    sget-object v2, Lcom/JoyFramework/a/a;->D:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_phone_change_pwd_account_name"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->h:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_phone_change_pwd_change_edit"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->i:Landroid/widget/TextView;

    .line 78
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_phone_change_pwd_account_name_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->j:Landroid/widget/LinearLayout;

    .line 81
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_phone_change_pwd_back"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_phone_change_pwd_close"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_phone_change_pwd_change_edit"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget-boolean v0, Lcom/JoyFramework/a/a;->r:Z

    if-nez v0, :cond_113

    .line 86
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->i:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    :cond_113
    return-object v1
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 159
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->k:Lcom/JoyFramework/module/login/c/a;

    if-eqz v0, :cond_f

    .line 160
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->k:Lcom/JoyFramework/module/login/c/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/c/a;->cancel()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->k:Lcom/JoyFramework/module/login/c/a;

    .line 163
    :cond_f
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->a:Lcom/JoyFramework/module/user/a/d$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/user/a/d$a;->b()V

    .line 164
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 92
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onStart()V

    .line 93
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/l;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/l;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/JoyFramework/module/user/fragment/account/l;->a(Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    .line 94
    return-void
.end method
