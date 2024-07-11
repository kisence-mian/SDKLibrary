.class public Lokjoy/g/l;
.super Lokjoy/c/b;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/Button;

.field public g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

.field public h:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;

.field public i:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokjoy/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lokjoy/g/l;->e:Landroid/widget/Button;

    if-ne v0, p1, :cond_9

    invoke-virtual {p0}, Lokjoy/c/b;->a()V

    goto/16 :goto_bc

    :cond_9
    iget-object v0, p0, Lokjoy/g/l;->f:Landroid/widget/Button;

    if-ne v0, p1, :cond_18

    new-instance p1, Lokjoy/o/f;

    invoke-direct {p1}, Lokjoy/o/f;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lokjoy/c/b;->a(Landroid/app/Fragment;Z)V

    goto/16 :goto_bc

    :cond_18
    iget-object v0, p0, Lokjoy/g/l;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->d:Landroid/widget/Button;

    const-string v1, "\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v2, 0x0

    if-ne v0, p1, :cond_51

    .line 1
    iget-object p1, p0, Lokjoy/g/l;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_bc

    :cond_34
    new-instance p1, Lokjoy/u/a;

    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 2
    const-string v0, "\u53d1\u9001\u4e2d..."

    iput-object v0, p1, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lokjoy/u/a;->show()V

    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    iget-object v1, p0, Lokjoy/g/l;->b:Ljava/lang/String;

    new-instance v2, Lokjoy/g/n;

    invoke-direct {v2, p0, p1}, Lokjoy/g/n;-><init>(Lokjoy/g/l;Lokjoy/u/a;)V

    const-string p1, "free"

    invoke-static {v0, v1, p1, v2}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lokjoy/h/c;)V

    goto :goto_bc

    .line 4
    :cond_51
    iget-object v0, p0, Lokjoy/g/l;->i:Landroid/widget/Button;

    if-ne v0, p1, :cond_bc

    .line 5
    iget-object p1, p0, Lokjoy/g/l;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_67

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    :goto_63
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_bc

    :cond_67
    iget-object p1, p0, Lokjoy/g/l;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lokjoy/g/l;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7e

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    goto :goto_63

    :cond_7e
    iget-object p1, p0, Lokjoy/g/l;->h:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;

    .line 6
    iget-boolean p1, p1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->d:Z

    if-nez p1, :cond_90

    .line 7
    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u9700\u8981\u540c\u610f\u7528\u6237\u534f\u8bae\u624d\u80fd\u767b\u5f55"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_bc

    :cond_90
    new-instance p1, Lokjoy/u/a;

    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 8
    const-string v0, "\u767b\u5f55\u4e2d..."

    iput-object v0, p1, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lokjoy/u/a;->show()V

    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    iget-object v1, p0, Lokjoy/g/l;->b:Ljava/lang/String;

    iget-object v2, p0, Lokjoy/g/l;->c:Ljava/lang/String;

    new-instance v3, Lokjoy/g/o;

    invoke-direct {v3, p0, p1}, Lokjoy/g/o;-><init>(Lokjoy/g/l;Lokjoy/u/a;)V

    .line 10
    new-instance p1, Lokjoy/h/k;

    invoke-direct {p1, v0, v1, v2}, Lokjoy/h/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lokjoy/h/l;

    invoke-direct {v0, v3}, Lokjoy/h/l;-><init>(Lokjoy/h/c;)V

    const-string v1, "https://sdk.ok-joy.com/common/?ct=user&ac=freeLogin"

    invoke-static {v1, p1, v0}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    :cond_bc
    :goto_bc
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lokjoy/c/b;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_16

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lokjoy/g/l;->b:Ljava/lang/String;

    :cond_16
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const-string p3, "onCreateView"

    invoke-static {p3}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "joy_fragment_code_login_layout"

    invoke-static {p3, v0}, Lokjoy/a/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lokjoy/g/l;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "backButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/l;->e:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/l;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "helpButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/l;->f:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/l;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "titleImageView"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object p1, p0, Lokjoy/g/l;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "codeEditText"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    iput-object p1, p0, Lokjoy/g/l;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    iget-object p1, p0, Lokjoy/g/l;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "tipsView"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;

    iput-object p1, p0, Lokjoy/g/l;->h:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;

    iget-object p1, p0, Lokjoy/g/l;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "nextButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/l;->i:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/l;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->a(Landroid/widget/EditText;)V

    iget-object p1, p0, Lokjoy/g/l;->d:Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .registers 8

    invoke-super {p0}, Lokjoy/c/b;->onStart()V

    const-string v0, "onStart"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/g/l;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/l;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/l;->g:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;

    iget-object v0, v0, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomCodeEditText;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/l;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1
    sget-object v0, Lokjoy/q/c$d;->a:Lokjoy/q/c;

    .line 2
    new-instance v1, Lokjoy/g/l$a;

    invoke-direct {v1, p0}, Lokjoy/g/l$a;-><init>(Lokjoy/g/l;)V

    invoke-virtual {v0, v1}, Lokjoy/q/c;->a(Lokjoy/q/c$c;)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "\u9605\u8bfb\u5e76\u540c\u610f\u300a\u6ce8\u518c\u534f\u8bae\u300b"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lokjoy/g/l$b;

    invoke-direct {v1, p0}, Lokjoy/g/l$b;-><init>(Lokjoy/g/l;)V

    const/4 v2, 0x5

    const/16 v3, 0xb

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lokjoy/g/l;->h:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;

    iget-object v1, v1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, p0, Lokjoy/g/l;->h:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;

    iget-object v1, v1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_53

    const/4 v2, -0x1

    goto :goto_6b

    .line 3
    :cond_53
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "joy_clear"

    const-string v6, "color"

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 4
    :goto_6b
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object v1, p0, Lokjoy/g/l;->h:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;

    iget-object v1, v1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomAgreementTextView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
