.class public final Lcom/anythink/myoffer/ui/c;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/myoffer/ui/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/anythink/myoffer/ui/c$a;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;IILcom/anythink/myoffer/c/a;Lcom/anythink/myoffer/ui/c$a;)V
    .registers 15

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput v7, p0, Lcom/anythink/myoffer/ui/c;->f:I

    .line 26
    iput v5, p0, Lcom/anythink/myoffer/ui/c;->g:I

    .line 27
    iput v8, p0, Lcom/anythink/myoffer/ui/c;->h:I

    .line 32
    iput-object p5, p0, Lcom/anythink/myoffer/ui/c;->a:Lcom/anythink/myoffer/ui/c$a;

    .line 34
    iput p2, p0, Lcom/anythink/myoffer/ui/c;->b:I

    .line 35
    iput p3, p0, Lcom/anythink/myoffer/ui/c;->c:I

    .line 1044
    :try_start_17
    iget-object v0, p0, Lcom/anythink/myoffer/ui/c;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_29

    .line 1045
    invoke-virtual {p4}, Lcom/anythink/myoffer/c/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 1046
    iget v1, p0, Lcom/anythink/myoffer/ui/c;->b:I

    iget v2, p0, Lcom/anythink/myoffer/ui/c;->c:I

    invoke-static {v0, v1, v2}, Lcom/anythink/myoffer/a/a/f;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/c;->d:Landroid/graphics/Bitmap;

    .line 1048
    :cond_29
    iget-object v0, p0, Lcom/anythink/myoffer/ui/c;->e:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/anythink/myoffer/ui/c;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3d

    .line 1049
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/ui/c;->d:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/anythink/myoffer/a/a/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/c;->e:Landroid/graphics/Bitmap;
    :try_end_3d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_3d} :catch_119
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3d} :catch_11f

    .line 1059
    :cond_3d
    :goto_3d
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1060
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1061
    iget-object v1, p0, Lcom/anythink/myoffer/ui/c;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1063
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/myoffer/ui/c;->i:Landroid/widget/ImageView;

    .line 1064
    iget-object v1, p0, Lcom/anythink/myoffer/ui/c;->i:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/anythink/myoffer/ui/c;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1066
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1069
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/anythink/myoffer/ui/c;->b:I

    iget v4, p0, Lcom/anythink/myoffer/ui/c;->c:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1070
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1072
    iget v3, p0, Lcom/anythink/myoffer/ui/c;->f:I

    invoke-virtual {p0, v0, v3, v1}, Lcom/anythink/myoffer/ui/c;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1073
    iget-object v0, p0, Lcom/anythink/myoffer/ui/c;->i:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/myoffer/ui/c;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/anythink/myoffer/ui/c;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1075
    new-instance v0, Lcom/anythink/myoffer/ui/c$1;

    invoke-direct {v0, p0}, Lcom/anythink/myoffer/ui/c$1;-><init>(Lcom/anythink/myoffer/ui/c;)V

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1089
    iget v0, p0, Lcom/anythink/myoffer/ui/c;->h:I

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 1090
    iget v0, p0, Lcom/anythink/myoffer/ui/c;->h:I

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/c;->removeViewAt(I)V

    .line 1093
    :cond_96
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1094
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_video_close"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1096
    const/high16 v1, 0x41e80000    # 29.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 1097
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 1098
    const/high16 v3, 0x41980000    # 19.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 1099
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1100
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1101
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1102
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1103
    iget v2, p0, Lcom/anythink/myoffer/ui/c;->h:I

    invoke-virtual {p0, v0, v2, v4}, Lcom/anythink/myoffer/ui/c;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1106
    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/anythink/myoffer/ui/a/a;->a(Landroid/view/View;I)V

    .line 1108
    new-instance v1, Lcom/anythink/myoffer/ui/c$2;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/c$2;-><init>(Lcom/anythink/myoffer/ui/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1119
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ne v0, v8, :cond_110

    .line 1120
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1123
    :cond_110
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1124
    invoke-virtual {p1, p0, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 40
    return-void

    .line 1052
    :catch_119
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_3d

    .line 1054
    :catch_11f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3d
.end method

.method static synthetic a(Lcom/anythink/myoffer/ui/c;)Lcom/anythink/myoffer/ui/c$a;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/anythink/myoffer/ui/c;->a:Lcom/anythink/myoffer/ui/c$a;

    return-object v0
.end method

.method private a()V
    .registers 7

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    .line 59
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 60
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 61
    iget-object v1, p0, Lcom/anythink/myoffer/ui/c;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/myoffer/ui/c;->i:Landroid/widget/ImageView;

    .line 64
    iget-object v1, p0, Lcom/anythink/myoffer/ui/c;->i:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/anythink/myoffer/ui/c;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 66
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/anythink/myoffer/ui/c;->b:I

    iget v4, p0, Lcom/anythink/myoffer/ui/c;->c:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    iget v3, p0, Lcom/anythink/myoffer/ui/c;->f:I

    invoke-virtual {p0, v0, v3, v1}, Lcom/anythink/myoffer/ui/c;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lcom/anythink/myoffer/ui/c;->i:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/myoffer/ui/c;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/anythink/myoffer/ui/c;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v0, Lcom/anythink/myoffer/ui/c$1;

    invoke-direct {v0, p0}, Lcom/anythink/myoffer/ui/c$1;-><init>(Lcom/anythink/myoffer/ui/c;)V

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2089
    iget v0, p0, Lcom/anythink/myoffer/ui/c;->h:I

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 2090
    iget v0, p0, Lcom/anythink/myoffer/ui/c;->h:I

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/c;->removeViewAt(I)V

    .line 2093
    :cond_5b
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2094
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_video_close"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2096
    const/high16 v1, 0x41e80000    # 29.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 2097
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 2098
    const/high16 v3, 0x41980000    # 19.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 2099
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2100
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2101
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2102
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2103
    iget v2, p0, Lcom/anythink/myoffer/ui/c;->h:I

    invoke-virtual {p0, v0, v2, v4}, Lcom/anythink/myoffer/ui/c;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2106
    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/anythink/myoffer/ui/a/a;->a(Landroid/view/View;I)V

    .line 2108
    new-instance v1, Lcom/anythink/myoffer/ui/c$2;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/c$2;-><init>(Lcom/anythink/myoffer/ui/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 119
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 120
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 123
    :cond_c
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 124
    invoke-virtual {p1, p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 125
    return-void
.end method

.method private a(Lcom/anythink/myoffer/c/a;)V
    .registers 5

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/anythink/myoffer/ui/c;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    .line 45
    invoke-virtual {p1}, Lcom/anythink/myoffer/c/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget v1, p0, Lcom/anythink/myoffer/ui/c;->b:I

    iget v2, p0, Lcom/anythink/myoffer/ui/c;->c:I

    invoke-static {v0, v1, v2}, Lcom/anythink/myoffer/a/a/f;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/c;->d:Landroid/graphics/Bitmap;

    .line 48
    :cond_12
    iget-object v0, p0, Lcom/anythink/myoffer/ui/c;->e:Landroid/graphics/Bitmap;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/anythink/myoffer/ui/c;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_26

    .line 49
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/ui/c;->d:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/anythink/myoffer/a/a/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/c;->e:Landroid/graphics/Bitmap;
    :try_end_26
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_26} :catch_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_2c

    .line 56
    :cond_26
    :goto_26
    return-void

    .line 52
    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_26

    .line 54
    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method private b()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 89
    iget v0, p0, Lcom/anythink/myoffer/ui/c;->h:I

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 90
    iget v0, p0, Lcom/anythink/myoffer/ui/c;->h:I

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/c;->removeViewAt(I)V

    .line 93
    :cond_e
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_video_close"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    const/high16 v1, 0x41e80000    # 29.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 97
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 98
    const/high16 v3, 0x41980000    # 19.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 99
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 100
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 102
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 103
    iget v2, p0, Lcom/anythink/myoffer/ui/c;->h:I

    invoke-virtual {p0, v0, v2, v4}, Lcom/anythink/myoffer/ui/c;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 106
    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/anythink/myoffer/ui/a/a;->a(Landroid/view/View;I)V

    .line 108
    new-instance v1, Lcom/anythink/myoffer/ui/c$2;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/c$2;-><init>(Lcom/anythink/myoffer/ui/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method


# virtual methods
.method protected final onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 130
    iget-object v0, p0, Lcom/anythink/myoffer/ui/c;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 131
    iget-object v0, p0, Lcom/anythink/myoffer/ui/c;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    :cond_c
    iget-object v0, p0, Lcom/anythink/myoffer/ui/c;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    .line 134
    iget-object v0, p0, Lcom/anythink/myoffer/ui/c;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    :cond_15
    return-void
.end method
