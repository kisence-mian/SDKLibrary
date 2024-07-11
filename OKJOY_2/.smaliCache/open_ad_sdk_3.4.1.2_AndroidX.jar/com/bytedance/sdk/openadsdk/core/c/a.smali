.class Lcom/bytedance/sdk/openadsdk/core/c/a;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;
.source "InteractionExpressBackupView.java"


# static fields
.field private static k:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;


# instance fields
.field private l:Landroid/view/View;

.field private m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private o:I

.field private p:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 38
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x12c

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v4, 0x2

    const v6, 0x3f2aaaab

    const/16 v7, 0x1c2

    invoke-direct {v2, v4, v6, v5, v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/high16 v3, 0x3fc00000    # 1.5f

    const/16 v6, 0xc8

    invoke-direct {v2, v0, v3, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v2, v1, v4

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/c/a;->k:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->o:I

    .line 53
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/c/a;)Landroid/app/Dialog;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->p:Landroid/app/Dialog;

    return-object p0
.end method

.method private a(II)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;
    .registers 11

    .line 310
    int-to-float p1, p1

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    div-float/2addr p1, p2

    .line 312
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/c/a;->k:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    aget-object v1, p2, v0

    .line 313
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 314
    array-length v3, p2

    move v4, v0

    :goto_1d
    if-ge v4, v3, :cond_32

    aget-object v5, p2, v4

    .line 315
    iget v6, v5, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:F

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_33

    .line 316
    cmpg-float v7, v6, v2

    if-gtz v7, :cond_2f

    .line 317
    nop

    .line 318
    move-object v1, v5

    move v2, v6

    .line 314
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 321
    :cond_32
    return-object v1

    .line 322
    :catchall_33
    move-exception p1

    .line 324
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/c/a;->k:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    aget-object p1, p1, v0

    return-object p1
.end method

.method private a(Landroid/widget/ImageView;)V
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 137
    return-void
.end method

.method private b()V
    .registers 5

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 90
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v1

    .line 89
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(II)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v1

    if-lez v1, :cond_72

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 93
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v1

    if-lez v1, :cond_72

    .line 94
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v2

    if-le v1, v2, :cond_50

    .line 95
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    .line 96
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->g:I

    goto :goto_88

    .line 98
    :cond_50
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    .line 99
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->g:I

    goto :goto_88

    .line 102
    :cond_72
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    .line 103
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->e:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->g:I

    .line 107
    :goto_88
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    if-lez v1, :cond_b7

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_b7

    .line 108
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 109
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    .line 110
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->g:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->g:I

    .line 114
    :cond_b7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 115
    if-nez v1, :cond_c6

    .line 116
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->g:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 118
    :cond_c6
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 119
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->g:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_da

    .line 123
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->c()V

    goto :goto_ef

    .line 124
    :cond_da
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e3

    .line 125
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->d()V

    goto :goto_ef

    .line 126
    :cond_e3
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_ec

    .line 127
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->e()V

    goto :goto_ef

    .line 129
    :cond_ec
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->c()V

    .line 132
    :goto_ef
    return-void
.end method

.method private b(Landroid/view/View;)V
    .registers 3

    .line 193
    if-nez p1, :cond_3

    .line 194
    return-void

    .line 196
    :cond_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/c/a$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/c/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/c/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    return-void
.end method

.method private c()V
    .registers 15

    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v2, "tt_backup_insert_layout1"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    .line 142
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v3, "tt_ad_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 143
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v4, "tt_bu_img"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 144
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v5, "tt_bu_close"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 145
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v6, "tt_bu_icon"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 146
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v7, "tt_bu_title"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 147
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v8, "tt_bu_desc"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 148
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v9, "tt_bu_download"

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 149
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v10, "tt_bu_dislike"

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 151
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const/high16 v10, 0x41700000    # 15.0f

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v9

    float-to-int v9, v9

    .line 152
    invoke-static {v3, v9, v9, v9, v9}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;IIII)V

    .line 153
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/c/a;->b(Landroid/view/View;)V

    .line 154
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/c/a$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/c/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/c/a;)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_bd

    .line 161
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_bd
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v3

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eqz v3, :cond_ec

    .line 167
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->getVideoView()Landroid/view/View;

    move-result-object v3

    .line 168
    if-eqz v3, :cond_e5

    .line 169
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 170
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    iget v12, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    iget v13, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    mul-int/lit8 v13, v13, 0x9

    div-int/lit8 v13, v13, 0x10

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 171
    const/16 v12, 0x11

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 172
    invoke-virtual {v0, v3, v10, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 174
    :cond_e5
    invoke-static {v1, v9}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 175
    invoke-static {v0, v10}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 176
    goto :goto_f5

    .line 177
    :cond_ec
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/widget/ImageView;)V

    .line 178
    invoke-static {v1, v10}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 179
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 182
    :goto_f5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 183
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {p0, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;Z)V

    .line 187
    invoke-virtual {p0, v7, v2}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;Z)V

    .line 188
    invoke-virtual {p0, v8, v2}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;Z)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;)V

    .line 190
    return-void
.end method

.method private d()V
    .registers 15

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v2, "tt_backup_insert_layout2"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    .line 210
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v3, "tt_ad_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 211
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v4, "tt_bu_img"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 212
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v5, "tt_bu_close"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 213
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v6, "tt_bu_icon"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 214
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v7, "tt_bu_title"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 215
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v8, "tt_bu_desc"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 216
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v9, "tt_bu_download"

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 217
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v10, "tt_bu_dislike"

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 219
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const/high16 v10, 0x41700000    # 15.0f

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v9

    float-to-int v9, v9

    .line 220
    invoke-static {v3, v9, v9, v9, v9}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;IIII)V

    .line 221
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/c/a;->b(Landroid/view/View;)V

    .line 222
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/c/a$3;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/c/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/c/a;)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_bd

    .line 229
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_bd
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v3

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eqz v3, :cond_ec

    .line 234
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->getVideoView()Landroid/view/View;

    move-result-object v3

    .line 235
    if-eqz v3, :cond_e5

    .line 236
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 237
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    iget v12, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    iget v13, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    mul-int/lit8 v13, v13, 0x9

    div-int/lit8 v13, v13, 0x10

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 238
    const/16 v12, 0x11

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 239
    invoke-virtual {v0, v3, v10, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 241
    :cond_e5
    invoke-static {v1, v9}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 242
    invoke-static {v0, v10}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 244
    goto :goto_f5

    .line 245
    :cond_ec
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/widget/ImageView;)V

    .line 246
    invoke-static {v1, v10}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 247
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 251
    :goto_f5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 252
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {p0, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;Z)V

    .line 256
    invoke-virtual {p0, v7, v2}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;Z)V

    .line 257
    invoke-virtual {p0, v8, v2}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;Z)V

    .line 258
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;)V

    .line 259
    return-void
.end method

.method private e()V
    .registers 12

    .line 262
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v2, "tt_backup_insert_layout3"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    .line 265
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v3, "tt_ad_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 266
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v4, "tt_bu_img"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 267
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v5, "tt_bu_close"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 268
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v6, "tt_bu_desc"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 269
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v7, "tt_bu_dislike"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 271
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    .line 272
    invoke-static {v3, v6, v6, v6, v6}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;IIII)V

    .line 273
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/c/a;->b(Landroid/view/View;)V

    .line 274
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/c/a$4;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/c/a$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/c/a;)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v3, :cond_ae

    .line 282
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->getVideoView()Landroid/view/View;

    move-result-object v3

    .line 283
    if-eqz v3, :cond_a7

    .line 284
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 285
    iget v8, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v9

    sub-int/2addr v8, v9

    .line 286
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v10, v8, 0x9

    div-int/lit8 v10, v10, 0x10

    invoke-direct {v9, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 287
    const/16 v8, 0x11

    iput v8, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 288
    invoke-virtual {v0, v3, v7, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 290
    :cond_a7
    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 291
    invoke-static {v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 293
    goto :goto_b7

    .line 294
    :cond_ae
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/widget/ImageView;)V

    .line 295
    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 296
    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 299
    :goto_b7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {p0, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;Z)V

    .line 302
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:Landroid/view/View;

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;Z)V

    .line 303
    invoke-virtual {p0, v5, v2}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;Z)V

    .line 304
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;)V

    .line 305
    return-void
.end method


# virtual methods
.method protected a(ILcom/bytedance/sdk/openadsdk/core/d/j;)V
    .registers 4

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_7

    .line 330
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(ILcom/bytedance/sdk/openadsdk/core/d/j;)V

    .line 332
    :cond_7
    return-void
.end method

.method public a(Landroid/app/Dialog;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->p:Landroid/app/Dialog;

    .line 72
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V
    .registers 5

    .line 75
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->setBackgroundColor(I)V

    .line 76
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 77
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 78
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 79
    const-string p1, "interaction"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->e:Ljava/lang/String;

    .line 80
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->h:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(I)V

    .line 81
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->b()V

    .line 84
    return-void
.end method
