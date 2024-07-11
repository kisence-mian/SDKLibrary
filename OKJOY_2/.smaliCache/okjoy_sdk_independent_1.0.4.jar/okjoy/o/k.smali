.class public Lokjoy/o/k;
.super Lokjoy/c/b;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Landroid/view/View;

.field public c:Landroid/widget/Button;

.field public d:Landroid/widget/Button;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/Button;

.field public g:Landroid/widget/Button;

.field public h:Landroid/widget/Button;

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

    iget-object v0, p0, Lokjoy/o/k;->c:Landroid/widget/Button;

    if-ne v0, p1, :cond_1a

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    sget-object p1, Lcom/okjoy/okjoysdk/api/manager/OkJoySdkCallBackManager;->openUserCenterListener:Lcom/okjoy/okjoysdk/api/listener/OkJoySdkOpenUserCenterListener;

    if-eqz p1, :cond_c2

    new-instance v0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/api/listener/OkJoySdkOpenUserCenterListener;->onClosed(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkOpenUserCenterCallBackModel;)V

    goto/16 :goto_c2

    :cond_1a
    iget-object v0, p0, Lokjoy/o/k;->d:Landroid/widget/Button;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_29

    new-instance p1, Lokjoy/o/f;

    invoke-direct {p1}, Lokjoy/o/f;-><init>()V

    :goto_24
    invoke-virtual {p0, p1, v1}, Lokjoy/c/b;->a(Landroid/app/Fragment;Z)V

    goto/16 :goto_c2

    :cond_29
    iget-object v0, p0, Lokjoy/o/k;->f:Landroid/widget/Button;

    const/4 v2, 0x0

    if-ne v0, p1, :cond_50

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getPhone()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u6b64\u8d26\u53f7\u672a\u7ed1\u5b9a\u624b\u673a\u53f7\u7801\uff0c\u65e0\u6cd5\u4fee\u6539\u5bc6\u7801"

    :goto_42
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4a
    new-instance p1, Lokjoy/o/g;

    invoke-direct {p1}, Lokjoy/o/g;-><init>()V

    goto :goto_24

    :cond_50
    iget-object v0, p0, Lokjoy/o/k;->g:Landroid/widget/Button;

    if-ne v0, p1, :cond_8b

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6a

    new-instance p1, Lokjoy/g/c;

    invoke-direct {p1}, Lokjoy/g/c;-><init>()V

    goto :goto_24

    :cond_6a
    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u60a8\u5df2\u7ed1\u5b9a\u624b\u673a\u53f7\u7801\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getPhone()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_c2

    :cond_8b
    iget-object v0, p0, Lokjoy/o/k;->h:Landroid/widget/Button;

    if-ne v0, p1, :cond_a7

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->isReal()Z

    move-result p1

    if-eqz p1, :cond_a0

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u60a8\u5df2\u5b8c\u6210\u5b9e\u540d\u8ba4\u8bc1"

    goto :goto_42

    :cond_a0
    new-instance p1, Lokjoy/g/v;

    invoke-direct {p1}, Lokjoy/g/v;-><init>()V

    goto/16 :goto_24

    :cond_a7
    iget-object v0, p0, Lokjoy/o/k;->i:Landroid/widget/Button;

    if-ne v0, p1, :cond_c2

    new-instance p1, Lokjoy/t/a;

    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lokjoy/t/a;-><init>(Landroid/content/Context;)V

    .line 1
    const-string v0, "\u662f\u5426\u786e\u8ba4\u9000\u51fa\u5f53\u524d\u8d26\u53f7\uff1f"

    iput-object v0, p1, Lokjoy/t/a;->g:Ljava/lang/String;

    .line 2
    iput-boolean v1, p1, Lokjoy/t/a;->h:Z

    .line 3
    new-instance v0, Lokjoy/o/k$a;

    invoke-direct {v0, p0}, Lokjoy/o/k$a;-><init>(Lokjoy/o/k;)V

    .line 4
    iput-object v0, p1, Lokjoy/t/a;->f:Lokjoy/t/a$c;

    .line 5
    invoke-virtual {p1}, Lokjoy/t/a;->show()V

    :cond_c2
    :goto_c2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "joy_fragment_user_center_layout"

    invoke-static {p3, v0}, Lokjoy/a/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lokjoy/o/k;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "backButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/o/k;->c:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/o/k;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "helpButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/o/k;->d:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/o/k;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "accountTextView"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lokjoy/o/k;->e:Landroid/widget/TextView;

    iget-object p1, p0, Lokjoy/o/k;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "modifyPwdButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/o/k;->f:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/o/k;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "bindingPhoneButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/o/k;->g:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/o/k;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "realNameButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/o/k;->h:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/o/k;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "logoutButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/o/k;->i:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/o/k;->b:Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .registers 5

    invoke-super {p0}, Lokjoy/c/b;->onStart()V

    iget-object v0, p0, Lokjoy/o/k;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/o/k;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/o/k;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/o/k;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/o/k;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/o/k;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokjoy/o/k;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u8d26\u53f7\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
