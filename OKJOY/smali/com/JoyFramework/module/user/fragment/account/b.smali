.class public Lcom/JoyFramework/module/user/fragment/account/b;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/JoyFramework/module/user/a/b$b;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Lcom/JoyFramework/module/user/a/b$a;

.field private f:Lcom/JoyFramework/module/login/c/a;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 47
    new-instance v0, Lcom/JoyFramework/module/user/b/c;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/user/b/c;-><init>(Lcom/JoyFramework/module/user/a/b$b;)V

    .line 48
    return-void
.end method

.method private c()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 120
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/JoyFramework/d/ar;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 122
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u624b\u673a\u53f7\u7801\u683c\u5f0f\u6709\u8bef"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 132
    :goto_21
    return-void

    .line 125
    :cond_22
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/b;->d:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/b;->e:Lcom/JoyFramework/module/user/a/b$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/JoyFramework/module/user/a/b$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 128
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 129
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 130
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 131
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/b;->d:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_21
.end method

.method private d()V
    .registers 6

    .prologue
    .line 135
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->h:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/User;->getPwd()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/b;->i:Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/b;->e:Lcom/JoyFramework/module/user/a/b$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/JoyFramework/module/user/fragment/account/b;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/JoyFramework/module/user/fragment/account/b;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/JoyFramework/module/user/a/b$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/user/a/b$a;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/account/b;->e:Lcom/JoyFramework/module/user/a/b$a;

    .line 146
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 30
    check-cast p1, Lcom/JoyFramework/module/user/a/b$a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/user/fragment/account/b;->a(Lcom/JoyFramework/module/user/a/b$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 152
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->h:Ljava/lang/String;

    sput-object v0, Lcom/JoyFramework/a/a;->D:Ljava/lang/String;

    .line 153
    const/4 v0, 0x1

    sput-boolean v0, Lcom/JoyFramework/a/a;->s:Z

    .line 155
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->readUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getPwd()Ljava/lang/String;

    .line 156
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->readUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/bw;->b(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 159
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/b;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/JoyFramework/module/user/fragment/account/b;->i:Ljava/lang/String;

    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/JoyFramework/user/UserManager;->readUser()Lcom/JoyFramework/user/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/JoyFramework/user/UserManager;->saveUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v0, Lcom/JoyFramework/user/LoginUser;

    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/b;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/JoyFramework/module/user/fragment/account/b;->i:Ljava/lang/String;

    sget-object v3, Lcom/JoyFramework/user/LoginUser$LoginType;->ACCOUNT_PWD:Lcom/JoyFramework/user/LoginUser$LoginType;

    invoke-direct {v0, v1, v2, v3}, Lcom/JoyFramework/user/LoginUser;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/user/LoginUser$LoginType;)V

    .line 165
    :goto_55
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Lcom/JoyFramework/user/LoginUser;)V

    .line 167
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->g:Z

    if-eqz v0, :cond_87

    .line 168
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->a()V

    .line 174
    :cond_63
    :goto_63
    return-void

    .line 162
    :cond_64
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/b;->h:Ljava/lang/String;

    const-string v2, ""

    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/JoyFramework/user/UserManager;->readUser()Lcom/JoyFramework/user/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/JoyFramework/user/UserManager;->saveUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v0, Lcom/JoyFramework/user/LoginUser;

    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/b;->h:Ljava/lang/String;

    const-string v2, ""

    sget-object v3, Lcom/JoyFramework/user/LoginUser$LoginType;->ACCOUNT_PWD:Lcom/JoyFramework/user/LoginUser$LoginType;

    invoke-direct {v0, v1, v2, v3}, Lcom/JoyFramework/user/LoginUser;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/user/LoginUser$LoginType;)V

    goto :goto_55

    .line 170
    :cond_87
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 171
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/b;->a(Landroid/app/Activity;)V

    goto :goto_63
.end method

.method public b(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 179
    new-instance v0, Lcom/JoyFramework/module/login/c/a;

    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/b;->a:Landroid/widget/TextView;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    invoke-direct/range {v0 .. v5}, Lcom/JoyFramework/module/login/c/a;-><init>(Landroid/widget/TextView;JJ)V

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->f:Lcom/JoyFramework/module/login/c/a;

    .line 180
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->f:Lcom/JoyFramework/module/login/c/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/c/a;->start()Landroid/os/CountDownTimer;

    .line 181
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->g:Z

    if-eqz v0, :cond_6

    .line 191
    const/4 v0, 0x0

    .line 194
    :goto_5
    return v0

    .line 193
    :cond_6
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/b;->a(Landroid/app/Activity;)V

    .line 194
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 186
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 107
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "verifyTv"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 108
    invoke-direct {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->c()V

    .line 116
    :cond_15
    :goto_15
    return-void

    .line 109
    :cond_16
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bindPhoneBtn"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_28

    .line 110
    invoke-direct {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->d()V

    goto :goto_15

    .line 111
    :cond_28
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_bind_phone_back"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3a

    .line 112
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->a()V

    goto :goto_15

    .line 113
    :cond_3a
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_bind_phone_close"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 114
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/b;->a(Landroid/app/Activity;)V

    goto :goto_15
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
    .registers 8

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_frg_bindphone"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "id_frg_bind_phone_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/b;->a(Landroid/view/View;)V

    .line 62
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "verifyTv"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->a:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "bindPhoneBtn"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->b:Landroid/widget/Button;

    .line 64
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "phoneET"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->c:Landroid/widget/EditText;

    .line 65
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "verifyET"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->d:Landroid/widget/EditText;

    .line 67
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_8e

    .line 74
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "shouldShowBack"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->g:Z

    .line 77
    :cond_8e
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_bind_phone_back"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_bind_phone_close"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->g:Z

    if-nez v0, :cond_c7

    .line 81
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_bind_phone_back"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :cond_c7
    return-object v1
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 96
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->f:Lcom/JoyFramework/module/login/c/a;

    if-eqz v0, :cond_f

    .line 97
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->f:Lcom/JoyFramework/module/login/c/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/c/a;->cancel()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->f:Lcom/JoyFramework/module/login/c/a;

    .line 100
    :cond_f
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->e:Lcom/JoyFramework/module/user/a/b$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/user/a/b$a;->b()V

    .line 101
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/b;->e:Lcom/JoyFramework/module/user/a/b$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/user/a/b$a;->a()V

    .line 91
    return-void
.end method
