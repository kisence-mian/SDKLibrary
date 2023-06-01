.class public abstract Lcom/ssjj/fnsdk/core/update/FNDialog;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Z


# instance fields
.field protected context:Landroid/content/Context;

.field protected dialog:Landroid/app/Dialog;

.field protected layoutAll:Landroid/widget/FrameLayout;

.field protected orientation:I

.field protected packageName:Ljava/lang/String;

.field protected resources:Landroid/content/res/Resources;

.field protected view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ssjj/fnsdk/core/update/FNDialog;->a:Z

    sput-boolean v0, Lcom/ssjj/fnsdk/core/update/FNDialog;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->orientation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->resources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialog;->a()V

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/update/FNDialog;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/ssjj/fnsdk/core/update/a;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/core/update/a;-><init>(Lcom/ssjj/fnsdk/core/update/FNDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDialog;->b()V

    return-void
.end method

.method private b()V
    .registers 4

    new-instance v0, Lcom/ssjj/fnsdk/core/update/b;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/ssjj/fnsdk/core/update/b;-><init>(Lcom/ssjj/fnsdk/core/update/FNDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->layoutAll:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/FNDialog;->getResId()I

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->view:Landroid/view/View;

    :cond_1c
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/FNDialog;->inflate()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->view:Landroid/view/View;

    if-eqz v0, :cond_30

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->layoutAll:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->view:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_30
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->layoutAll:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public static setFullScreen(Z)V
    .registers 1

    sput-boolean p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->a:Z

    return-void
.end method

.method public static setNoTitleBar(Z)V
    .registers 1

    sput-boolean p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->b:Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method protected findViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->view:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return-object p1
.end method

.method protected getDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 7

    new-instance v0, Lcom/ssjj/fnsdk/core/update/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/ssjj/fnsdk/core/update/c;-><init>(Lcom/ssjj/fnsdk/core/update/FNDialog;Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget-boolean v2, Lcom/ssjj/fnsdk/core/update/FNDialog;->b:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :cond_12
    sget-boolean v2, Lcom/ssjj/fnsdk/core/update/FNDialog;->a:Z

    if-eqz v2, :cond_1b

    const/16 v2, 0x400

    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_1b
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v4, -0x1

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v4, 0x11

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v4, 0x0

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-object v0
.end method

.method protected getDialogWindowType()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method protected abstract getResId()I
.end method

.method public hide()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_f
    return-void
.end method

.method protected abstract inflate()V
.end method

.method public isShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected abstract onBackPressed()V
.end method

.method protected release()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->context:Landroid/content/Context;

    return-void
.end method

.method public show()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_7
    return-void
.end method
