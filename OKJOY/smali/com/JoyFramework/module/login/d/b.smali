.class public Lcom/JoyFramework/module/login/d/b;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/JoyFramework/module/login/b/b$b;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Lcom/JoyFramework/module/login/b/b$a;

.field private h:Lcom/JoyFramework/module/login/c/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 40
    new-instance v0, Lcom/JoyFramework/module/login/e/c;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/login/e/c;-><init>(Lcom/JoyFramework/module/login/b/b$b;)V

    .line 41
    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/JoyFramework/d/ar;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 108
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u624b\u673a\u53f7\u7801\u683c\u5f0f\u6709\u8bef"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 113
    :goto_20
    return-void

    .line 111
    :cond_21
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/b;->d:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/b;->g:Lcom/JoyFramework/module/login/b/b$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/JoyFramework/module/login/b/b$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_20
.end method

.method private d()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 116
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/JoyFramework/module/login/d/b;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/JoyFramework/module/login/d/b;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 119
    iget-object v3, p0, Lcom/JoyFramework/module/login/d/b;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 121
    const-string v4, "\u624b\u673a\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v0, v4}, Lcom/JoyFramework/module/login/d/b;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v1, v4}, Lcom/JoyFramework/module/login/d/b;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v2, v4}, Lcom/JoyFramework/module/login/d/b;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "\u518d\u6b21\u8f93\u5165\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v3, v4}, Lcom/JoyFramework/module/login/d/b;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 138
    :cond_59
    :goto_59
    return-void

    .line 124
    :cond_5a
    invoke-static {v0}, Lcom/JoyFramework/d/ar;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 125
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u624b\u673a\u53f7\u7801\u683c\u5f0f\u6709\u8bef"

    new-array v2, v6, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_59

    .line 128
    :cond_6c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_7f

    .line 129
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5bc6\u7801\u97006~20\u4f4d\u957f\u5ea6"

    new-array v2, v6, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_59

    .line 132
    :cond_7f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    .line 133
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4e24\u6b21\u5bc6\u7801\u4e0d\u4e00\u81f4"

    new-array v2, v6, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_59

    .line 136
    :cond_91
    iget-object v3, p0, Lcom/JoyFramework/module/login/d/b;->g:Lcom/JoyFramework/module/login/b/b$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-interface {v3, v4, v0, v1, v2}, Lcom/JoyFramework/module/login/b/b$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/login/b/b$a;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/b;->g:Lcom/JoyFramework/module/login/b/b$a;

    .line 144
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 24
    check-cast p1, Lcom/JoyFramework/module/login/b/b$a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/login/d/b;->a(Lcom/JoyFramework/module/login/b/b$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 150
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    new-instance v0, Lcom/JoyFramework/module/login/c/a;

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/b;->b:Landroid/widget/TextView;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    invoke-direct/range {v0 .. v5}, Lcom/JoyFramework/module/login/c/a;-><init>(Landroid/widget/TextView;JJ)V

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/b;->h:Lcom/JoyFramework/module/login/c/a;

    .line 156
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/b;->h:Lcom/JoyFramework/module/login/c/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/c/a;->start()Landroid/os/CountDownTimer;

    .line 157
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 92
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "goBackImgBtn"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 93
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 103
    :cond_19
    :goto_19
    return-void

    .line 94
    :cond_1a
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "forgetPasswordBtn"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2c

    .line 95
    invoke-direct {p0}, Lcom/JoyFramework/module/login/d/b;->d()V

    goto :goto_19

    .line 96
    :cond_2c
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "verifyTv"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3e

    .line 97
    invoke-direct {p0}, Lcom/JoyFramework/module/login/d/b;->c()V

    goto :goto_19

    .line 98
    :cond_3e
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_find_back_pwd_back"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_50

    .line 99
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->a()V

    goto :goto_19

    .line 100
    :cond_50
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_find_back_pwd_back2"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 101
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->a()V

    goto :goto_19
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/JoyFramework/module/a;->onCreate(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_frg_forgetpassword"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "id_frg_forget_pwd_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/login/d/b;->a(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "forgetPasswordBtn"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/b;->a:Landroid/widget/Button;

    .line 56
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "verifyTv"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/b;->b:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "phoneET"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/b;->c:Landroid/widget/EditText;

    .line 58
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "verifyET"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/b;->d:Landroid/widget/EditText;

    .line 59
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "passwordET"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/b;->e:Landroid/widget/EditText;

    .line 60
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "againPasswordET"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/b;->f:Landroid/widget/EditText;

    .line 62
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/b;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "l_find_back_pwd_back"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/JoyFramework/module/login/d/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "l_find_back_pwd_back2"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-object v1
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 80
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/b;->h:Lcom/JoyFramework/module/login/c/a;

    if-eqz v0, :cond_f

    .line 81
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/b;->h:Lcom/JoyFramework/module/login/c/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/c/a;->cancel()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/module/login/d/b;->h:Lcom/JoyFramework/module/login/c/a;

    .line 84
    :cond_f
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/b;->g:Lcom/JoyFramework/module/login/b/b$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/login/b/b$a;->b()V

    .line 85
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/b;->g:Lcom/JoyFramework/module/login/b/b$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/login/b/b$a;->a()V

    .line 75
    return-void
.end method
