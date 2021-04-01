.class public Lcom/JoyFramework/module/user/fragment/account/c;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/JoyFramework/module/user/a/a$b;


# instance fields
.field private a:Lcom/JoyFramework/wight/ClearEditText;

.field private b:Lcom/JoyFramework/wight/ClearEditText;

.field private c:Lcom/JoyFramework/wight/ClearEditText;

.field private d:Landroid/widget/Button;

.field private e:Lcom/JoyFramework/module/user/a/a$a;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 43
    new-instance v0, Lcom/JoyFramework/module/user/b/a;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/user/b/a;-><init>(Lcom/JoyFramework/module/user/a/a$b;)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/user/fragment/account/c;)Lcom/JoyFramework/module/user/a/a$a;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/c;->e:Lcom/JoyFramework/module/user/a/a$a;

    return-object v0
.end method

.method public static b(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 206
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 209
    :cond_1a
    return-void
.end method

.method public static c(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 215
    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 217
    return-void
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/user/a/a$a;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/account/c;->e:Lcom/JoyFramework/module/user/a/a$a;

    .line 133
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 31
    check-cast p1, Lcom/JoyFramework/module/user/a/a$a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/user/fragment/account/c;->a(Lcom/JoyFramework/module/user/a/a$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 138
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v1}, Lcom/JoyFramework/d/ar;->i(Ljava/lang/String;)Z

    move-result v1

    .line 143
    if-eqz v1, :cond_69

    sget-boolean v1, Lcom/JoyFramework/a/a;->s:Z

    if-eqz v1, :cond_69

    .line 149
    :goto_17
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/c;->a:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v1}, Lcom/JoyFramework/wight/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/JoyFramework/module/user/fragment/account/c;->b:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v2}, Lcom/JoyFramework/wight/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v3

    .line 152
    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {v3, v1, v2, v0}, Lcom/JoyFramework/user/UserManager;->saveUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/JoyFramework/user/LoginUser;

    sget-object v3, Lcom/JoyFramework/user/LoginUser$LoginType;->ACCOUNT_PWD:Lcom/JoyFramework/user/LoginUser$LoginType;

    invoke-direct {v0, v1, v2, v3}, Lcom/JoyFramework/user/LoginUser;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/user/LoginUser$LoginType;)V

    .line 155
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Lcom/JoyFramework/user/LoginUser;)V

    .line 157
    sput-boolean v4, Lcom/JoyFramework/a/a;->r:Z

    .line 159
    sput-boolean v4, Lcom/JoyFramework/a/a;->t:Z

    .line 162
    sget-boolean v0, Lcom/JoyFramework/a/a;->q:Z

    if-eqz v0, :cond_71

    sget-boolean v0, Lcom/JoyFramework/a/a;->o:Z

    if-nez v0, :cond_71

    .line 163
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/a/a;->T:Ljava/lang/String;

    new-instance v2, Lcom/JoyFramework/module/user/fragment/account/f;

    invoke-direct {v2, p0}, Lcom/JoyFramework/module/user/fragment/account/f;-><init>(Lcom/JoyFramework/module/user/fragment/account/c;)V

    const-string v3, "\u786e\u5b9a"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;Z)V

    .line 183
    :cond_68
    :goto_68
    return-void

    .line 146
    :cond_69
    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/JoyFramework/d/bw;->b(Ljava/lang/String;)V

    goto :goto_17

    .line 175
    :cond_71
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/c;->f:Z

    if-eqz v0, :cond_79

    .line 176
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->a()V

    goto :goto_68

    .line 178
    :cond_79
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 179
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/c;->a(Landroid/app/Activity;)V

    goto :goto_68
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 201
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/c;->f:Z

    if-eqz v0, :cond_a

    .line 188
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->a()V

    .line 189
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/c;->f:Z

    .line 194
    :goto_9
    return v0

    .line 191
    :cond_a
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 192
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/c;->a(Landroid/app/Activity;)V

    .line 194
    :cond_17
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 96
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_change_account_ensure"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_90

    .line 98
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/c;->a:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/c;->b:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v1}, Lcom/JoyFramework/wight/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/JoyFramework/module/user/fragment/account/c;->c:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v2}, Lcom/JoyFramework/wight/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 102
    const-string v3, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v0, v3}, Lcom/JoyFramework/module/user/fragment/account/c;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 128
    :cond_46
    :goto_46
    return-void

    .line 105
    :cond_47
    const-string v3, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v1, v3}, Lcom/JoyFramework/module/user/fragment/account/c;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_46

    const-string v3, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v2, v3}, Lcom/JoyFramework/module/user/fragment/account/c;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 108
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_63

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_6f

    .line 109
    :cond_63
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5bc6\u7801\u97006~20\u4f4d\u957f\u5ea6"

    new-array v2, v4, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_46

    .line 112
    :cond_6f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    .line 113
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4e24\u6b21\u5bc6\u7801\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    new-array v2, v4, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_46

    .line 116
    :cond_81
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "\u6b64\u8d26\u53f7\u53ea\u53ef\u7ed1\u5b9a\u4e00\u6b21\uff0c\u7ed1\u5b9a\u540e\u4e0d\u53ef\u4fee\u6539"

    new-instance v4, Lcom/JoyFramework/module/user/fragment/account/e;

    invoke-direct {v4, p0, v0, v1}, Lcom/JoyFramework/module/user/fragment/account/e;-><init>(Lcom/JoyFramework/module/user/fragment/account/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;)V

    goto :goto_46

    .line 122
    :cond_90
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_change_account_back"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_a2

    .line 123
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->a()V

    goto :goto_46

    .line 124
    :cond_a2
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_change_account_close"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_46

    .line 125
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/c;->a(Landroid/app/Activity;)V

    goto :goto_46
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "joy_frg_change_account"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_frg_change_account_input"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/wight/ClearEditText;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/c;->a:Lcom/JoyFramework/wight/ClearEditText;

    .line 50
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_frg_change_account_pwd_once_input"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/wight/ClearEditText;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/c;->b:Lcom/JoyFramework/wight/ClearEditText;

    .line 51
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_frg_change_account_pwd_twice_input"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/wight/ClearEditText;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/c;->c:Lcom/JoyFramework/wight/ClearEditText;

    .line 53
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/c;->a:Lcom/JoyFramework/wight/ClearEditText;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/ClearEditText;->requestFocus()Z

    .line 55
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "id_frg_change_account_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/c;->a(Landroid/view/View;)V

    .line 58
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_change_account_ensure"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/c;->d:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/c;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_change_account_back"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_change_account_close"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v0, Lcom/JoyFramework/module/user/fragment/account/d;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/user/fragment/account/d;-><init>(Lcom/JoyFramework/module/user/fragment/account/c;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_b6

    .line 71
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "shouldShowBack"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/c;->f:Z

    .line 74
    :cond_b6
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/c;->f:Z

    if-nez v0, :cond_cd

    .line 75
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_change_account_back"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :cond_cd
    return-object v1
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onPause()V

    .line 89
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/c;->a:Lcom/JoyFramework/wight/ClearEditText;

    invoke-static {v0}, Lcom/JoyFramework/module/user/fragment/account/c;->b(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 84
    return-void
.end method
