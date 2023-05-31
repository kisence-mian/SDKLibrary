.class public Lcom/JoyFramework/module/user/fragment/account/n;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/JoyFramework/module/user/a/c$b;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/JoyFramework/module/user/a/c$a;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 38
    new-instance v0, Lcom/JoyFramework/module/user/b/f;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/user/b/f;-><init>(Lcom/JoyFramework/module/user/a/c$b;)V

    .line 39
    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 156
    sget-boolean v0, Lcom/JoyFramework/a/a;->n:Z

    if-eqz v0, :cond_21

    .line 157
    sget-boolean v0, Lcom/JoyFramework/a/a;->o:Z

    if-nez v0, :cond_11

    .line 158
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/c/e;->g()V

    .line 169
    :goto_10
    return-void

    .line 160
    :cond_11
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/c/e;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/c/e;->d(I)V

    goto :goto_10

    .line 163
    :cond_21
    sget-boolean v0, Lcom/JoyFramework/a/a;->o:Z

    if-nez v0, :cond_2d

    .line 164
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/JoyFramework/c/e;->a(ZI)V

    goto :goto_10

    .line 166
    :cond_2d
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/JoyFramework/c/e;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/c/e;->a(ZI)V

    goto :goto_10
.end method

.method private d()V
    .registers 5

    .prologue
    .line 172
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/n;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 175
    const-string v2, "\u8eab\u4efd\u8bc1\u59d3\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v0, v2}, Lcom/JoyFramework/module/user/fragment/account/n;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "\u8eab\u4efd\u8bc1\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v1, v2}, Lcom/JoyFramework/module/user/fragment/account/n;->stringIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 179
    :cond_2c
    :goto_2c
    return-void

    .line 178
    :cond_2d
    iget-object v2, p0, Lcom/JoyFramework/module/user/fragment/account/n;->e:Lcom/JoyFramework/module/user/a/c$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/JoyFramework/module/user/a/c$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method


# virtual methods
.method public a(Lcom/JoyFramework/module/user/a/c$a;)V
    .registers 2

    .prologue
    .line 195
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/account/n;->e:Lcom/JoyFramework/module/user/a/c$a;

    .line 196
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 25
    check-cast p1, Lcom/JoyFramework/module/user/a/c$a;

    invoke-virtual {p0, p1}, Lcom/JoyFramework/module/user/fragment/account/n;->a(Lcom/JoyFramework/module/user/a/c$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 206
    invoke-direct {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->c()V

    .line 207
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->f:Z

    if-eqz v0, :cond_17

    .line 208
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->a()V

    .line 212
    :goto_16
    return-void

    .line 210
    :cond_17
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_16
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 221
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 217
    return-void
.end method

.method public b()Z
    .registers 6

    .prologue
    .line 126
    sget-boolean v0, Lcom/JoyFramework/a/a;->t:Z

    if-nez v0, :cond_29

    .line 128
    sget-boolean v0, Lcom/JoyFramework/a/a;->q:Z

    if-eqz v0, :cond_1f

    sget-boolean v0, Lcom/JoyFramework/a/a;->o:Z

    if-nez v0, :cond_1f

    .line 129
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/a/a;->T:Ljava/lang/String;

    new-instance v2, Lcom/JoyFramework/module/user/fragment/account/o;

    invoke-direct {v2, p0}, Lcom/JoyFramework/module/user/fragment/account/o;-><init>(Lcom/JoyFramework/module/user/fragment/account/n;)V

    const-string v3, "\u786e\u5b9a"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;Z)V

    .line 135
    const/4 v0, 0x1

    .line 146
    :goto_1e
    return v0

    .line 137
    :cond_1f
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->f:Z

    if-eqz v0, :cond_26

    .line 138
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->a()V

    .line 140
    :cond_26
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->f:Z

    goto :goto_1e

    .line 143
    :cond_29
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->f:Z

    if-eqz v0, :cond_30

    .line 144
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->a()V

    .line 146
    :cond_30
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->f:Z

    goto :goto_1e
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 83
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_real_name_ensure"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_18

    .line 84
    invoke-direct {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->d()V

    .line 122
    :cond_17
    :goto_17
    return-void

    .line 85
    :cond_18
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_real_name_back"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6c

    .line 86
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->g:Z

    if-eqz v0, :cond_36

    .line 87
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/a/a;->T:Ljava/lang/String;

    const-string v2, "\u786e\u5b9a"

    invoke-static {v0, v1, v5, v2, v4}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;Z)V

    goto :goto_17

    .line 90
    :cond_36
    sget-boolean v0, Lcom/JoyFramework/a/a;->t:Z

    if-nez v0, :cond_4e

    .line 91
    sget-boolean v0, Lcom/JoyFramework/a/a;->q:Z

    if-eqz v0, :cond_4e

    sget-boolean v0, Lcom/JoyFramework/a/a;->o:Z

    if-nez v0, :cond_4e

    .line 92
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/a/a;->T:Ljava/lang/String;

    const-string v2, "\u786e\u5b9a"

    invoke-static {v0, v1, v5, v2, v4}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;Z)V

    goto :goto_17

    .line 96
    :cond_4e
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->f:Z

    if-nez v0, :cond_68

    .line 97
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/n;->a(Landroid/app/Activity;)V

    .line 98
    invoke-direct {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->c()V

    .line 102
    :goto_5c
    sget-boolean v0, Lcom/JoyFramework/a/a;->o:Z

    if-nez v0, :cond_17

    .line 103
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/c/e;->g()V

    goto :goto_17

    .line 100
    :cond_68
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->a()V

    goto :goto_5c

    .line 105
    :cond_6c
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "l_real_name_close"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 106
    iget-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->g:Z

    if-eqz v0, :cond_8a

    .line 107
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/a/a;->T:Ljava/lang/String;

    const-string v2, "\u786e\u5b9a"

    invoke-static {v0, v1, v5, v2, v4}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;Z)V

    goto :goto_17

    .line 110
    :cond_8a
    sget-boolean v0, Lcom/JoyFramework/a/a;->t:Z

    if-nez v0, :cond_a3

    .line 111
    sget-boolean v0, Lcom/JoyFramework/a/a;->q:Z

    if-eqz v0, :cond_a3

    sget-boolean v0, Lcom/JoyFramework/a/a;->o:Z

    if-nez v0, :cond_a3

    .line 112
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/a/a;->T:Ljava/lang/String;

    const-string v2, "\u786e\u5b9a"

    invoke-static {v0, v1, v5, v2, v4}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;Z)V

    goto/16 :goto_17

    .line 116
    :cond_a3
    invoke-direct {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->c()V

    .line 117
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/n;->a(Landroid/app/Activity;)V

    goto/16 :goto_17
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_frg_real_name_validate"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 44
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "id_frg_real_name_validate_layout"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/user/fragment/account/n;->a(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_real_name_input_name"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->a:Landroid/widget/EditText;

    .line 47
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_real_name_input_id"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->b:Landroid/widget/EditText;

    .line 48
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_real_name_ensure"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->c:Landroid/widget/Button;

    .line 49
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_real_name_tip"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->d:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    sget-boolean v0, Lcom/JoyFramework/a/a;->o:Z

    if-nez v0, :cond_b4

    .line 65
    :goto_7b
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_91

    .line 67
    const-string v2, "shouldShowBack"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/JoyFramework/module/user/fragment/account/n;->f:Z

    .line 68
    const-string v2, "notAllowClose"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->g:Z

    .line 72
    :cond_91
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_real_name_back"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "l_real_name_close"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-object v1

    .line 55
    :cond_b4
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->e:Lcom/JoyFramework/module/user/a/c$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/user/fragment/account/n;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/JoyFramework/module/user/a/c$a;->a(Landroid/content/Context;)V

    .line 57
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 58
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 59
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 60
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 61
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->c:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->d:Landroid/widget/TextView;

    const-string v2, "\u60a8\u5df2\u5b9e\u540d\u8ba4\u8bc1\u6210\u529f\uff0c\u5982\u9700\u4fee\u6539\uff0c\u8bf7\u8054\u7cfb\u5ba2\u670d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7b
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 189
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 190
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->e:Lcom/JoyFramework/module/user/a/c$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/user/a/c$a;->b()V

    .line 191
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 183
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 184
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/n;->e:Lcom/JoyFramework/module/user/a/c$a;

    invoke-interface {v0}, Lcom/JoyFramework/module/user/a/c$a;->a()V

    .line 185
    return-void
.end method
