.class public Lcom/mintegral/msdk/nativex/view/mtgfullview/a;
.super Ljava/lang/Object;
.source "FullViewManager.java"


# static fields
.field private static volatile b:Lcom/mintegral/msdk/nativex/view/mtgfullview/a;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a:Ljava/lang/ref/WeakReference;

    .line 60
    return-void
.end method

.method private a(Z)F
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 160
    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 162
    if-eqz v0, :cond_21

    .line 163
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->j(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 164
    if-eqz p1, :cond_1f

    .line 165
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->l(Landroid/content/Context;)I
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_15} :catch_19

    move-result v0

    .line 166
    int-to-float v0, v0

    add-float/2addr v0, v1

    .line 172
    :goto_18
    return v0

    .line 171
    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v2

    .line 172
    goto :goto_18

    :cond_1f
    move v0, v1

    goto :goto_18

    :cond_21
    move v0, v2

    goto :goto_18
.end method

.method static synthetic a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/high16 v7, 0x41c80000    # 25.0f

    const/4 v6, 0x0

    .line 45
    .line 1280
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1281
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1280
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1282
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1283
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1286
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1287
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1288
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1289
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1290
    const v5, -0xbdbdbe

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1291
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1293
    invoke-virtual {v1, v4, v7, v7, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1294
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1295
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 45
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/mintegral/msdk/nativex/view/mtgfullview/a;
    .registers 3

    .prologue
    .line 67
    sget-object v0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->b:Lcom/mintegral/msdk/nativex/view/mtgfullview/a;

    if-nez v0, :cond_13

    .line 68
    const-class v1, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;

    monitor-enter v1

    .line 69
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->b:Lcom/mintegral/msdk/nativex/view/mtgfullview/a;

    if-nez v0, :cond_12

    .line 70
    new-instance v0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->b:Lcom/mintegral/msdk/nativex/view/mtgfullview/a;

    .line 72
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 74
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->b:Lcom/mintegral/msdk/nativex/view/mtgfullview/a;

    return-object v0

    .line 72
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 45
    .line 2242
    if-nez p0, :cond_3

    .line 2243
    :goto_2
    return-void

    .line 2245
    :cond_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2246
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2247
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2248
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 2249
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 2250
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method

.method public static a(Landroid/view/View;Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 304
    if-eqz p0, :cond_12

    if-eqz p1, :cond_12

    .line 305
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 306
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    iget-object v0, p1, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 309
    :cond_12
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;)V
    .registers 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getmAnimationPlayer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 235
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;Z)V
    .registers 4

    .prologue
    .line 319
    if-eqz p0, :cond_e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 320
    if-eqz p1, :cond_f

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->setSystemUiVisibility(I)V

    .line 322
    :cond_e
    return-void

    .line 320
    :cond_f
    const/16 v0, 0x1002

    goto :goto_b
.end method

.method public static a(ZLcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;)V
    .registers 4

    .prologue
    .line 118
    instance-of v0, p1, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;

    if-eqz v0, :cond_25

    .line 119
    check-cast p1, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;

    .line 120
    if-eqz p0, :cond_26

    const/4 v0, 0x0

    .line 121
    :goto_9
    invoke-virtual {p1}, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->getMintegralFullViewDisplayIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    invoke-virtual {p1}, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->getMintegralFullViewDisplayTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    invoke-virtual {p1}, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->getMintegralFullViewDisplayDscription()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    invoke-virtual {p1}, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->getStarLevelLayoutView()Lcom/mintegral/msdk/nativex/view/mtgfullview/StarLevelLayoutView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/StarLevelLayoutView;->setVisibility(I)V

    .line 126
    :cond_25
    return-void

    .line 120
    :cond_26
    const/16 v0, 0x8

    goto :goto_9
.end method


# virtual methods
.method public final a(ILcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;)V
    .registers 8

    .prologue
    .line 82
    sget-object v0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a$3;->a:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_62

    .line 111
    :cond_9
    :goto_9
    return-void

    .line 84
    :pswitch_a
    check-cast p3, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;

    .line 85
    if-eqz p3, :cond_9

    .line 86
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 87
    if-eqz v0, :cond_28

    .line 88
    invoke-static {v0}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mintegral/msdk/nativex/view/mtgfullview/a$1;

    invoke-direct {v2, p0, p3}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a$1;-><init>(Lcom/mintegral/msdk/nativex/view/mtgfullview/a;Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;)V

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V

    .line 98
    :cond_28
    invoke-virtual {p3}, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->getMintegralFullViewDisplayTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p3}, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->getMintegralFullViewDisplayDscription()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p3}, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->getMintegralFullTvInstall()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p3}, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->getStarLevelLayoutView()Lcom/mintegral/msdk/nativex/view/mtgfullview/StarLevelLayoutView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRating()D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/mtgfullview/StarLevelLayoutView;->setRating(I)V

    goto :goto_9

    .line 105
    :pswitch_56
    invoke-virtual {p3}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getMintegralFullTvInstall()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 82
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_a
        :pswitch_56
    .end packed-switch
.end method

.method public final a(ZLcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;I)V
    .registers 10

    .prologue
    const/16 v5, 0xc

    const/high16 v3, 0x42340000    # 45.0f

    const/high16 v4, 0x41000000    # 8.0f

    .line 133
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 134
    if-eqz v0, :cond_51

    .line 136
    if-eqz p1, :cond_59

    .line 137
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(Z)F

    move-result v1

    .line 138
    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-int v2, v1

    .line 139
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 140
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 141
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 143
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->m(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_52

    if-nez p3, :cond_52

    const/4 v2, 0x1

    .line 144
    :goto_3c
    if-eqz v2, :cond_54

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->l(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v4}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v0

    add-int/2addr v0, v2

    :goto_47
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move-object v0, v1

    .line 149
    :goto_4a
    invoke-virtual {p2}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getmAnimationContent()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    :cond_51
    return-void

    .line 143
    :cond_52
    const/4 v2, 0x0

    goto :goto_3c

    .line 144
    :cond_54
    invoke-static {v0, v4}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v0

    goto :goto_47

    .line 146
    :cond_59
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v0, v1

    goto :goto_4a
.end method

.method public final a(ZZLcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;)V
    .registers 9

    .prologue
    .line 182
    const-string v0, "#ff264870"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 183
    invoke-virtual {p3}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getmAnimationPlayer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 184
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 185
    if-nez p1, :cond_3e

    .line 186
    iget v1, p3, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->style$161ffeb8:I

    sget v2, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView$a;->b:I

    if-eq v1, v2, :cond_6b

    .line 189
    if-eqz v0, :cond_3d

    .line 190
    invoke-virtual {p3}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getmAnimationContent()Landroid/widget/FrameLayout;

    move-result-object v1

    const-string v2, "mintegral_nativex_cta_por_pre"

    const-string v3, "drawable"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 191
    invoke-virtual {p3}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getmAnimationPlayer()Landroid/widget/LinearLayout;

    move-result-object v1

    const-string v2, "mintegral_nativex_cta_por_pre"

    const-string v3, "drawable"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 209
    :cond_3d
    :goto_3d
    return-void

    .line 195
    :cond_3e
    iget v2, p3, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->style$161ffeb8:I

    sget v3, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView$a;->a:I

    if-ne v2, v3, :cond_5c

    .line 196
    if-eqz v0, :cond_5c

    .line 197
    invoke-virtual {p3}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getmAnimationContent()Landroid/widget/FrameLayout;

    move-result-object v2

    const-string v3, "mintegral_nativex_fullview_background"

    const-string v4, "drawable"

    invoke-static {v0, v3, v4}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 198
    invoke-virtual {p3}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getmAnimationPlayer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 201
    :cond_5c
    if-eqz p2, :cond_7d

    .line 202
    invoke-virtual {p3}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getmAnimationPlayer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1217
    :cond_6b
    :goto_6b
    if-eqz p2, :cond_3d

    .line 1218
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mintegral/msdk/nativex/view/mtgfullview/a$2;

    invoke-direct {v1, p0, p3, p1}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a$2;-><init>(Lcom/mintegral/msdk/nativex/view/mtgfullview/a;Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;Z)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3d

    .line 204
    :cond_7d
    invoke-virtual {p3}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getmAnimationPlayer()Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "#ff4c8fdf"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 205
    invoke-virtual {p3}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getmAnimationPlayer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_6b
.end method
