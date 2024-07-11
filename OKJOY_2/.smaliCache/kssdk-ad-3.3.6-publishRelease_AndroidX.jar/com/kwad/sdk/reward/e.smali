.class public Lcom/kwad/sdk/reward/e;
.super Lcom/kwad/sdk/api/core/BaseSystemDialogFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/reward/e$a;
    }
.end annotation


# static fields
.field public static a:Lcom/kwad/sdk/reward/e;


# instance fields
.field private b:Lcom/kwad/sdk/reward/e$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/api/core/BaseSystemDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/e;)Lcom/kwad/sdk/reward/e$a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/e;->b:Lcom/kwad/sdk/reward/e$a;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/kwad/sdk/reward/e$a;)V
    .registers 5

    new-instance v0, Lcom/kwad/sdk/reward/e;

    invoke-direct {v0}, Lcom/kwad/sdk/reward/e;-><init>()V

    sput-object v0, Lcom/kwad/sdk/reward/e;->a:Lcom/kwad/sdk/reward/e;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/kwad/sdk/reward/e;->a:Lcom/kwad/sdk/reward/e;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/reward/e;->setArguments(Landroid/os/Bundle;)V

    sget-object p1, Lcom/kwad/sdk/reward/e;->a:Lcom/kwad/sdk/reward/e;

    invoke-direct {p1, p2}, Lcom/kwad/sdk/reward/e;->a(Lcom/kwad/sdk/reward/e$a;)V

    sget-object p1, Lcom/kwad/sdk/reward/e;->a:Lcom/kwad/sdk/reward/e;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "videoCloseDialog"

    invoke-virtual {p1, p0, p2}, Lcom/kwad/sdk/reward/e;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/kwad/sdk/reward/e$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/e;->b:Lcom/kwad/sdk/reward/e$a;

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-object v0, Lcom/kwad/sdk/reward/e;->a:Lcom/kwad/sdk/reward/e;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/e;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public b()Z
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/e;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/BaseSystemDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/e;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_e

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/kwad/sdk/reward/e;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/e;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/e;->b:Lcom/kwad/sdk/reward/e$a;

    if-eqz p1, :cond_31

    invoke-interface {p1}, Lcom/kwad/sdk/reward/e$a;->a()V

    :cond_31
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/e;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    sget p3, Lcom/kwad/sdk/R$layout;->ksad_video_close_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/kwad/sdk/R$id;->ksad_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/e;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "key_title"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lcom/kwad/sdk/R$id;->ksad_close_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/kwad/sdk/reward/e$1;

    invoke-direct {p3, p0}, Lcom/kwad/sdk/reward/e$1;-><init>(Lcom/kwad/sdk/reward/e;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/kwad/sdk/R$id;->ksad_continue_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/kwad/sdk/reward/e$2;

    invoke-direct {p3, p0}, Lcom/kwad/sdk/reward/e$2;-><init>(Lcom/kwad/sdk/reward/e;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/e;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance p3, Lcom/kwad/sdk/reward/e$3;

    invoke-direct {p3, p0}, Lcom/kwad/sdk/reward/e$3;-><init>(Lcom/kwad/sdk/reward/e;)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method
