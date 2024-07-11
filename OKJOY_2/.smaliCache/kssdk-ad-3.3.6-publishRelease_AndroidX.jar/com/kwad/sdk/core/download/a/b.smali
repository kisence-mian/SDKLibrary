.class public Lcom/kwad/sdk/core/download/a/b;
.super Landroid/app/AlertDialog;


# static fields
.field private static a:Lcom/kwad/sdk/core/download/a/b;


# instance fields
.field private b:Lcom/kwad/sdk/core/download/a/a;

.field private c:Lcom/kwad/sdk/core/response/model/AdTemplate;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 4

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Wrapper;->wrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/download/a/b;->setOwnerActivity(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/kwad/sdk/core/download/a/b;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/download/a/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/download/a/b;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method public static a()Z
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/download/a/b;->a:Lcom/kwad/sdk/core/download/a/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/kwad/sdk/core/download/a/b;->isShowing()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)Z
    .registers 4

    instance-of v0, p0, Lcom/kwad/sdk/api/core/ResContext;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/kwad/sdk/api/core/ResContext;

    invoke-interface {p0}, Lcom/kwad/sdk/api/core/ResContext;->getDelegatedContext()Landroid/content/Context;

    move-result-object p0

    :cond_a
    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    :try_start_10
    sget-object v0, Lcom/kwad/sdk/core/download/a/b;->a:Lcom/kwad/sdk/core/download/a/b;

    if-nez v0, :cond_26

    new-instance v0, Lcom/kwad/sdk/core/download/a/b;

    check-cast p0, Landroid/app/Activity;

    invoke-direct {v0, p0, p1}, Lcom/kwad/sdk/core/download/a/b;-><init>(Landroid/app/Activity;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    sput-object v0, Lcom/kwad/sdk/core/download/a/b;->a:Lcom/kwad/sdk/core/download/a/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/download/a/b;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_26
    sget-object p0, Lcom/kwad/sdk/core/download/a/b;->a:Lcom/kwad/sdk/core/download/a/b;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/download/a/b;->isShowing()Z

    move-result p0

    if-nez p0, :cond_39

    sget-object p0, Lcom/kwad/sdk/core/download/a/b;->a:Lcom/kwad/sdk/core/download/a/b;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/download/a/b;->show()V

    const/16 p0, 0x56

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/kwad/sdk/core/report/b;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V
    :try_end_39
    .catchall {:try_start_10 .. :try_end_39} :catchall_3b

    :cond_39
    const/4 p0, 0x1

    return p0

    :catchall_3b
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    return v1
.end method

.method public static b(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)Z
    .registers 4

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->P(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

    move-result-object p1

    if-eqz p1, :cond_27

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;->windowPopUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;->windowPopType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_26

    const/4 v1, 0x2

    if-ne p1, v1, :cond_27

    invoke-static {p0}, Lcom/ksad/download/d/b;->b(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_27

    :cond_26
    return v0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/kwad/sdk/core/download/a/b;->a:Lcom/kwad/sdk/core/download/a/b;

    return-void
.end method

.method public isShowing()Z
    .registers 2

    invoke-super {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Landroid/app/AlertDialog;->onBackPressed()V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/b;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/b;->m(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/kwad/sdk/core/download/a/b;->b:Lcom/kwad/sdk/core/download/a/a;

    const/4 v0, 0x1

    if-nez p1, :cond_2a

    invoke-virtual {p0}, Lcom/kwad/sdk/core/download/a/b;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/utils/t;->e(Landroid/content/Context;)Z

    move-result p1

    xor-int/2addr p1, v0

    new-instance v1, Lcom/kwad/sdk/core/download/a/a;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/download/a/b;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/api/loader/Wrapper;->wrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/download/a/b;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v1, v2, p0, v3, p1}, Lcom/kwad/sdk/core/download/a/a;-><init>(Landroid/content/Context;Lcom/kwad/sdk/core/download/a/b;Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    iput-object v1, p0, Lcom/kwad/sdk/core/download/a/b;->b:Lcom/kwad/sdk/core/download/a/a;

    new-instance p1, Lcom/kwad/sdk/core/download/a/b$1;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/core/download/a/b$1;-><init>(Lcom/kwad/sdk/core/download/a/b;)V

    invoke-virtual {v1, p1}, Lcom/kwad/sdk/core/download/a/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2a
    iget-object p1, p0, Lcom/kwad/sdk/core/download/a/b;->b:Lcom/kwad/sdk/core/download/a/a;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/download/a/b;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/download/a/b;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/kwad/sdk/core/download/a/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/kwad/sdk/core/download/a/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/core/download/a/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/app/AlertDialog;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/b;->b:Lcom/kwad/sdk/core/download/a/a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/kwad/sdk/core/download/a/a;->c()V

    :cond_a
    return-void
.end method

.method protected onStart()V
    .registers 3

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    sget-object v0, Lcom/kwad/sdk/core/download/a/b;->a:Lcom/kwad/sdk/core/download/a/b;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/download/a/b;->setTitle(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public show()V
    .registers 1

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
