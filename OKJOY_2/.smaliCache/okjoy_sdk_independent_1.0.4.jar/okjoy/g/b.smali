.class public Lokjoy/g/b;
.super Lokjoy/c/b;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Landroid/view/View;

.field public c:Landroid/widget/Button;

.field public d:Landroid/widget/Button;

.field public e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

.field public f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

.field public g:Landroid/widget/Button;

.field public h:Landroid/widget/Button;

.field public i:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lokjoy/c/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokjoy/g/b;->i:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lokjoy/g/b;->c:Landroid/widget/Button;

    if-ne v0, p1, :cond_9

    invoke-virtual {p0}, Lokjoy/c/b;->a()V

    goto/16 :goto_ed

    :cond_9
    iget-object v0, p0, Lokjoy/g/b;->d:Landroid/widget/Button;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_18

    new-instance p1, Lokjoy/o/f;

    invoke-direct {p1}, Lokjoy/o/f;-><init>()V

    invoke-virtual {p0, p1, v1}, Lokjoy/c/b;->a(Landroid/app/Fragment;Z)V

    goto/16 :goto_ed

    :cond_18
    iget-object v0, p0, Lokjoy/g/b;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->d:Landroid/widget/Button;

    if-ne v0, p1, :cond_6f

    iget-boolean p1, p0, Lokjoy/g/b;->i:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lokjoy/g/b;->i:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "joy_icon_pwd_display"

    invoke-static {p1, v0}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-boolean v0, p0, Lokjoy/g/b;->i:Z

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "joy_icon_pwd_not_display"

    invoke-static {p1, v0}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lokjoy/g/b;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    const-string v1, "password"

    goto :goto_44

    :cond_40
    iget-object v0, p0, Lokjoy/g/b;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    const-string v1, "text"

    :goto_44
    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->setInputType(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/g/b;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lokjoy/g/b;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lokjoy/g/b;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_66
    iget-object v0, p0, Lokjoy/g/b;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_ed

    :cond_6f
    iget-object v0, p0, Lokjoy/g/b;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_de

    .line 1
    iget-object p1, p0, Lokjoy/g/b;->e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getText()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lokjoy/g/b;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_92

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    :goto_8a
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_ed

    :cond_92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9d

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    goto :goto_8a

    :cond_9d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gez v2, :cond_a8

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u5bc6\u7801\u957f\u5ea6\u4e0d\u80fd\u5c0f\u4e8e6\u4f4d"

    goto :goto_8a

    :cond_a8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_b5

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u5bc6\u7801\u957f\u5ea6\u4e0d\u80fd\u5927\u4e8e16\u4f4d"

    goto :goto_8a

    :cond_b5
    new-instance v1, Lokjoy/u/a;

    iget-object v2, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 2
    const-string v2, "\u767b\u5f55\u4e2d..."

    iput-object v2, v1, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Lokjoy/u/a;->show()V

    iget-object v2, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    new-instance v3, Lokjoy/g/a;

    invoke-direct {v3, p0, v1}, Lokjoy/g/a;-><init>(Lokjoy/g/b;Lokjoy/u/a;)V

    .line 4
    new-instance v1, Lokjoy/h/g;

    invoke-direct {v1, v2, p1, v0}, Lokjoy/h/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lokjoy/h/h;

    invoke-direct {v0, v3}, Lokjoy/h/h;-><init>(Lokjoy/h/c;)V

    const-string v1, "https://sdk.ok-joy.com/common/?ct=user&ac=login"

    invoke-static {v1, p1, v0}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    goto :goto_ed

    .line 5
    :cond_de
    iget-object v0, p0, Lokjoy/g/b;->h:Landroid/widget/Button;

    if-ne v0, p1, :cond_ed

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u8bf7\u4f7f\u7528\u624b\u673a\u53f7\u9a8c\u8bc1\u7801\u767b\u5f55\uff0c\u518d\u4fee\u6539\u5bc6\u7801"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_ed
    :goto_ed
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lokjoy/c/b;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "joy_fragment_account_login_layout"

    invoke-static {p3, v0}, Lokjoy/a/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lokjoy/g/b;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "backButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/b;->c:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/b;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "helpButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/b;->d:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/b;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "accountEditText"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iput-object p1, p0, Lokjoy/g/b;->e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iget-object p1, p0, Lokjoy/g/b;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "passwordEditText"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iput-object p1, p0, Lokjoy/g/b;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iget-object p1, p0, Lokjoy/g/b;->e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->a(Landroid/widget/EditText;)V

    iget-object p1, p0, Lokjoy/g/b;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->a(Landroid/widget/EditText;)V

    iget-object p1, p0, Lokjoy/g/b;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "loginButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/b;->g:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/b;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "forgetPwdButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/b;->h:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/b;->b:Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Lokjoy/c/b;->onStart()V

    iget-object v0, p0, Lokjoy/g/b;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/b;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/b;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/b;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/b;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
