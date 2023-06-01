.class public Lcom/ssjj/fnsdk/core/share/page/DragView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;
    }
.end annotation


# instance fields
.field a:F

.field b:F

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/share/page/StickerView;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ssjj/fnsdk/core/share/page/StickerView;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->a:F

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->f:Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/page/DragView;->a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->a:F

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->f:Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;

    new-instance v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;-><init>()V

    iput-object p2, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;

    const/16 p2, 0x14

    iput p2, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->size:I

    const/high16 p2, -0x1000000

    iput p2, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->color:I

    const-string p2, ""

    iput-object p2, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->font:Ljava/lang/String;

    const-string p2, "normal"

    iput-object p2, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->style:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;)V

    return-void
.end method

.method private a(Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;)Landroid/graphics/Bitmap;
    .registers 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->a(Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;Landroid/graphics/Rect;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v5, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v5, v2

    float-to-int v2, v5

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-virtual {v4, p1, v3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method private a(Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;Landroid/graphics/Rect;)Landroid/graphics/Paint;
    .registers 8

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget v1, p1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->size:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v2, 0x0

    :try_start_1a
    iget-object v3, p1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->font:Ljava/lang/String;

    if-eqz v3, :cond_34

    iget-object v3, p1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->font:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_34

    iget-object v3, p1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->font:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    :goto_30
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_4f

    :cond_34
    iget-object v3, p1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->font:Ljava/lang/String;

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->isUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->font:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->getFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4a} :catch_4b

    goto :goto_30

    :catch_4b
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4f
    :goto_4f
    iget-object v3, p1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->style:Ljava/lang/String;

    if-eqz v3, :cond_93

    iget-object v3, p1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->style:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_93

    iget-object v3, p1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->style:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bold"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_70
    const-string v4, "italic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7d

    const/high16 v4, -0x41000000    # -0.5f

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :cond_7d
    const-string v4, "underline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    :cond_88
    const-string v4, "strikethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    :cond_93
    iget-object v1, p1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-object v0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/page/DragView;)Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->f:Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;)V
    .registers 3

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->e:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->c:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/ssjj/fnsdk/core/share/page/DragView;->addText(Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;)V

    return-void
.end method


# virtual methods
.method public addImage(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/ssjj/fnsdk/core/share/page/StickerView;

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addText(Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->addText(Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;FF)V

    return-void
.end method

.method public addText(Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;FF)V
    .registers 9

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v2, p2, v0

    if-eqz v2, :cond_15

    cmpl-float v0, p3, v0

    if-nez v0, :cond_3f

    :cond_15
    :goto_15
    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt v1, p2, :cond_1e

    goto :goto_2c

    :cond_1e
    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->c:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ssjj/fnsdk/core/share/page/StickerView;

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->hasMoved()Z

    move-result p2

    if-eqz p2, :cond_6c

    :goto_2c
    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result p3

    mul-int p3, p3, v1

    int-to-float p3, p3

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result p2

    mul-int p2, p2, v1

    int-to-float p2, p2

    move v4, p3

    move p3, p2

    move p2, v4

    :cond_3f
    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->a(Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lcom/ssjj/fnsdk/core/share/page/StickerView;

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p2, p3}, Lcom/ssjj/fnsdk/core/share/page/StickerView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;FF)V

    new-instance p2, Lcom/ssjj/fnsdk/core/share/page/a;

    invoke-direct {p2, p0, p1, v2}, Lcom/ssjj/fnsdk/core/share/page/a;-><init>(Lcom/ssjj/fnsdk/core/share/page/DragView;Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;Lcom/ssjj/fnsdk/core/share/page/StickerView;)V

    invoke-virtual {v2, p2}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->setStickerViewListener(Lcom/ssjj/fnsdk/core/share/page/StickerView$StickerViewListener;)V

    iget p2, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->d:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_5c

    invoke-virtual {v2, p3}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->enableChange(Z)V

    :cond_5c
    invoke-virtual {p0, v2}, Lcom/ssjj/fnsdk/core/share/page/DragView;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->e:Ljava/util/Map;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->c:Ljava/util/List;

    invoke-interface {p1, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method

.method public addText(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;-><init>()V

    iput-object p1, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;

    const/16 p1, 0x14

    iput p1, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->size:I

    const/high16 p1, -0x1000000

    iput p1, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->color:I

    const-string p1, ""

    iput-object p1, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->font:Ljava/lang/String;

    const-string p1, "normal"

    iput-object p1, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->style:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->addText(Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;)V

    return-void
.end method

.method public clearSelect()V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/page/StickerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->setIsSelected(Z)V

    goto :goto_a
.end method

.method public getShareTexts()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_16

    return-object v0

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method public hideText(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_30

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ssjj/fnsdk/core/share/page/StickerView;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->hide()V

    goto :goto_c

    :cond_25
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/core/share/page/StickerView;

    invoke-virtual {p0, p1, v0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->hideText(Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/page/StickerView;)V

    :goto_30
    return-void
.end method

.method public hideText(Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/page/StickerView;)V
    .registers 4

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->hide()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    :goto_e
    const/4 v0, -0x1

    if-eq p2, v0, :cond_28

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1a

    goto :goto_28

    :cond_1a
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/core/share/page/StickerView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    :cond_28
    :goto_28
    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->e:Ljava/util/Map;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->c:Ljava/util/List;

    return-void
.end method

.method public removeText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/core/share/page/StickerView;

    invoke-virtual {p0, p1, v0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->removeText(Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/page/StickerView;)V

    return-void
.end method

.method public removeText(Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/page/StickerView;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_10
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1c

    goto :goto_2a

    :cond_1c
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/page/StickerView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :try_start_2f
    new-instance p1, Lcom/ssjj/fnsdk/core/share/page/b;

    invoke-direct {p1, p0, p2}, Lcom/ssjj/fnsdk/core/share/page/b;-><init>(Lcom/ssjj/fnsdk/core/share/page/DragView;Lcom/ssjj/fnsdk/core/share/page/StickerView;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3e
    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .registers 3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDragViewListener(Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->f:Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;

    return-void
.end method

.method public setType(I)V
    .registers 5

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->d:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_18

    return-void

    :cond_18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/page/StickerView;

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->enableChange(Z)V

    goto :goto_11
.end method

.method public showText(Ljava/lang/String;)Z
    .registers 4

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_3a

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ssjj/fnsdk/core/share/page/StickerView;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->show()V

    goto :goto_c

    :cond_25
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/DragView;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ssjj/fnsdk/core/share/page/StickerView;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->show()V

    const/4 p1, 0x1

    return p1

    :cond_3a
    :goto_3a
    const/4 p1, 0x0

    return p1
.end method
