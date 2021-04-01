.class public Lcom/kwad/sdk/contentalliance/detail/photo/b/e;
.super Landroid/app/Dialog;
.source ""


# static fields
.field private static d:Lcom/kwad/sdk/contentalliance/detail/photo/b/e;


# instance fields
.field private a:Lcom/kwad/sdk/contentalliance/detail/photo/b/b;

.field private b:Lcom/kwad/sdk/contentalliance/detail/photo/b/d;

.field c:Lcom/kwad/sdk/contentalliance/detail/photo/b/b$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/contentalliance/detail/photo/b/d;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/e$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/e$a;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/b/e;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->c:Lcom/kwad/sdk/contentalliance/detail/photo/b/b$e;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->b:Lcom/kwad/sdk/contentalliance/detail/photo/b/d;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/kwad/sdk/contentalliance/detail/photo/b/d;)V
    .registers 3

    sget-object v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->d:Lcom/kwad/sdk/contentalliance/detail/photo/b/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->isShowing()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_a
    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;

    invoke-direct {v0, p0, p1}, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;-><init>(Landroid/content/Context;Lcom/kwad/sdk/contentalliance/detail/photo/b/d;)V

    sput-object v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->d:Lcom/kwad/sdk/contentalliance/detail/photo/b/e;

    sget-object v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->d:Lcom/kwad/sdk/contentalliance/detail/photo/b/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->show()V

    :cond_16
    return-void
.end method

.method public static a()Z
    .registers 1

    sget-object v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->d:Lcom/kwad/sdk/contentalliance/detail/photo/b/e;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->isShowing()Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->d:Lcom/kwad/sdk/contentalliance/detail/photo/b/e;

    return-void
.end method

.method public isShowing()Z
    .registers 2

    invoke-super {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/b;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->b:Lcom/kwad/sdk/contentalliance/detail/photo/b/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->a(Lcom/kwad/sdk/contentalliance/detail/photo/b/d;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/b;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->c:Lcom/kwad/sdk/contentalliance/detail/photo/b/b$e;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->a(Lcom/kwad/sdk/contentalliance/detail/photo/b/b$e;)V

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/b;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->c:Lcom/kwad/sdk/contentalliance/detail/photo/b/b$e;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->b(Lcom/kwad/sdk/contentalliance/detail/photo/b/b$e;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->a()V

    return-void
.end method

.method public show()V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
