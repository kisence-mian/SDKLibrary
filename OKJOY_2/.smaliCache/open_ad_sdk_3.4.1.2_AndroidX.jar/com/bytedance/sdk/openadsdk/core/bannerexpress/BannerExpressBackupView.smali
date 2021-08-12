.class public Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;
.source "BannerExpressBackupView.java"


# static fields
.field private static k:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;


# instance fields
.field private l:Landroid/view/View;

.field private m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v2, 0x1

    const v3, 0x40d55555

    const/16 v4, 0x258

    const/16 v5, 0x5a

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const v3, 0x40cccccd    # 6.4f

    const/16 v5, 0x280

    const/16 v6, 0x64

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/high16 v3, 0x40800000    # 4.0f

    const/16 v5, 0x96

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const v3, 0x3f99999a    # 1.2f

    const/16 v5, 0x1f4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/high16 v6, 0x3fc00000    # 1.5f

    const/16 v7, 0x258

    const/16 v8, 0x190

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IIFII)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v5, 0x2

    const/high16 v6, 0x40000000    # 2.0f

    const/16 v8, 0x12c

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IIFII)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v5, 0x3

    const v6, 0x4013b13b

    const/16 v8, 0x104

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IIFII)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v5, 0x4

    const v6, 0x3fe3a0fd

    const/16 v7, 0x2b2

    const/16 v8, 0x184

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IIFII)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->k:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 65
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->o:I

    .line 66
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private a(II)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;
    .registers 11

    .line 315
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

    .line 317
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->k:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    aget-object v1, p2, v0

    .line 318
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 319
    array-length v3, p2

    move v4, v0

    :goto_1d
    if-ge v4, v3, :cond_32

    aget-object v5, p2, v4

    .line 320
    iget v6, v5, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:F

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_33

    .line 321
    cmpg-float v7, v6, v2

    if-gtz v7, :cond_2f

    .line 322
    nop

    .line 323
    move-object v1, v5

    move v2, v6

    .line 319
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 326
    :cond_32
    return-object v1

    .line 327
    :catchall_33
    move-exception p1

    .line 329
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->k:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    aget-object p1, p1, v0

    return-object p1
.end method

.method private a(Landroid/widget/ImageView;)V
    .registers 4

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 155
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)V
    .registers 15

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v2, "tt_backup_banner_layout3"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    .line 160
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v3, "tt_ad_content_layout"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 161
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v4, "tt_bu_close"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 162
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v5, "tt_bu_img"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 163
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v6, "tt_bu_icon"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 164
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v7, "tt_bu_title"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 165
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v8, "tt_bu_desc"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 166
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v9, "tt_bu_name"

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 167
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v10, "tt_bu_download"

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 169
    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView$1;

    invoke-direct {v9, p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const/high16 v10, 0x41700000    # 15.0f

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v9

    float-to-int v9, v9

    .line 177
    invoke-static {v1, v9, v9, v9, v9}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;IIII)V

    .line 179
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    const/4 v9, 0x0

    if-eqz v1, :cond_11f

    .line 181
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->getVideoView()Landroid/view/View;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_119

    .line 184
    iget v10, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->g:I

    mul-int/lit16 v10, v10, 0x10a

    div-int/lit16 v10, v10, 0x190

    .line 185
    iget v10, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->f:I

    mul-int/lit16 v10, v10, 0x196

    div-int/lit16 v10, v10, 0x258

    .line 186
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v12, v10, 0x9

    div-int/lit8 v12, v12, 0x10

    invoke-direct {v11, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 188
    iget v10, p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:I

    if-ne v10, v2, :cond_dd

    .line 189
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->f:I

    mul-int/lit16 p1, p1, 0x196

    div-int/lit16 p1, p1, 0x258

    .line 190
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v10, p1, 0x9

    div-int/lit8 v10, v10, 0x10

    invoke-direct {v11, p1, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_112

    .line 191
    :cond_dd
    iget v10, p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_e9

    .line 192
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p1, -0x1

    invoke-direct {v11, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_112

    .line 193
    :cond_e9
    iget v10, p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:I

    const/4 v12, 0x3

    if-ne v10, v12, :cond_fe

    .line 194
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->g:I

    mul-int/lit16 p1, p1, 0xbc

    div-int/lit16 p1, p1, 0x104

    .line 195
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v10, p1, 0x10

    div-int/lit8 v10, v10, 0x9

    invoke-direct {v11, v10, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_112

    .line 196
    :cond_fe
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:I

    const/4 v10, 0x4

    if-ne p1, v10, :cond_112

    .line 197
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->f:I

    mul-int/lit16 p1, p1, 0x1e0

    div-int/lit16 p1, p1, 0x2b2

    .line 198
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v10, p1, 0x9

    div-int/lit8 v10, v10, 0x10

    invoke-direct {v11, p1, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 200
    :cond_112
    :goto_112
    const/16 p1, 0x11

    iput p1, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 201
    invoke-virtual {v0, v1, v9, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 203
    :cond_119
    const/16 p1, 0x8

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 204
    goto :goto_125

    .line 205
    :cond_11f
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a(Landroid/widget/ImageView;)V

    .line 206
    invoke-static {v3, v9}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 208
    :goto_125
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 209
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->getNameOrSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->getNameOrSource()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    const-string v3, "%s\u63d0\u4f9b\u7684\u5e7f\u544a"

    invoke-static {p1, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_170

    .line 213
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_170
    invoke-virtual {p0, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a(Landroid/view/View;Z)V

    .line 217
    invoke-virtual {p0, v8, v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a(Landroid/view/View;Z)V

    .line 218
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a(Landroid/view/View;)V

    .line 219
    return-void
.end method

.method private b()V
    .registers 5

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 106
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v1

    .line 105
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a(II)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v1

    if-lez v1, :cond_72

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 109
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v1

    if-lez v1, :cond_72

    .line 110
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v2

    if-le v1, v2, :cond_50

    .line 111
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->f:I

    .line 112
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->g:I

    goto :goto_8a

    .line 114
    :cond_50
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->f:I

    .line 115
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->g:I

    goto :goto_8a

    .line 118
    :cond_72
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->f:I

    .line 119
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->f:I

    int-to-float v1, v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->g:I

    .line 123
    :goto_8a
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->f:I

    if-lez v1, :cond_b9

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->f:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_b9

    .line 124
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->f:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 125
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->f:I

    .line 126
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->g:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->g:I

    .line 130
    :cond_b9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 131
    if-nez v1, :cond_c8

    .line 132
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->f:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->g:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 134
    :cond_c8
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->f:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 135
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->g:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 136
    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_db

    .line 137
    move-object v2, v1

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 139
    :cond_db
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e7

    .line 142
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->d()V

    goto :goto_fc

    .line 143
    :cond_e7
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f0

    .line 144
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->c()V

    goto :goto_fc

    .line 145
    :cond_f0
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f9

    .line 146
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)V

    goto :goto_fc

    .line 148
    :cond_f9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->d()V

    .line 150
    :goto_fc
    return-void
.end method

.method private c()V
    .registers 12

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v2, "tt_backup_banner_layout2"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    .line 223
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v3, "tt_ad_content_layout"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 224
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v4, "tt_bu_close"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 225
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v5, "tt_bu_img"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 226
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v6, "tt_bu_icon"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 227
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v7, "tt_bu_title"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 228
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v8, "tt_bu_desc"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 229
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v9, "tt_bu_download"

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 231
    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView$2;

    invoke-direct {v8, p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const/high16 v9, 0x41700000    # 15.0f

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v8

    float-to-int v8, v8

    .line 239
    invoke-static {v1, v8, v8, v8, v8}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;IIII)V

    .line 241
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b8

    .line 244
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_b8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v1, :cond_ee

    .line 249
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->getVideoView()Landroid/view/View;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_e7

    .line 251
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 252
    iget v8, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->f:I

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const/high16 v10, 0x41600000    # 14.0f

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v9

    sub-int/2addr v8, v9

    .line 253
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v10, v8, 0x9

    div-int/lit8 v10, v10, 0x10

    invoke-direct {v9, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 254
    const/16 v8, 0x11

    iput v8, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 255
    invoke-virtual {v0, v1, v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 257
    :cond_e7
    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 258
    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 259
    goto :goto_f7

    .line 260
    :cond_ee
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a(Landroid/widget/ImageView;)V

    .line 261
    invoke-static {v3, v6}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 262
    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 265
    :goto_f7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 266
    invoke-virtual {p0, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a(Landroid/view/View;Z)V

    .line 267
    invoke-virtual {p0, v7, v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a(Landroid/view/View;Z)V

    .line 268
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a(Landroid/view/View;)V

    .line 269
    return-void
.end method

.method private d()V
    .registers 10

    .line 275
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v2, "tt_backup_banner_layout1"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    .line 277
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v3, "tt_bu_close"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v4, "tt_bu_icon"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 279
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v5, "tt_bu_title"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 280
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v6, "tt_bu_score"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 281
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v7, "tt_bu_score_bar"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    .line 282
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->l:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const-string v8, "tt_bu_download"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 284
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView$3;

    invoke-direct {v7, p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 292
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a8

    .line 295
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :cond_a8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->e()I

    move-result v0

    goto :goto_bc

    :cond_bb
    const/4 v0, 0x4

    .line 299
    :goto_bc
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-float v8, v0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v3, v7

    const-string v7, "%.1f"

    invoke-static {v1, v7, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {v5, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarEmptyNum(I)V

    .line 301
    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarFillNum(I)V

    .line 302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImageWidth(F)V

    .line 303
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImageHeight(F)V

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a:Landroid/content/Context;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImagePadding(F)V

    .line 305
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->a()V

    .line 307
    invoke-virtual {p0, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a(Landroid/view/View;Z)V

    .line 308
    invoke-virtual {p0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a(Landroid/view/View;Z)V

    .line 309
    return-void
.end method


# virtual methods
.method protected a(ILcom/bytedance/sdk/openadsdk/core/d/j;)V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_7

    .line 82
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(ILcom/bytedance/sdk/openadsdk/core/d/j;)V

    .line 84
    :cond_7
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V
    .registers 5

    .line 87
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->setBackgroundColor(I)V

    .line 88
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 89
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 90
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 91
    const-string p1, "banner_ad"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->e:Ljava/lang/String;

    .line 92
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->m:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->h:I

    .line 95
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->h:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->a(I)V

    .line 96
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView;->b()V

    .line 97
    return-void
.end method
