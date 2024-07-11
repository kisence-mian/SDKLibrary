.class public Lokjoy/g/v;
.super Lokjoy/c/b;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokjoy/g/v$a;
    }
.end annotation


# static fields
.field public static k:Lokjoy/g/v$a;


# instance fields
.field public b:Landroid/view/View;

.field public c:Landroid/widget/Button;

.field public d:Landroid/widget/Button;

.field public e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

.field public f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

.field public g:Landroid/widget/Button;

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokjoy/c/b;-><init>()V

    return-void
.end method

.method public static a(Lokjoy/g/v$a;)V
    .registers 1

    sput-object p0, Lokjoy/g/v;->k:Lokjoy/g/v$a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lokjoy/g/v;->c:Landroid/widget/Button;

    if-ne v0, p1, :cond_1f

    iget-boolean p1, p0, Lokjoy/g/v;->h:Z

    if-nez p1, :cond_12

    iget-boolean p1, p0, Lokjoy/g/v;->j:Z

    if-eqz p1, :cond_d

    goto :goto_12

    :cond_d
    invoke-virtual {p0}, Lokjoy/c/b;->a()V

    goto/16 :goto_8e

    :cond_12
    :goto_12
    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    sget-object p1, Lokjoy/g/v;->k:Lokjoy/g/v$a;

    if-eqz p1, :cond_8e

    invoke-interface {p1}, Lokjoy/g/v$a;->a()V

    goto :goto_8e

    :cond_1f
    iget-object v0, p0, Lokjoy/g/v;->d:Landroid/widget/Button;

    if-ne v0, p1, :cond_2d

    new-instance p1, Lokjoy/o/f;

    invoke-direct {p1}, Lokjoy/o/f;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lokjoy/c/b;->a(Landroid/app/Fragment;Z)V

    goto :goto_8e

    :cond_2d
    iget-object v0, p0, Lokjoy/g/v;->g:Landroid/widget/Button;

    if-ne v0, p1, :cond_8e

    .line 1
    iget-object p1, p0, Lokjoy/g/v;->e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u771f\u5b9e\u59d3\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    :goto_42
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_8e

    :cond_4a
    iget-object v0, p0, Lokjoy/g/v;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u8eab\u4efd\u8bc1\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    goto :goto_42

    :cond_5b
    iget-object v2, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-string v0, "\u672a\u767b\u5f55"

    goto :goto_42

    :cond_70
    iget-object v1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lokjoy/g/u;

    invoke-direct {v4, p0, v2, p1, v0}, Lokjoy/g/u;-><init>(Lokjoy/g/v;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v2, Lokjoy/h/v;

    invoke-direct {v2, v1, v3, p1, v0}, Lokjoy/h/v;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lokjoy/h/w;

    invoke-direct {v0, v4}, Lokjoy/h/w;-><init>(Lokjoy/h/c;)V

    const-string v1, "https://sdk.ok-joy.com/common/?ct=user&ac=realName"

    invoke-static {v1, p1, v0}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    :cond_8e
    :goto_8e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lokjoy/c/b;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_22

    const-string v0, "isLogin"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lokjoy/g/v;->h:Z

    const-string v0, "isMust"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lokjoy/g/v;->i:Z

    const-string v0, "isPay"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lokjoy/g/v;->j:Z

    :cond_22
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "joy_fragment_real_name_layout"

    invoke-static {p3, v0}, Lokjoy/a/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lokjoy/g/v;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "backButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/v;->c:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/v;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "helpButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/v;->d:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/v;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "nameEditText"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iput-object p1, p0, Lokjoy/g/v;->e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iget-object p1, p0, Lokjoy/g/v;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "idCardEditText"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iput-object p1, p0, Lokjoy/g/v;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    iget-object p1, p0, Lokjoy/g/v;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "sureButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/g/v;->g:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/g/v;->e:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->a(Landroid/widget/EditText;)V

    iget-object p1, p0, Lokjoy/g/v;->f:Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/view/widget/OkJoyCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->a(Landroid/widget/EditText;)V

    iget-boolean p1, p0, Lokjoy/g/v;->i:Z

    if-eqz p1, :cond_90

    iget-object p1, p0, Lokjoy/g/v;->c:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_90
    iget-object p1, p0, Lokjoy/g/v;->b:Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Lokjoy/c/b;->onStart()V

    iget-object v0, p0, Lokjoy/g/v;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/v;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/g/v;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
