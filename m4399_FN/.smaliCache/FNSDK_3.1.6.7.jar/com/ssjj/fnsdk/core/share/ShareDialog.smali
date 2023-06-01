.class public Lcom/ssjj/fnsdk/core/share/ShareDialog;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/share/ShareDialog$a;,
        Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;,
        Lcom/ssjj/fnsdk/core/share/ShareDialog$b;
    }
.end annotation


# static fields
.field private static a:Lcom/ssjj/fnsdk/core/share/ShareDialog;


# instance fields
.field private b:Landroid/app/Dialog;

.field private c:Lcom/ssjj/fnsdk/core/share/FNShareItem;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ssjj/fnsdk/core/share/ShareDialog;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/ShareDialog;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a:Lcom/ssjj/fnsdk/core/share/ShareDialog;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog;->b:Landroid/app/Dialog;

    new-instance v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/FNShareItem;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog;->c:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    const/16 v0, 0x32

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog;->d:I

    return-void
.end method

.method private a(Landroid/content/Context;F)I
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/ShareDialog;)I
    .registers 1

    iget p0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog;->d:I

    return p0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/ShareDialog;Landroid/content/Context;F)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method private a(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 7

    new-instance v0, Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/16 v3, 0x400

    invoke-virtual {p1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v4, 0x11

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-object v0
.end method

.method private a(II)Landroid/graphics/drawable/Drawable;
    .registers 5

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance p2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v1, 0x10100a7

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const p1, -0x101009e

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/ShareDialog;II)Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/List;Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;)Landroid/view/View;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-direct {p0, p1, v0}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Landroid/content/Context;F)I

    move-result v1

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x438c0000    # 280.0f

    invoke-direct {p0, p1, v4}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Landroid/content/Context;F)I

    move-result v5

    const/4 v7, -0x2

    invoke-direct {v3, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, p1, v4}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, -0x1

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42700000    # 60.0f

    invoke-direct {p0, p1, v9}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v5, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const v1, -0xc353e9

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, p1, v0}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v0, "\u5206\u4eab\u5230"

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v4}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41200000    # 10.0f

    invoke-direct {p0, p1, v4}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Landroid/content/Context;F)I

    move-result v9

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-direct {p0, p1, v4}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, -0x282829

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/ListView;

    invoke-direct {v9, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v3, :cond_c0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_d8

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog;->d:I

    mul-int/lit8 v3, v1, 0x4

    goto :goto_cc

    :cond_c0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x8

    if-le v1, v3, :cond_d8

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog;->d:I

    mul-int/lit8 v3, v1, 0x8

    :goto_cc
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0xf

    int-to-float v1, v3

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_d8
    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {v9, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    new-instance v7, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;-><init>(Lcom/ssjj/fnsdk/core/share/ShareDialog;Landroid/content/Context;Ljava/util/List;Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;Lcom/ssjj/fnsdk/core/share/ShareDialog$a;)V

    invoke-virtual {v9, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v6
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog;->b:Landroid/app/Dialog;

    :cond_12
    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/share/ShareDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a()V

    return-void
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/share/ShareDialog;)Lcom/ssjj/fnsdk/core/share/FNShareItem;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog;->c:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    return-object p0
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/share/ShareDialog;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a:Lcom/ssjj/fnsdk/core/share/ShareDialog;

    return-object v0
.end method


# virtual methods
.method public setShareItem(Lcom/ssjj/fnsdk/core/share/FNShareItem;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog;->c:Lcom/ssjj/fnsdk/core/share/FNShareItem;

    return-void
.end method

.method public showShareTo(Landroid/app/Activity;Ljava/util/List;Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a()V

    if-eqz p2, :cond_42

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_42

    :cond_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    if-eqz p3, :cond_1f

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p3, p1}, Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;->onClick(Ljava/lang/String;)V

    :cond_1f
    return-void

    :cond_20
    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog;->b:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Landroid/content/Context;Ljava/util/List;Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog;->b:Landroid/app/Dialog;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog;->b:Landroid/app/Dialog;

    new-instance p2, Lcom/ssjj/fnsdk/core/share/h;

    invoke-direct {p2, p0, p3}, Lcom/ssjj/fnsdk/core/share/h;-><init>(Lcom/ssjj/fnsdk/core/share/ShareDialog;Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_42
    :goto_42
    const-string p1, "showShareTo, shareToList size is 0"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p3, :cond_4d

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;->onClick(Ljava/lang/String;)V

    :cond_4d
    return-void
.end method
