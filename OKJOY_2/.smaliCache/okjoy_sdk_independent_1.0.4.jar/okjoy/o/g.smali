.class public Lokjoy/o/g;
.super Lokjoy/c/b;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Landroid/view/View;

.field public c:Landroid/widget/Button;

.field public d:Landroid/widget/Button;

.field public e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

.field public f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

.field public g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

.field public h:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

.field public i:Landroid/widget/Button;

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokjoy/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13

    iget-object v0, p0, Lokjoy/o/g;->c:Landroid/widget/Button;

    if-ne v0, p1, :cond_9

    invoke-virtual {p0}, Lokjoy/c/b;->a()V

    goto/16 :goto_1a6

    :cond_9
    iget-object v0, p0, Lokjoy/o/g;->d:Landroid/widget/Button;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_18

    new-instance p1, Lokjoy/o/f;

    invoke-direct {p1}, Lokjoy/o/f;-><init>()V

    invoke-virtual {p0, p1, v1}, Lokjoy/c/b;->a(Landroid/app/Fragment;Z)V

    goto/16 :goto_1a6

    :cond_18
    iget-object v0, p0, Lokjoy/o/g;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->d:Landroid/widget/Button;

    const-string v2, "\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v3, 0x0

    if-ne v0, p1, :cond_54

    .line 1
    iget-object p1, p0, Lokjoy/o/g;->e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1a6

    :cond_38
    new-instance v0, Lokjoy/u/a;

    iget-object v1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 2
    const-string v1, "\u53d1\u9001\u4e2d..."

    iput-object v1, v0, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lokjoy/u/a;->show()V

    iget-object v1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    new-instance v2, Lokjoy/o/i;

    invoke-direct {v2, p0, v0}, Lokjoy/o/i;-><init>(Lokjoy/o/g;Lokjoy/u/a;)V

    const-string v0, "find"

    invoke-static {v1, p1, v0, v2}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lokjoy/h/c;)V

    goto/16 :goto_1a6

    .line 4
    :cond_54
    iget-object v0, p0, Lokjoy/o/g;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->d:Landroid/widget/Button;

    const-string v4, "password"

    const-string v5, "joy_icon_pwd_not_display"

    const-string v6, "text"

    const-string v7, "joy_icon_pwd_display"

    if-ne v0, p1, :cond_ae

    iget-boolean p1, p0, Lokjoy/o/g;->j:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lokjoy/o/g;->j:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v7}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-boolean v0, p0, Lokjoy/o/g;->j:Z

    if-eqz v0, :cond_81

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v5}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lokjoy/o/g;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {v0, v4}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->setInputType(Ljava/lang/String;)V

    goto :goto_86

    :cond_81
    iget-object v0, p0, Lokjoy/o/g;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {v0, v6}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->setInputType(Ljava/lang/String;)V

    :goto_86
    iget-object v0, p0, Lokjoy/o/g;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a5

    iget-object v0, p0, Lokjoy/o/g;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lokjoy/o/g;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_a5
    iget-object v0, p0, Lokjoy/o/g;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    :goto_a7
    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1a6

    :cond_ae
    iget-object v0, p0, Lokjoy/o/g;->h:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->d:Landroid/widget/Button;

    if-ne v0, p1, :cond_fa

    iget-boolean p1, p0, Lokjoy/o/g;->k:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lokjoy/o/g;->k:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v7}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-boolean v0, p0, Lokjoy/o/g;->k:Z

    if-eqz v0, :cond_d3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v5}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lokjoy/o/g;->h:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {v0, v4}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->setInputType(Ljava/lang/String;)V

    goto :goto_d8

    :cond_d3
    iget-object v0, p0, Lokjoy/o/g;->h:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {v0, v6}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->setInputType(Ljava/lang/String;)V

    :goto_d8
    iget-object v0, p0, Lokjoy/o/g;->h:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f7

    iget-object v0, p0, Lokjoy/o/g;->h:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lokjoy/o/g;->h:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_f7
    iget-object v0, p0, Lokjoy/o/g;->h:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    goto :goto_a7

    :cond_fa
    iget-object v0, p0, Lokjoy/o/g;->i:Landroid/widget/Button;

    if-ne v0, p1, :cond_1a6

    .line 5
    iget-object p1, p0, Lokjoy/o/g;->e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_115

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    :goto_110
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1a6

    :cond_115
    iget-object p1, p0, Lokjoy/o/g;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12a

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    :goto_125
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    goto :goto_110

    :cond_12a
    iget-object p1, p0, Lokjoy/o/g;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13b

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    goto :goto_125

    :cond_13b
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x6

    if-ge p1, v0, :cond_147

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u5bc6\u7801\u957f\u5ea6\u4e0d\u80fd\u5c0f\u4e8e6\u4f4d"

    goto :goto_125

    :cond_147
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x10

    if-le p1, v0, :cond_154

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u5bc6\u7801\u957f\u5ea6\u4e0d\u80fd\u5927\u4e8e16\u4f4d"

    goto :goto_125

    :cond_154
    iget-object p1, p0, Lokjoy/o/g;->h:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_165

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u786e\u8ba4\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    goto :goto_125

    :cond_165
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_170

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u4e24\u6b21\u8f93\u5165\u5bc6\u7801\u4e0d\u4e00\u81f4"

    goto :goto_125

    :cond_170
    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object p1

    if-nez p1, :cond_179

    goto :goto_1a6

    :cond_179
    new-instance v0, Lokjoy/u/a;

    iget-object v1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 6
    const-string v1, "\u4fee\u6539\u4e2d..."

    iput-object v1, v0, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lokjoy/u/a;->show()V

    iget-object v5, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lokjoy/o/j;

    invoke-direct {v1, p0, v0, p1, v9}, Lokjoy/o/j;-><init>(Lokjoy/o/g;Lokjoy/u/a;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;Ljava/lang/String;)V

    .line 8
    new-instance p1, Lokjoy/h/g0;

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lokjoy/h/g0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lokjoy/h/h0;

    invoke-direct {v0, v1}, Lokjoy/h/h0;-><init>(Lokjoy/h/c;)V

    const-string v1, "https://sdk.ok-joy.com/common/?ct=user&ac=editPassword"

    invoke-static {v1, p1, v0}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    :cond_1a6
    :goto_1a6
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "joy_fragment_modify_password_layout"

    invoke-static {p3, v0}, Lokjoy/a/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lokjoy/o/g;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "backButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/o/g;->c:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/o/g;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "helpButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/o/g;->d:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/o/g;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "phoneEditText"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iput-object p1, p0, Lokjoy/o/g;->e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iget-object p1, p0, Lokjoy/o/g;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "codeEditText"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    iput-object p1, p0, Lokjoy/o/g;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    iget-object p1, p0, Lokjoy/o/g;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "pwdEditText"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iput-object p1, p0, Lokjoy/o/g;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iget-object p1, p0, Lokjoy/o/g;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "repwdEditText"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iput-object p1, p0, Lokjoy/o/g;->h:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iget-object p1, p0, Lokjoy/o/g;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "sureButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/o/g;->i:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/o/g;->e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->a(Landroid/widget/EditText;)V

    iget-object p1, p0, Lokjoy/o/g;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->a(Landroid/widget/EditText;)V

    iget-object p1, p0, Lokjoy/o/g;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->a(Landroid/widget/EditText;)V

    iget-object p1, p0, Lokjoy/o/g;->h:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->a(Landroid/widget/EditText;)V

    iget-object p1, p0, Lokjoy/o/g;->b:Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Lokjoy/c/b;->onStart()V

    iget-object v0, p0, Lokjoy/o/g;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/o/g;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/o/g;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/o/g;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/o/g;->h:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/o/g;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, p0, Lokjoy/o/g;->e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->setText(Ljava/lang/String;)V

    .line 1
    :cond_42
    sget-object v0, Lokjoy/q/c$d;->a:Lokjoy/q/c;

    .line 2
    new-instance v1, Lokjoy/o/g$a;

    invoke-direct {v1, p0}, Lokjoy/o/g$a;-><init>(Lokjoy/o/g;)V

    invoke-virtual {v0, v1}, Lokjoy/q/c;->a(Lokjoy/q/c$c;)V

    return-void
.end method
