.class Lcom/bytedance/sdk/openadsdk/core/c/a;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;
.source "InteractionExpressBackupView.java"


# static fields
.field private static h:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;


# instance fields
.field private i:Landroid/view/View;

.field private j:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private l:I

.field private m:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x12c

    .line 36
    new-array v0, v7, [Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v1, 0x0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const v2, 0x3f2aaaab

    const/16 v3, 0x1c2

    invoke-direct {v1, v6, v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/high16 v2, 0x3fc00000    # 1.5f

    const/16 v3, 0xc8

    invoke-direct {v1, v7, v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/c/a;->h:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->l:I

    .line 51
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/c/a;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->m:Landroid/app/Dialog;

    return-object v0
.end method

.method private a(II)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 232
    int-to-float v0, p1

    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v1, p2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float v6, v0, v1

    .line 234
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/c/a;->h:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v1, 0x0

    aget-object v3, v0, v1

    .line 235
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 236
    sget-object v7, Lcom/bytedance/sdk/openadsdk/core/c/a;->h:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    array-length v8, v7

    move v4, v5

    :goto_21
    if-ge v4, v8, :cond_3c

    aget-object v2, v7, v4

    .line 237
    iget v0, v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:F

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2b} :catch_37

    move-result v0

    .line 238
    cmpg-float v9, v0, v1

    if-gtz v9, :cond_3d

    move-object v1, v2

    .line 236
    :goto_31
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_21

    .line 244
    :catch_37
    move-exception v0

    .line 246
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/c/a;->h:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    aget-object v3, v0, v5

    :cond_3c
    return-object v3

    :cond_3d
    move v0, v1

    move-object v1, v3

    goto :goto_31
.end method

.method private a(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 167
    if-nez p1, :cond_3

    .line 178
    :goto_2
    return-void

    .line 170
    :cond_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/c/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/c/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/c/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method private a(Landroid/widget/ImageView;)V
    .registers 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 134
    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 87
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v1

    .line 86
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(II)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    move-result-object v1

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v0

    if-lez v0, :cond_c3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 90
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v0

    if-lez v0, :cond_c3

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v2

    if-le v0, v2, :cond_a1

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:F

    mul-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->g:I

    .line 104
    :goto_4f
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    if-lez v0, :cond_7e

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;)I

    move-result v2

    if-le v0, v2, :cond_7e

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 106
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    .line 107
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->g:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->g:I

    .line 111
    :cond_7e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 112
    if-nez v0, :cond_8d

    .line 113
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->g:I

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 115
    :cond_8d
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 116
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->g:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 117
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_db

    .line 120
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->c()V

    .line 129
    :goto_a0
    return-void

    .line 95
    :cond_a1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:F

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->g:I

    goto :goto_4f

    .line 99
    :cond_c3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    iget v2, v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->f:I

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    iget v2, v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->g:I

    goto/16 :goto_4f

    .line 121
    :cond_db
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e4

    .line 122
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->d()V

    goto :goto_a0

    .line 123
    :cond_e4
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_ed

    .line 124
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->e()V

    goto :goto_a0

    .line 126
    :cond_ed
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->c()V

    goto :goto_a0
.end method

.method private c()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v2, "tt_backup_insert_layout1"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v2, "tt_bu_img"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 141
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v3, "tt_bu_close"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 142
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v3, "tt_bu_icon"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 143
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v4, "tt_bu_title"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 144
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v6, "tt_bu_desc"

    invoke-static {v4, v6}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 145
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v7, "tt_bu_download"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 148
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    .line 149
    invoke-static {v5, v6, v6, v6, v6}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;IIII)V

    .line 150
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;)V

    .line 152
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/k;->L()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_97

    .line 153
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/k;->L()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_97
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/widget/ImageView;)V

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 158
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;Z)V

    .line 162
    invoke-virtual {p0, v4, v8}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;Z)V

    .line 164
    return-void
.end method

.method private d()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v2, "tt_backup_insert_layout2"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v2, "tt_bu_img"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 185
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v3, "tt_bu_close"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 186
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v3, "tt_bu_icon"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 187
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v4, "tt_bu_title"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 188
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v6, "tt_bu_desc"

    invoke-static {v4, v6}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 189
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v7, "tt_bu_download"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 192
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    .line 193
    invoke-static {v5, v6, v6, v6, v6}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;IIII)V

    .line 194
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;)V

    .line 196
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/k;->L()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_97

    .line 197
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/k;->L()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_97
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/widget/ImageView;)V

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 202
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;Z)V

    .line 206
    invoke-virtual {p0, v4, v8}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;Z)V

    .line 207
    return-void
.end method

.method private e()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v2, "tt_backup_insert_layout3"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v2, "tt_bu_img"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 214
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v3, "tt_bu_close"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 215
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const-string v4, "tt_bu_desc"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 218
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->a:Landroid/content/Context;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    .line 219
    invoke-static {v2, v3, v3, v3, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;IIII)V

    .line 220
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;)V

    .line 222
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/widget/ImageView;)V

    .line 223
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;Z)V

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->i:Landroid/view/View;

    invoke-virtual {p0, v0, v5}, Lcom/bytedance/sdk/openadsdk/core/c/a;->a(Landroid/view/View;Z)V

    .line 227
    return-void
.end method


# virtual methods
.method protected a(ILcom/bytedance/sdk/openadsdk/core/d/i;)V
    .registers 4

    .prologue
    .line 251
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_9

    .line 252
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(ILcom/bytedance/sdk/openadsdk/core/d/i;)V

    .line 254
    :cond_9
    return-void
.end method

.method public a(Landroid/app/Dialog;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->m:Landroid/app/Dialog;

    .line 70
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V
    .registers 7

    .prologue
    const/4 v2, -0x2

    .line 73
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->setBackgroundColor(I)V

    .line 74
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 75
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 76
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 77
    const-string v0, "interaction"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->e:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/c/a;->b()V

    .line 81
    return-void
.end method
