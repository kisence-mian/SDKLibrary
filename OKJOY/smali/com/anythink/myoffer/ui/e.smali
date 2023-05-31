.class public final Lcom/anythink/myoffer/ui/e;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/myoffer/ui/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Lcom/anythink/myoffer/ui/e$a;

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Bitmap;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;IILcom/anythink/myoffer/c/a;Lcom/anythink/myoffer/ui/e$a;)V
    .registers 14

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput v7, p0, Lcom/anythink/myoffer/ui/e;->f:I

    .line 25
    iput v5, p0, Lcom/anythink/myoffer/ui/e;->g:I

    .line 30
    iput-object p1, p0, Lcom/anythink/myoffer/ui/e;->a:Landroid/view/ViewGroup;

    .line 31
    iput-object p5, p0, Lcom/anythink/myoffer/ui/e;->b:Lcom/anythink/myoffer/ui/e$a;

    .line 33
    iput p2, p0, Lcom/anythink/myoffer/ui/e;->c:I

    .line 34
    iput p3, p0, Lcom/anythink/myoffer/ui/e;->d:I

    .line 1043
    :try_start_16
    iget-object v0, p0, Lcom/anythink/myoffer/ui/e;->e:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2e

    .line 1044
    invoke-virtual {p4}, Lcom/anythink/myoffer/c/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 1045
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1046
    iget v1, p0, Lcom/anythink/myoffer/ui/e;->c:I

    iget v2, p0, Lcom/anythink/myoffer/ui/e;->d:I

    invoke-static {v0, v1, v2}, Lcom/anythink/myoffer/a/a/f;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/e;->e:Landroid/graphics/Bitmap;
    :try_end_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_2e} :catch_fb
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2e} :catch_101

    .line 1058
    :cond_2e
    :goto_2e
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1059
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_main_image_id"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 1060
    iget-object v1, p0, Lcom/anythink/myoffer/ui/e;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4f

    .line 1061
    iget-object v1, p0, Lcom/anythink/myoffer/ui/e;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1064
    :cond_4f
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/anythink/myoffer/ui/e;->c:I

    iget v3, p0, Lcom/anythink/myoffer/ui/e;->d:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1065
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1067
    iget v2, p0, Lcom/anythink/myoffer/ui/e;->f:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/anythink/myoffer/ui/e;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1069
    new-instance v0, Lcom/anythink/myoffer/ui/e$1;

    invoke-direct {v0, p0}, Lcom/anythink/myoffer/ui/e$1;-><init>(Lcom/anythink/myoffer/ui/e;)V

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/e;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1082
    iget v0, p0, Lcom/anythink/myoffer/ui/e;->g:I

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 1083
    iget v0, p0, Lcom/anythink/myoffer/ui/e;->g:I

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/e;->removeViewAt(I)V

    .line 1086
    :cond_77
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1087
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_btn_close_id"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 1088
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_video_close"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1090
    const/high16 v1, 0x41e80000    # 29.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 1091
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 1092
    const/high16 v3, 0x41980000    # 19.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 1093
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1094
    const/16 v1, 0xb

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1095
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1096
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1097
    iget v1, p0, Lcom/anythink/myoffer/ui/e;->g:I

    invoke-virtual {p0, v0, v1, v4}, Lcom/anythink/myoffer/ui/e;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    new-instance v1, Lcom/anythink/myoffer/ui/e$2;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/e$2;-><init>(Lcom/anythink/myoffer/ui/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1111
    invoke-virtual {p1, p0, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 39
    return-void

    .line 1050
    :catch_fb
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_2e

    .line 1052
    :catch_101
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2e
.end method

.method static synthetic a(Lcom/anythink/myoffer/ui/e;)Lcom/anythink/myoffer/ui/e$a;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/anythink/myoffer/ui/e;->b:Lcom/anythink/myoffer/ui/e$a;

    return-object v0
.end method

.method private a()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 58
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_main_image_id"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 60
    iget-object v1, p0, Lcom/anythink/myoffer/ui/e;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_22

    .line 61
    iget-object v1, p0, Lcom/anythink/myoffer/ui/e;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    :cond_22
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/anythink/myoffer/ui/e;->c:I

    iget v3, p0, Lcom/anythink/myoffer/ui/e;->d:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 65
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67
    iget v2, p0, Lcom/anythink/myoffer/ui/e;->f:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/anythink/myoffer/ui/e;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v0, Lcom/anythink/myoffer/ui/e$1;

    invoke-direct {v0, p0}, Lcom/anythink/myoffer/ui/e$1;-><init>(Lcom/anythink/myoffer/ui/e;)V

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/e;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2082
    iget v0, p0, Lcom/anythink/myoffer/ui/e;->g:I

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 2083
    iget v0, p0, Lcom/anythink/myoffer/ui/e;->g:I

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/e;->removeViewAt(I)V

    .line 2086
    :cond_4a
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2087
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_btn_close_id"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 2088
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_video_close"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2090
    const/high16 v1, 0x41e80000    # 29.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 2091
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 2092
    const/high16 v3, 0x41980000    # 19.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 2093
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2094
    const/16 v1, 0xb

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2095
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2096
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2097
    iget v1, p0, Lcom/anythink/myoffer/ui/e;->g:I

    invoke-virtual {p0, v0, v1, v4}, Lcom/anythink/myoffer/ui/e;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2099
    new-instance v1, Lcom/anythink/myoffer/ui/e$2;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/e$2;-><init>(Lcom/anythink/myoffer/ui/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 110
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 112
    return-void
.end method

.method private a(Lcom/anythink/myoffer/c/a;)V
    .registers 5

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/anythink/myoffer/ui/e;->e:Landroid/graphics/Bitmap;

    if-nez v0, :cond_18

    .line 44
    invoke-virtual {p1}, Lcom/anythink/myoffer/c/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 46
    iget v1, p0, Lcom/anythink/myoffer/ui/e;->c:I

    iget v2, p0, Lcom/anythink/myoffer/ui/e;->d:I

    invoke-static {v0, v1, v2}, Lcom/anythink/myoffer/a/a/f;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/e;->e:Landroid/graphics/Bitmap;
    :try_end_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_18} :catch_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1e

    .line 54
    :cond_18
    :goto_18
    return-void

    .line 50
    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_18

    .line 52
    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method private b()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 82
    iget v0, p0, Lcom/anythink/myoffer/ui/e;->g:I

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 83
    iget v0, p0, Lcom/anythink/myoffer/ui/e;->g:I

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/e;->removeViewAt(I)V

    .line 86
    :cond_e
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_btn_close_id"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 88
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_video_close"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    const/high16 v1, 0x41e80000    # 29.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 91
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 92
    const/high16 v3, 0x41980000    # 19.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/e;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 93
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    const/16 v1, 0xb

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 96
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 97
    iget v1, p0, Lcom/anythink/myoffer/ui/e;->g:I

    invoke-virtual {p0, v0, v1, v4}, Lcom/anythink/myoffer/ui/e;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v1, Lcom/anythink/myoffer/ui/e$2;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/e$2;-><init>(Lcom/anythink/myoffer/ui/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected final onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 117
    iget-object v0, p0, Lcom/anythink/myoffer/ui/e;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 118
    iget-object v0, p0, Lcom/anythink/myoffer/ui/e;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 120
    :cond_c
    return-void
.end method
