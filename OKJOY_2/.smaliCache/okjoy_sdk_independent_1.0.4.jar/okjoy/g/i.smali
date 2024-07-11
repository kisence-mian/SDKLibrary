.class public Lokjoy/g/i;
.super Lokjoy/c/b;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/widget/Button;

.field public e:Landroid/widget/Button;

.field public f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

.field public g:Landroid/widget/Button;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/Button;

.field public j:Landroid/widget/Button;

.field public k:Landroid/widget/Button;

.field public l:Landroid/widget/Button;

.field public m:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokjoy/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lokjoy/g/i;->d:Landroid/widget/Button;

    if-ne v0, p1, :cond_d

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_cb

    :cond_d
    iget-object v0, p0, Lokjoy/g/i;->e:Landroid/widget/Button;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1c

    new-instance p1, Lokjoy/o/f;

    invoke-direct {p1}, Lokjoy/o/f;-><init>()V

    invoke-virtual {p0, p1, v1}, Lokjoy/c/b;->a(Landroid/app/Fragment;Z)V

    goto/16 :goto_cb

    :cond_1c
    iget-object v0, p0, Lokjoy/g/i;->g:Landroid/widget/Button;

    const/4 v2, 0x0

    if-ne v0, p1, :cond_59

    .line 1
    iget-object p1, p0, Lokjoy/g/i;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string p1, "\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_cb

    :cond_3d
    new-instance v0, Lokjoy/u/a;

    iget-object v1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 2
    const-string v1, "\u53d1\u9001\u4e2d..."

    iput-object v1, v0, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lokjoy/u/a;->show()V

    iget-object v1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    new-instance v2, Lokjoy/g/k;

    invoke-direct {v2, p0, v0, p1}, Lokjoy/g/k;-><init>(Lokjoy/g/i;Lokjoy/u/a;Ljava/lang/String;)V

    const-string v0, "free"

    invoke-static {v1, p1, v0, v2}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lokjoy/h/c;)V

    goto/16 :goto_cb

    .line 4
    :cond_59
    iget-object v0, p0, Lokjoy/g/i;->i:Landroid/widget/Button;

    if-ne v0, p1, :cond_66

    new-instance p1, Lokjoy/g/b;

    invoke-direct {p1}, Lokjoy/g/b;-><init>()V

    invoke-virtual {p0, p1, v1}, Lokjoy/c/b;->a(Landroid/app/Fragment;Z)V

    goto :goto_cb

    :cond_66
    iget-object v0, p0, Lokjoy/g/i;->j:Landroid/widget/Button;

    if-ne v0, p1, :cond_93

    .line 5
    new-instance p1, Lokjoy/u/a;

    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 6
    const-string v0, "\u767b\u5f55\u4e2d..."

    iput-object v0, p1, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lokjoy/u/a;->show()V

    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    new-instance v1, Lokjoy/g/j;

    invoke-direct {v1, p0, p1}, Lokjoy/g/j;-><init>(Lokjoy/g/i;Lokjoy/u/a;)V

    .line 8
    new-instance p1, Lokjoy/h/i1;

    invoke-direct {p1, v0, v0}, Lokjoy/h/i1;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lokjoy/h/d;

    invoke-direct {v0, v1}, Lokjoy/h/d;-><init>(Lokjoy/h/c;)V

    const-string v1, "https://sdk.ok-joy.com/common/?ct=user&ac=openLogin"

    invoke-static {v1, p1, v0}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    goto :goto_cb

    .line 9
    :cond_93
    iget-object v0, p0, Lokjoy/g/i;->k:Landroid/widget/Button;

    if-ne v0, p1, :cond_b6

    .line 10
    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    new-instance v0, Lokjoy/g/h;

    invoke-direct {v0, p0}, Lokjoy/g/h;-><init>(Lokjoy/g/i;)V

    .line 11
    new-instance v1, Lokjoy/h/e;

    const-string v2, "wxx333"

    const-string v3, "123456"

    invoke-direct {v1, p1, v2, v3}, Lokjoy/h/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lokjoy/h/f;

    invoke-direct {v1, v0}, Lokjoy/h/f;-><init>(Lokjoy/h/c;)V

    const-string v0, "https://sdk.ok-joy.com/common/?ct=user&ac=register"

    invoke-static {v0, p1, v1}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    goto :goto_cb

    .line 12
    :cond_b6
    iget-object v0, p0, Lokjoy/g/i;->l:Landroid/widget/Button;

    if-ne v0, p1, :cond_bb

    :goto_ba
    goto :goto_c0

    :cond_bb
    iget-object v0, p0, Lokjoy/g/i;->m:Landroid/widget/Button;

    if-ne v0, p1, :cond_cb

    goto :goto_ba

    :goto_c0
    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u5f00\u53d1\u4e2d..."

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_cb
    :goto_cb
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

    const-string v0, "joy_fragment_main_login_layout"

    invoke-static {p3, v0}, Lokjoy/a/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lokjoy/g/i;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "borderView"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lokjoy/g/i;->c:Landroid/view/View;

    iget-object p1, p0, Lokjoy/g/i;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "backButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/i;->d:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/i;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "helpButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/i;->e:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/i;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "phoneEditText"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iput-object p1, p0, Lokjoy/g/i;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iget-object p1, p0, Lokjoy/g/i;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "codeButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/i;->g:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/i;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "tipsView"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lokjoy/g/i;->h:Landroid/widget/TextView;

    iget-object p1, p0, Lokjoy/g/i;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "accountButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/i;->i:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/i;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "visitorButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/i;->j:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/i;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "wxButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/i;->k:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/i;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "qqButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/i;->l:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/i;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "tapButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/i;->m:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/i;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->a(Landroid/widget/EditText;)V

    iget-object p1, p0, Lokjoy/g/i;->h:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object p1, p0, Lokjoy/g/i;->k:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lokjoy/g/i;->l:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lokjoy/g/i;->m:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lokjoy/g/i;->b:Landroid/view/View;

    new-instance p2, Lokjoy/g/i$a;

    invoke-direct {p2, p0}, Lokjoy/g/i$a;-><init>(Lokjoy/g/i;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lokjoy/g/i;->c:Landroid/view/View;

    new-instance p2, Lokjoy/g/i$b;

    invoke-direct {p2, p0}, Lokjoy/g/i$b;-><init>(Lokjoy/g/i;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lokjoy/g/i;->e:Landroid/widget/Button;

    new-instance p2, Lokjoy/g/i$c;

    invoke-direct {p2, p0}, Lokjoy/g/i$c;-><init>(Lokjoy/g/i;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lokjoy/g/i;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    new-instance p2, Lokjoy/g/i$d;

    invoke-direct {p2, p0}, Lokjoy/g/i$d;-><init>(Lokjoy/g/i;)V

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lokjoy/g/i;->g:Landroid/widget/Button;

    new-instance p2, Lokjoy/g/i$e;

    invoke-direct {p2, p0}, Lokjoy/g/i$e;-><init>(Lokjoy/g/i;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lokjoy/g/i;->i:Landroid/widget/Button;

    new-instance p2, Lokjoy/g/i$f;

    invoke-direct {p2, p0}, Lokjoy/g/i$f;-><init>(Lokjoy/g/i;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lokjoy/g/i;->j:Landroid/widget/Button;

    new-instance p2, Lokjoy/g/i$g;

    invoke-direct {p2, p0}, Lokjoy/g/i$g;-><init>(Lokjoy/g/i;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lokjoy/g/i;->b:Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Lokjoy/c/b;->onStart()V

    iget-object v0, p0, Lokjoy/g/i;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/i;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/i;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/i;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/i;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/i;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/i;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/i;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/i;->d:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
