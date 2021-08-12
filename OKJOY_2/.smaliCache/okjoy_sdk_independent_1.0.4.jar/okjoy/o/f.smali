.class public Lokjoy/o/f;
.super Lokjoy/c/b;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Landroid/view/View;

.field public c:Landroid/widget/Button;

.field public d:Landroid/widget/Button;

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokjoy/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lokjoy/o/f;->c:Landroid/widget/Button;

    if-ne v0, p1, :cond_9

    invoke-virtual {p0}, Lokjoy/c/b;->a()V

    goto/16 :goto_a4

    :cond_9
    iget-object v0, p0, Lokjoy/o/f;->d:Landroid/widget/Button;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    if-ne v0, p1, :cond_4f

    .line 1
    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object p1

    if-eqz p1, :cond_42

    new-instance v0, Lokjoy/u/a;

    iget-object v2, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object v1, v0, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lokjoy/u/a;->show()V

    iget-object v1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lokjoy/o/d;

    invoke-direct {v2, p0, v0}, Lokjoy/o/d;-><init>(Lokjoy/o/f;Lokjoy/u/a;)V

    .line 4
    new-instance v0, Lokjoy/h/r0;

    invoke-direct {v0, v1, p1}, Lokjoy/h/r0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lokjoy/h/s0;

    invoke-direct {v0, v2}, Lokjoy/h/s0;-><init>(Lokjoy/h/c;)V

    const-string v1, "https://sdk.ok-joy.com/common/?ct=user&ac=detail"

    invoke-static {v1, p1, v0}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    goto :goto_a4

    .line 5
    :cond_42
    iget-object p1, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    new-instance v0, Lokjoy/o/e;

    invoke-direct {v0, p0}, Lokjoy/o/e;-><init>(Lokjoy/o/f;)V

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;Lokjoy/l/c;)V

    goto :goto_a4

    .line 6
    :cond_4f
    iget-object v0, p0, Lokjoy/o/f;->e:Landroid/widget/Button;

    if-ne v0, p1, :cond_7a

    .line 7
    new-instance p1, Lokjoy/u/a;

    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 8
    iput-object v1, p1, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lokjoy/u/a;->show()V

    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    new-instance v1, Lokjoy/o/a;

    invoke-direct {v1, p0, p1}, Lokjoy/o/a;-><init>(Lokjoy/o/f;Lokjoy/u/a;)V

    .line 10
    new-instance p1, Lokjoy/h/p;

    invoke-direct {p1, v0}, Lokjoy/h/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lokjoy/h/q;

    invoke-direct {v0, v1}, Lokjoy/h/q;-><init>(Lokjoy/h/c;)V

    const-string v1, "https://sdk.ok-joy.com/common/?ct=info&ac=protocol"

    invoke-static {v1, p1, v0}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    goto :goto_a4

    .line 11
    :cond_7a
    iget-object v0, p0, Lokjoy/o/f;->f:Landroid/widget/Button;

    if-ne v0, p1, :cond_a4

    .line 12
    new-instance p1, Lokjoy/u/a;

    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object v1, p1, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lokjoy/u/a;->show()V

    iget-object v0, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    new-instance v1, Lokjoy/o/b;

    invoke-direct {v1, p0, p1}, Lokjoy/o/b;-><init>(Lokjoy/o/f;Lokjoy/u/a;)V

    .line 15
    new-instance p1, Lokjoy/h/r;

    invoke-direct {p1, v0}, Lokjoy/h/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lokjoy/h/s;

    invoke-direct {v0, v1}, Lokjoy/h/s;-><init>(Lokjoy/h/c;)V

    const-string v1, "https://sdk.ok-joy.com/common/?ct=info&ac=policy"

    invoke-static {v1, p1, v0}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    :cond_a4
    :goto_a4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "joy_fragment_help_center_layout"

    invoke-static {p3, v0}, Lokjoy/a/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lokjoy/o/f;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "backButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/o/f;->c:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/o/f;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "customServiceButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/o/f;->d:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/o/f;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "userAgreementButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/o/f;->e:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/o/f;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "privacyAgreementButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/o/f;->f:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/o/f;->b:Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Lokjoy/c/b;->onStart()V

    iget-object v0, p0, Lokjoy/o/f;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/o/f;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/o/f;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lokjoy/o/f;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
