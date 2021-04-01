.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;
.source "FeedExpressBackupView.java"


# static fields
.field private static j:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;


# instance fields
.field h:Z

.field i:Z

.field private k:I

.field private l:Landroid/view/View;

.field private m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/16 v7, 0x12c

    const/high16 v6, 0x3fa00000    # 1.25f

    const/16 v5, 0x177

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v1, 0x0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const v3, 0x40418c63

    const/16 v4, 0x7c

    invoke-direct {v2, v8, v3, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-direct {v2, v9, v6, v5, v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v2, 0x4

    const v3, 0x3fb3c679

    const/16 v4, 0x10b

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v6, v5, v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v1, v0, v9

    const/4 v1, 0x4

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v6, v5, v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/16 v3, 0xf

    invoke-direct {v2, v3, v6, v5, v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->j:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;-><init>(Landroid/content/Context;)V

    .line 65
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->h:Z

    .line 66
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->i:Z

    .line 70
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    .line 71
    return-void
.end method

.method private a(I)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 164
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->j:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    aget-object v1, v1, v0

    .line 166
    :try_start_5
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->j:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    array-length v4, v3

    move v2, v0

    :goto_9
    if-ge v2, v4, :cond_19

    aget-object v0, v3, v2

    .line 167
    iget v5, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_f} :catch_16

    if-ne v5, p1, :cond_12

    .line 174
    :goto_11
    return-object v0

    .line 166
    :cond_12
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 172
    :catch_16
    move-exception v0

    move-object v0, v1

    goto :goto_11

    :cond_19
    move-object v0, v1

    goto :goto_11
.end method

.method private a(Landroid/widget/ImageView;)V
    .registers 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 180
    return-void
.end method

.method private b(I)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 473
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->k:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->i:Z

    .line 475
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->c(I)I

    move-result v0

    .line 477
    const/4 v1, 0x3

    if-ne v1, v0, :cond_1c

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->h:Z

    .line 486
    :cond_1b
    :goto_1b
    return-void

    .line 479
    :cond_1c
    if-ne v2, v0, :cond_29

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/w;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 480
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->h:Z

    goto :goto_1b

    .line 481
    :cond_29
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1b

    .line 482
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 483
    :cond_3c
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->h:Z

    goto :goto_1b
.end method

.method private c()V
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(I)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    .line 103
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    .line 106
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    if-gtz v1, :cond_34

    .line 107
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    .line 111
    :cond_34
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    if-gtz v1, :cond_49

    .line 112
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    int-to-float v1, v1

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:F

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    .line 116
    :cond_49
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    if-lez v0, :cond_78

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_78

    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 118
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    .line 119
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    .line 122
    :cond_78
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 123
    if-nez v1, :cond_87

    .line 124
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    invoke-direct {v1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 126
    :cond_87
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 127
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    instance-of v0, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_9a

    move-object v0, v1

    .line 129
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 131
    :cond_9a
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->c(Ljava/lang/String;)I

    move-result v0

    .line 133
    const/16 v1, 0x9

    if-ne v0, v1, :cond_b3

    .line 134
    const-string v0, "draw_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->e:Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->h()V

    .line 161
    :goto_b2
    return-void

    .line 138
    :cond_b3
    const-string v0, "embeded_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->e:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v0

    sparse-switch v0, :sswitch_data_da

    goto :goto_b2

    .line 141
    :sswitch_c1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->d()V

    goto :goto_b2

    .line 144
    :sswitch_c5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f()V

    goto :goto_b2

    .line 147
    :sswitch_c9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->e()V

    goto :goto_b2

    .line 150
    :sswitch_cd
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->i()V

    goto :goto_b2

    .line 153
    :sswitch_d1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g()V

    goto :goto_b2

    .line 156
    :sswitch_d5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->j()V

    goto :goto_b2

    .line 139
    nop

    :sswitch_data_da
    .sparse-switch
        0x2 -> :sswitch_c1
        0x3 -> :sswitch_c5
        0x4 -> :sswitch_c9
        0x5 -> :sswitch_cd
        0xf -> :sswitch_d1
        0x10 -> :sswitch_d5
    .end sparse-switch
.end method

.method private d()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_feed_img_small"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_bu_img"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 186
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_close"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 187
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_desc"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 188
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_title"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 190
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/widget/ImageView;)V

    .line 191
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-virtual {p0, p0, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 203
    return-void
.end method

.method private e()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 206
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_feed_img_group"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_bu_img_1"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 209
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_img_2"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 210
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_img_3"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 211
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_icon"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 212
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_close"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 213
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v7, "tt_bu_desc"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 214
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v8, "tt_bu_title"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 215
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v9, "tt_bu_download"

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 218
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v9

    .line 219
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v10

    .line 220
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v8

    const/4 v11, 0x2

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/sdk/openadsdk/core/d/j;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v8

    .line 221
    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v11

    invoke-virtual {v11, v9, v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v0

    invoke-virtual {v0, v10, v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 223
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v0

    invoke-virtual {v0, v8, v2}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 227
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->L()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_120

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_120
    invoke-virtual {p0, p0, v13}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 242
    invoke-virtual {p0, v7, v12}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 243
    return-void
.end method

.method private f()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_feed_horizontal"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_bu_video_container"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 250
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_bu_img_container"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 252
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_bu_img"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 255
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_close"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 256
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_desc"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 257
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_title"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 258
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_download"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 260
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/widget/ImageView;)V

    .line 261
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->L()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b8

    .line 272
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :cond_b8
    invoke-virtual {p0, p0, v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 276
    invoke-virtual {p0, v4, v8}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 277
    return-void
.end method

.method private g()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 280
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_feed_vertical"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    .line 283
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_bu_video_container"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_bu_img_container"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 286
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_bu_video_container_inner"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 289
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_video_icon"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 290
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_close"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 291
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_desc"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 292
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_title"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 293
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v7, "tt_bu_video_name1"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 294
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v8, "tt_bu_video_name2"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 295
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v9, "tt_bu_download"

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 296
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v10, "tt_bu_video_score"

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 297
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v11, "tt_bu_video_score_bar"

    invoke-static {v10, v11}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    .line 299
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v10

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 301
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    if-eqz v1, :cond_19d

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->e()I

    move-result v1

    .line 309
    :goto_107
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v10, "%.1f"

    new-array v11, v13, [Ljava/lang/Object;

    int-to-float v12, v1

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v11, v14

    invoke-static {v2, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {v9, v13}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarEmptyNum(I)V

    .line 311
    invoke-virtual {v9, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarFillNum(I)V

    .line 312
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImageWidth(F)V

    .line 313
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImageHeight(F)V

    .line 314
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImagePadding(F)V

    .line 315
    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->a()V

    .line 317
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getNameOrSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->L()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17b

    .line 323
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :cond_17b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b()Landroid/view/View;

    move-result-object v1

    .line 328
    if-eqz v1, :cond_196

    .line 329
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    mul-int/lit8 v2, v2, 0x7b

    div-int/lit16 v2, v2, 0x177

    .line 330
    mul-int/lit8 v3, v2, 0x10

    div-int/lit8 v3, v3, 0x9

    .line 331
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 332
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    :cond_196
    invoke-virtual {p0, p0, v14}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 336
    invoke-virtual {p0, v7, v13}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 337
    return-void

    .line 308
    :cond_19d
    const/4 v1, 0x4

    goto/16 :goto_107
.end method

.method private h()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 340
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_draw"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    .line 342
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_bu_video_container"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 343
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_desc"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 344
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_title"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 345
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_download"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 347
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/k;->L()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 351
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/k;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :cond_7a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b()Landroid/view/View;

    move-result-object v4

    .line 356
    if-eqz v4, :cond_8b

    .line 357
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 358
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    :cond_8b
    invoke-virtual {p0, v2, v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 362
    invoke-virtual {p0, v1, v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 363
    invoke-virtual {p0, v3, v8}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 364
    return-void
.end method

.method private i()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 368
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_feed_horizontal"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    .line 371
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_bu_video_container"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 372
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 373
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_img_container"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    .line 374
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_close"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 377
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_desc"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 378
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_title"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 379
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_download"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 381
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$5;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->L()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a7

    .line 392
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    :cond_a7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b()Landroid/view/View;

    move-result-object v1

    .line 397
    if-eqz v1, :cond_c0

    .line 398
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 399
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    mul-int/lit8 v5, v5, 0x9

    div-int/lit8 v5, v5, 0x10

    invoke-direct {v2, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    :cond_c0
    invoke-virtual {p0, p0, v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 403
    invoke-virtual {p0, v4, v8}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 405
    return-void
.end method

.method private j()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 408
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_feed_vertical"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    .line 411
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_bu_video_container"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 412
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_bu_img_container"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 414
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_bu_img"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 417
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_close"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 418
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_desc"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 419
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_title"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 420
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_download"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 422
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/widget/ImageView;)V

    .line 423
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->L()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b8

    .line 434
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    :cond_b8
    invoke-virtual {p0, p0, v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 438
    invoke-virtual {p0, v4, v8}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 439
    return-void
.end method

.method private k()Z
    .registers 3

    .prologue
    .line 489
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 490
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_19

    :cond_17
    const/4 v0, 0x1

    .line 489
    :goto_18
    return v0

    .line 490
    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method protected a(ILcom/bytedance/sdk/openadsdk/core/d/i;)V
    .registers 4

    .prologue
    .line 495
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_9

    .line 496
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(ILcom/bytedance/sdk/openadsdk/core/d/i;)V

    .line 498
    :cond_9
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V
    .registers 7

    .prologue
    const/4 v2, -0x2

    .line 84
    const-string v0, "FeedExpressBackupView"

    const-string v1, "show backup view"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->setBackgroundColor(I)V

    .line 86
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 87
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 88
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->k:I

    .line 91
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->k:I

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b(I)V

    .line 93
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->c()V

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    return-void
.end method

.method public b()Landroid/view/View;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 442
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 469
    :cond_9
    :goto_9
    return-object v1

    .line 444
    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->k()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 446
    :try_start_10
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 447
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$7;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;)V

    .line 460
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->h:Z

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsAutoPlay(Z)V

    .line 461
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->i:Z

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsQuiet(Z)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_2b} :catch_3f

    .line 466
    :goto_2b
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->k()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a(JZZ)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v1, v0

    .line 469
    goto :goto_9

    .line 462
    :catch_3f
    move-exception v0

    move-object v0, v1

    .line 463
    goto :goto_2b

    :cond_42
    move-object v0, v1

    goto :goto_2b
.end method
