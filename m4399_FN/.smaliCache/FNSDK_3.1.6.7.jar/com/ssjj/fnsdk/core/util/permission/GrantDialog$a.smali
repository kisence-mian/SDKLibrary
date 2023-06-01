.class Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/Button;

.field e:Landroid/widget/Button;

.field final synthetic f:Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private u:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;Landroid/content/Context;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->f:Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "#131313"

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->g:Ljava/lang/String;

    const-string v3, "#313030"

    iput-object v3, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->h:Ljava/lang/String;

    const-string v4, "#efae0b"

    iput-object v4, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->i:Ljava/lang/String;

    const-string v5, "#c6910c"

    iput-object v5, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->j:Ljava/lang/String;

    const-string v5, "#FF9800"

    iput-object v5, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->k:Ljava/lang/String;

    const-string v5, "#252424"

    iput-object v5, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->l:Ljava/lang/String;

    const-string v5, "#757575"

    iput-object v5, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->m:Ljava/lang/String;

    const-string v6, "#ffffff"

    iput-object v6, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->n:Ljava/lang/String;

    const/4 v7, 0x1

    iput v7, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->o:I

    const/4 v8, 0x2

    iput v8, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->p:I

    const/4 v9, 0x3

    iput v9, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->q:I

    const/4 v10, 0x4

    iput v10, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->r:I

    const/4 v11, 0x5

    iput v11, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->s:I

    const/4 v12, 0x6

    iput v12, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->t:I

    iput-object v2, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->u:Landroid/content/Context;

    new-instance v13, Landroid/widget/RelativeLayout;

    invoke-direct {v13, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/graphics/drawable/GradientDrawable;

    sget-object v15, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v6}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->a(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v0, v6}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->a(Ljava/lang/String;)I

    move-result v6

    filled-new-array {v12, v6}, [I

    move-result-object v6

    invoke-direct {v14, v15, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/16 v6, 0x8

    new-array v6, v6, [F

    fill-array-data v6, :array_1cc

    invoke-virtual {v14, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v2, v6}, Lcom/ssjj/fnsdk/core/util/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v13, v6, v6, v6, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x1

    invoke-direct {v12, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v12}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->b:Landroid/widget/TextView;

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setId(I)V

    iget-object v12, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->b:Landroid/widget/TextView;

    const/high16 v15, 0x41a80000    # 21.0f

    invoke-virtual {v12, v7, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v12, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->b:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v1, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v15, 0xa

    invoke-virtual {v1, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v15, 0x9

    invoke-virtual {v1, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v15, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->b:Landroid/widget/TextView;

    invoke-virtual {v13, v15, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Landroid/view/View;->setId(I)V

    invoke-direct {v0, v4}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->a(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v1, v15}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v2, v10}, Lcom/ssjj/fnsdk/core/util/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v15, v14, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v11, 0x0

    invoke-virtual {v15, v11, v6, v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v13, v1, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->c:Landroid/widget/TextView;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v1, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->c:Landroid/widget/TextView;

    invoke-direct {v0, v3}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v14, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x5

    invoke-virtual {v1, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Lcom/ssjj/fnsdk/core/util/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v1, v12, v11, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v12, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->c:Landroid/widget/TextView;

    invoke-virtual {v13, v12, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v12, 0x40000000    # 2.0f

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v15, 0x42200000    # 40.0f

    invoke-static {v2, v15}, Lcom/ssjj/fnsdk/core/util/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v15

    invoke-direct {v12, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {v2, v3}, Lcom/ssjj/fnsdk/core/util/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v12, v3, v11, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcom/ssjj/fnsdk/core/util/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v12, v11, v3, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v13, v1, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->e:Landroid/widget/Button;

    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setId(I)V

    iget-object v3, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->e:Landroid/widget/Button;

    invoke-virtual {v3, v7, v6}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v3, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->e:Landroid/widget/Button;

    const-string v8, "\u53d6\u6d88"

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->e:Landroid/widget/Button;

    invoke-direct {v0, v5}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->a(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->e:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->e:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->e:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v15, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->e:Landroid/widget/Button;

    invoke-virtual {v1, v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x6

    invoke-virtual {v3, v15}, Landroid/view/View;->setId(I)V

    invoke-direct {v0, v5}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v2, v10}, Lcom/ssjj/fnsdk/core/util/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v5, v10, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v2, v10}, Lcom/ssjj/fnsdk/core/util/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v15

    invoke-static {v2, v10}, Lcom/ssjj/fnsdk/core/util/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v5, v11, v15, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->d:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setId(I)V

    iget-object v2, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->d:Landroid/widget/Button;

    invoke-virtual {v2, v7, v6}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v2, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->d:Landroid/widget/Button;

    const-string v3, "\u8bbe\u7f6e"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->d:Landroid/widget/Button;

    invoke-direct {v0, v4}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->d:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->d:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->d:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->d:Landroid/widget/Button;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v13, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->a:Landroid/view/View;

    return-void

    :array_1cc
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private a(Ljava/lang/String;)I
    .registers 2

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method a()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->a:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->f:Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;->c()V

    goto :goto_13

    :cond_a
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_13

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->f:Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;->d()V

    :cond_13
    :goto_13
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    packed-switch p2, :pswitch_data_30

    goto :goto_2d

    :pswitch_8
    iget-object p2, p0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->e:Landroid/widget/Button;

    if-ne p1, p2, :cond_13

    const-string p1, "#757575"

    :goto_e
    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->a(Ljava/lang/String;)I

    move-result p1

    goto :goto_24

    :cond_13
    iget-object p2, p0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->d:Landroid/widget/Button;

    if-ne p1, p2, :cond_2d

    const-string p1, "#efae0b"

    goto :goto_e

    :pswitch_1a
    iget-object p2, p0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->e:Landroid/widget/Button;

    const-string v0, "#FF9800"

    if-ne p1, p2, :cond_28

    :goto_20
    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->a(Ljava/lang/String;)I

    move-result p1

    :goto_24
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2d

    :cond_28
    iget-object p2, p0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->d:Landroid/widget/Button;

    if-ne p1, p2, :cond_2d

    goto :goto_20

    :cond_2d
    :goto_2d
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_8
    .end packed-switch
.end method
