.class public Lokjoy/g/c;
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

.field public g:Landroid/widget/Button;

.field public h:Ljava/lang/String;

.field public i:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokjoy/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lokjoy/g/c;->c:Landroid/widget/Button;

    if-ne v0, p1, :cond_9

    invoke-virtual {p0}, Lokjoy/c/b;->a()V

    goto/16 :goto_121

    :cond_9
    iget-object v0, p0, Lokjoy/g/c;->d:Landroid/widget/Button;

    if-ne v0, p1, :cond_18

    new-instance p1, Lokjoy/o/f;

    invoke-direct {p1}, Lokjoy/o/f;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lokjoy/c/b;->a(Landroid/app/Fragment;Z)V

    goto/16 :goto_121

    :cond_18
    iget-object v0, p0, Lokjoy/g/c;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->d:Landroid/widget/Button;

    const-string v1, "\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v2, 0x0

    if-ne v0, p1, :cond_5f

    .line 1
    iget-object p1, p0, Lokjoy/g/c;->e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lokjoy/g/c;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_121

    :cond_3a
    new-instance p1, Lokjoy/u/a;

    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 2
    const-string v0, "\u53d1\u9001\u4e2d..."

    iput-object v0, p1, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lokjoy/u/a;->show()V

    iget-boolean v0, p0, Lokjoy/g/c;->i:Z

    if-eqz v0, :cond_4f

    const-string v0, "unbind"

    goto :goto_51

    :cond_4f
    const-string v0, "bind"

    :goto_51
    iget-object v1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    iget-object v2, p0, Lokjoy/g/c;->h:Ljava/lang/String;

    new-instance v3, Lokjoy/g/e;

    invoke-direct {v3, p0, p1}, Lokjoy/g/e;-><init>(Lokjoy/g/c;Lokjoy/u/a;)V

    invoke-static {v1, v2, v0, v3}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lokjoy/h/c;)V

    goto/16 :goto_121

    .line 4
    :cond_5f
    iget-object v0, p0, Lokjoy/g/c;->g:Landroid/widget/Button;

    if-ne v0, p1, :cond_121

    iget-boolean p1, p0, Lokjoy/g/c;->i:Z

    const-string v0, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    if-eqz p1, :cond_c6

    .line 5
    iget-object p1, p0, Lokjoy/g/c;->e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_80

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    :goto_7b
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_121

    :cond_80
    iget-object v1, p0, Lokjoy/g/c;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_93

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    goto :goto_7b

    :cond_93
    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object v0

    new-instance v2, Lokjoy/u/a;

    iget-object v3, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 6
    const-string v3, "\u89e3\u7ed1\u4e2d..."

    iput-object v3, v2, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {v2}, Lokjoy/u/a;->show()V

    iget-object v3, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lokjoy/g/g;

    invoke-direct {v5, p0, v2, v0}, Lokjoy/g/g;-><init>(Lokjoy/g/c;Lokjoy/u/a;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    .line 8
    new-instance v0, Lokjoy/h/c0;

    invoke-direct {v0, v3, v4, p1, v1}, Lokjoy/h/c0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lokjoy/h/d0;

    invoke-direct {v0, v5}, Lokjoy/h/d0;-><init>(Lokjoy/h/c;)V

    const-string v1, "https://sdk.ok-joy.com/common/?ct=user&ac=unbind"

    invoke-static {v1, p1, v0}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    goto :goto_121

    .line 9
    :cond_c6
    iget-object p1, p0, Lokjoy/g/c;->e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_dc

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    :goto_d8
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_121

    :cond_dc
    iget-object v1, p0, Lokjoy/g/c;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ef

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    goto :goto_d8

    :cond_ef
    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object v0

    new-instance v2, Lokjoy/u/a;

    iget-object v3, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v3, "\u7ed1\u5b9a\u4e2d..."

    iput-object v3, v2, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 11
    invoke-virtual {v2}, Lokjoy/u/a;->show()V

    iget-object v3, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lokjoy/g/f;

    invoke-direct {v5, p0, v2, v0, p1}, Lokjoy/g/f;-><init>(Lokjoy/g/c;Lokjoy/u/a;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lokjoy/h/a0;

    invoke-direct {v0, v3, v4, p1, v1}, Lokjoy/h/a0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lokjoy/h/b0;

    invoke-direct {v0, v5}, Lokjoy/h/b0;-><init>(Lokjoy/h/c;)V

    const-string v1, "https://sdk.ok-joy.com/common/?ct=user&ac=bind"

    invoke-static {v1, p1, v0}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    :cond_121
    :goto_121
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "joy_fragment_binding_phone"

    invoke-static {p3, v0}, Lokjoy/a/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lokjoy/g/c;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "backButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/c;->c:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/c;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "helpButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/c;->d:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/c;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "phoneEditText"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iput-object p1, p0, Lokjoy/g/c;->e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iget-object p1, p0, Lokjoy/g/c;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "codeEditText"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    iput-object p1, p0, Lokjoy/g/c;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    iget-object p1, p0, Lokjoy/g/c;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "nextButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/c;->g:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/c;->e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->a(Landroid/widget/EditText;)V

    iget-object p1, p0, Lokjoy/g/c;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->a(Landroid/widget/EditText;)V

    iget-object p1, p0, Lokjoy/g/c;->b:Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Lokjoy/c/b;->onStart()V

    iget-object v0, p0, Lokjoy/g/c;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/c;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/c;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/c;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3e

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokjoy/g/c;->h:Ljava/lang/String;

    const-string v1, "unbind"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lokjoy/g/c;->i:Z

    iget-object v0, p0, Lokjoy/g/c;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lokjoy/g/c;->e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iget-object v1, p0, Lokjoy/g/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->setText(Ljava/lang/String;)V

    .line 1
    :cond_3e
    sget-object v0, Lokjoy/q/c$d;->a:Lokjoy/q/c;

    .line 2
    new-instance v1, Lokjoy/g/c$a;

    invoke-direct {v1, p0}, Lokjoy/g/c$a;-><init>(Lokjoy/g/c;)V

    invoke-virtual {v0, v1}, Lokjoy/q/c;->a(Lokjoy/q/c$c;)V

    return-void
.end method
