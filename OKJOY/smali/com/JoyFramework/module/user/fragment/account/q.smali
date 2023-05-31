.class public Lcom/JoyFramework/module/user/fragment/account/q;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/JoyFramework/module/user/a/f$b;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Lcom/JoyFramework/module/login/c/a;

.field private f:Lcom/JoyFramework/module/user/a/f$a;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 47
    new-instance v0, Lcom/JoyFramework/module/user/b/n;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/user/b/n;-><init>(Lcom/JoyFramework/module/user/a/f$b;)V

    .line 48
    return-void
.end method

.method private c()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 113
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/JoyFramework/d/ar;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 115
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u624b\u673a\u53f7\u7801\u683c\u5f0f\u6709\u8bef"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 124
    :goto_21
    return-void

    .line 118
    :cond_22
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/q;->f:Lcom/JoyFramework/module/user/a/f$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/JoyFramework/module/user/a/f$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 120
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 121
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 122
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 123
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/q;->d:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_21
.end method

.method private c(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 224
    .line 225
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 226
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/a/a;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/JoyFramework/module/user/fragment/account/q;->h:Ljava/lang/String;

    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/JoyFramework/user/UserManager;->readUser()Lcom/JoyFramework/user/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/JoyFramework/user/UserManager;->saveUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v0, Lcom/JoyFramework/user/LoginUser;

    sget-object v1, Lcom/JoyFramework/a/a;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/JoyFramework/module/user/fragment/account/q;->h:Ljava/lang/String;

    sget-object v3, Lcom/JoyFramework/user/LoginUser$LoginType;->ACCOUNT_PWD:Lcom/JoyFramework/user/LoginUser$LoginType;

    invoke-direct {v0, v1, v2, v3}, Lcom/JoyFramework/user/LoginUser;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/user/LoginUser$LoginType;)V

    .line 232
    :goto_2a
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Lcom/JoyFramework/user/LoginUser;)V

    .line 233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 234
    invoke-static {p1}, Lcom/JoyFramework/d/bw;->b(Ljava/lang/String;)V

    .line 237
    :cond_3a
    return-void

    .line 229
    :cond_3b
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/a/a;->A:Ljava/lang/String;

    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/JoyFramework/user/User;->getPwd()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/JoyFramework/user/UserManager;->readUser()Lcom/JoyFramework/user/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/JoyFramework/user/UserManager;->saveUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v0, Lcom/JoyFramework/user/LoginUser;

    sget-object v1, Lcom/JoyFramework/a/a;->A:Ljava/lang/String;

    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/JoyFramework/user/User;->getPwd()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/JoyFramework/user/LoginUser$LoginType;->ACCOUNT_PWD:Lcom/JoyFramework/user/LoginUser$LoginType;

    invoke-direct {v0, v1, v2, v3}, Lcom/JoyFramework/user/LoginUser;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/user/LoginUser$LoginType;)V

    goto :goto_2a
.end method

.method private d()V
    .registers 5

    .prologue
    .line 127
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->g:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/User;->getPwd()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/q;->h:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/q;->g:Ljava/lang/String;

    const-string v2, "\u624b\u673a\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v1, v2}, Lcom/JoyFramework/module/user/fragment/account/q;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v0, v1}, Lcom/JoyFramework/module/user/fragment/account/q;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 139
    :cond_3e
    :goto_3e
    return-void

    .line 133
    :cond_3f
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/q;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/JoyFramework/d/ar;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 134
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u624b\u673a\u53f7\u7801\u683c\u5f0f\u6709\u8bef"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_3e

    .line 137
    :cond_54
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/q;->f:Lcom/JoyFramework/module/user/a/f$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/JoyFramework/module/user/fragment/account/q;->g:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/JoyFramework/module/user/a/f$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/user/a/f$a;)V
    .registers 2

    .prologue
    .line 254
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/account/q;->f:Lcom/JoyFramework/module/user/a/f$a;

    .line 255
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 31
    check-cast p1, Lcom/JoyFramework/module/user/a/f$a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/user/fragment/account/q;->a(Lcom/JoyFramework/module/user/a/f$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 242
    new-instance v0, Lcom/JoyFramework/module/login/c/a;

    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/q;->b:Landroid/widget/TextView;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    invoke-direct/range {v0 .. v5}, Lcom/JoyFramework/module/login/c/a;-><init>(Landroid/widget/TextView;JJ)V

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->e:Lcom/JoyFramework/module/login/c/a;

    .line 243
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->e:Lcom/JoyFramework/module/login/c/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/c/a;->start()Landroid/os/CountDownTimer;

    .line 244
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 143
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 145
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/q;->c(Ljava/lang/String;)V

    .line 147
    sget-boolean v0, Lcom/JoyFramework/a/a;->r:Z

    if-eqz v0, :cond_27

    .line 148
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4e3a\u4e86\u60a8\u7684\u8d26\u53f7\u5b89\u5168\uff0c\u8bf7\u5c3d\u5feb\u7ed1\u5b9a\u60a8\u7684\u8d26\u53f7\u3002\u4e00\u65e6\u4e22\u5931\uff0c\u6982\u4e0d\u8d1f\u8d23\u3002"

    new-instance v2, Lcom/JoyFramework/module/user/fragment/account/r;

    invoke-direct {v2, p0}, Lcom/JoyFramework/module/user/fragment/account/r;-><init>(Lcom/JoyFramework/module/user/fragment/account/q;)V

    const-string v3, "\u7acb\u5373\u7ed1\u5b9a"

    const-string v4, "\u53d6\u6d88"

    invoke-static/range {v0 .. v5}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 218
    :goto_26
    return-void

    .line 161
    :cond_27
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4e3a\u4e86\u60a8\u7684\u8d26\u53f7\u5b89\u5168\uff0c\u8bf7\u5c3d\u5feb\u7ed1\u5b9a\u60a8\u7684\u624b\u673a\uff0c\u4e00\u65e6\u4e22\u5931\uff0c\u6982\u4e0d\u8d1f\u8d23\u3002"

    new-instance v2, Lcom/JoyFramework/module/user/fragment/account/s;

    invoke-direct {v2, p0}, Lcom/JoyFramework/module/user/fragment/account/s;-><init>(Lcom/JoyFramework/module/user/fragment/account/q;)V

    const-string v3, "\u7acb\u5373\u7ed1\u5b9a"

    const-string v4, "\u53d6\u6d88"

    invoke-static/range {v0 .. v5}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_26
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 249
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 100
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "unbindingPhoneBtn"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 101
    invoke-direct {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->d()V

    .line 109
    :cond_15
    :goto_15
    return-void

    .line 102
    :cond_16
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "verifyTv"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_28

    .line 103
    invoke-direct {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->c()V

    goto :goto_15

    .line 104
    :cond_28
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_unbind_phone_back"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3a

    .line 105
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->a()V

    goto :goto_15

    .line 106
    :cond_3a
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_unbind_phone_close"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 107
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/q;->a(Landroid/app/Activity;)V

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
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_frg_unbunding_user_phone"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 60
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "id_frg_unbinding_user_phone_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/q;->a(Landroid/view/View;)V

    .line 62
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "unbindingPhoneBtn"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->a:Landroid/widget/Button;

    .line 63
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "verifyTv"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->b:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "phoneET"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->c:Landroid/widget/EditText;

    .line 65
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "verifyET"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->d:Landroid/widget/EditText;

    .line 68
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->c:Landroid/widget/EditText;

    sget-object v2, Lcom/JoyFramework/a/a;->D:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_unbind_phone_back"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_unbind_phone_close"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-object v1
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 89
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->e:Lcom/JoyFramework/module/login/c/a;

    if-eqz v0, :cond_f

    .line 90
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->e:Lcom/JoyFramework/module/login/c/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/c/a;->cancel()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->e:Lcom/JoyFramework/module/login/c/a;

    .line 93
    :cond_f
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->f:Lcom/JoyFramework/module/user/a/f$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/user/a/f$a;->b()V

    .line 94
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 83
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/q;->f:Lcom/JoyFramework/module/user/a/f$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/user/a/f$a;->a()V

    .line 84
    return-void
.end method
