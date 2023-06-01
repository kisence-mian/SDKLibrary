.class public Lcom/ssjj/fnsdk/core/share/process/MergeUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/process/ActionData;Lcom/ssjj/fnsdk/core/SsjjFNParams;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/process/MergeUtil;->b(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/process/ActionData;Lcom/ssjj/fnsdk/core/SsjjFNParams;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/process/CfgItem;Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/Canvas;)V
    .registers 9

    const-string v0, "data:image/jpg;base64,"

    const-string v1, "data:image/png;base64,"

    const-string v2, "draw "

    if-eqz p3, :cond_f

    :try_start_8
    instance-of v3, p3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_f

    check-cast p3, Landroid/graphics/Bitmap;

    goto :goto_6a

    :cond_f
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_58

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1c

    goto :goto_58

    :cond_1c
    invoke-static {p2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->isUrl(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_53

    invoke-static {p0, p2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->getFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_36

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_6a

    :cond_36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->key:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, " cancel, \u672a\u4e0b\u8f7d\uff1a"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_69

    :cond_53
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_6a

    :cond_58
    :goto_58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/share/process/MergeUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_64} :catch_65

    goto :goto_6a

    :catch_65
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_69
    const/4 p3, 0x0

    :goto_6a
    if-eqz p3, :cond_8c

    invoke-static {p3, p1, p4}, Lcom/ssjj/fnsdk/core/share/process/MergeUtil;->a(Landroid/graphics/Bitmap;Lcom/ssjj/fnsdk/core/share/process/CfgItem;Landroid/graphics/Canvas;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_a8

    :cond_8c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " cancel, bm is null, val = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    :goto_a8
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/process/CfgItem;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Canvas;)V
    .registers 11

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v1, v1, Lcom/ssjj/fnsdk/core/share/process/CfgData;->size:I

    if-nez v1, :cond_13

    iget-object v1, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v2, v2, Lcom/ssjj/fnsdk/core/share/process/CfgData;->h:I

    iput v2, v1, Lcom/ssjj/fnsdk/core/share/process/CfgData;->size:I

    :cond_13
    iget-object v1, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v1, v1, Lcom/ssjj/fnsdk/core/share/process/CfgData;->size:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1f

    iget-object v1, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iput v2, v1, Lcom/ssjj/fnsdk/core/share/process/CfgData;->size:I

    :cond_1f
    iget-object v1, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v1, v1, Lcom/ssjj/fnsdk/core/share/process/CfgData;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v1, v1, Lcom/ssjj/fnsdk/core/share/process/CfgData;->size:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v2, 0x0

    if-eqz p3, :cond_5b

    :try_start_35
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5b

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_52

    invoke-static {p3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    :goto_4e
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_89

    :cond_52
    iget-object p0, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->font:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_4e

    :cond_5b
    iget-object p3, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object p3, p3, Lcom/ssjj/fnsdk/core/share/process/CfgData;->font:Ljava/lang/String;

    invoke-static {p3}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->isUrl(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_72

    iget-object p3, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object p3, p3, Lcom/ssjj/fnsdk/core/share/process/CfgData;->font:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->getFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_4e

    :cond_72
    iget-object p0, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->font:Ljava/lang/String;

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/share/process/MergeUtil;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_89

    iget-object p0, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->font:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_84} :catch_85

    goto :goto_4e

    :catch_85
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_89
    :goto_89
    iget-object p0, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->style:Ljava/lang/String;

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/share/process/MergeUtil;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c9

    iget-object p0, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->style:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p3, "bold"

    invoke-virtual {p0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_a6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_a6
    const-string p3, "italic"

    invoke-virtual {p0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_b3

    const/high16 p3, -0x41000000    # -0.5f

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :cond_b3
    const-string p3, "underline"

    invoke-virtual {p0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_be

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    :cond_be
    const-string p3, "strikethrough"

    invoke-virtual {p0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    :cond_c9
    iget-object p0, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->align:Ljava/lang/String;

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/share/process/MergeUtil;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d9

    sget-object p0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_d5
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_10a

    :cond_d9
    iget-object p0, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->align:Ljava/lang/String;

    const-string p3, "left"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_ea

    sget-object p0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_ea
    iget-object p0, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->align:Ljava/lang/String;

    const-string p3, "center"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_fb

    sget-object p0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_fb
    iget-object p0, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->align:Ljava/lang/String;

    const-string p3, "right"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10a

    sget-object p0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_d5

    :cond_10a
    :goto_10a
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v0, p2, v2, p3, p0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    iget-object p3, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget p3, p3, Lcom/ssjj/fnsdk/core/share/process/CfgData;->y:I

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v2, v2, Lcom/ssjj/fnsdk/core/share/process/CfgData;->y:I

    add-int/2addr p3, v2

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v2, v2, Lcom/ssjj/fnsdk/core/share/process/CfgData;->size:I

    add-int/2addr p3, v2

    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr p3, v2

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p3, p0

    div-int/lit8 p3, p3, 0x2

    iget-object p0, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget p0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->strokeWidth:F

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v2, v2, Lcom/ssjj/fnsdk/core/share/process/CfgData;->strokeColor:I

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    cmpg-float v5, p0, v4

    if-gez v5, :cond_14c

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object p0, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget p0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->strokeColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x0

    goto :goto_152

    :cond_14c
    cmpl-float v4, p0, v4

    if-nez v4, :cond_152

    const/high16 p0, -0x40800000    # -1.0f

    :cond_152
    :goto_152
    iget-object v4, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v4, v4, Lcom/ssjj/fnsdk/core/share/process/CfgData;->x:I

    int-to-float v4, v4

    int-to-float p3, p3

    invoke-virtual {p4, p2, v4, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    cmpl-float v3, p0, v3

    if-lez v3, :cond_197

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iget-object v4, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v4, v4, Lcom/ssjj/fnsdk/core/share/process/CfgData;->strokeColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v4, v4, Lcom/ssjj/fnsdk/core/share/process/CfgData;->size:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v1, v1, Lcom/ssjj/fnsdk/core/share/process/CfgData;->strokeWidth:F

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget p0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->x:I

    int-to-float p0, p0

    invoke-virtual {p4, p2, p0, p3, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_197
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "draw "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;Lcom/ssjj/fnsdk/core/share/process/CfgItem;Landroid/graphics/Canvas;)V
    .registers 15

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iput v1, v3, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v5, v5, Lcom/ssjj/fnsdk/core/share/process/CfgData;->x:I

    iget-object v6, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v6, v6, Lcom/ssjj/fnsdk/core/share/process/CfgData;->y:I

    iget-object v7, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v7, v7, Lcom/ssjj/fnsdk/core/share/process/CfgData;->w:I

    iget-object v8, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v8, v8, Lcom/ssjj/fnsdk/core/share/process/CfgData;->h:I

    if-nez v8, :cond_42

    int-to-float v8, v2

    int-to-float v9, v1

    div-float/2addr v8, v9

    int-to-float v9, v7

    mul-float v8, v8, v9

    float-to-int v8, v8

    :cond_42
    if-nez v7, :cond_4b

    int-to-float v7, v1

    int-to-float v9, v2

    div-float/2addr v7, v9

    int-to-float v9, v8

    mul-float v7, v7, v9

    float-to-int v7, v7

    :cond_4b
    iget-object v9, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object v9, v9, Lcom/ssjj/fnsdk/core/share/process/CfgData;->align:Ljava/lang/String;

    const-string v10, "center"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6a

    div-int/lit8 v9, v7, 0x2

    sub-int v11, v5, v9

    iput v11, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v9

    iput v5, v4, Landroid/graphics/Rect;->right:I

    div-int/lit8 v5, v8, 0x2

    sub-int v9, v6, v5

    iput v9, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v5

    :goto_67
    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_8a

    :cond_6a
    iget-object v9, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object v9, v9, Lcom/ssjj/fnsdk/core/share/process/CfgData;->align:Ljava/lang/String;

    const-string v11, "right"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_81

    sub-int v9, v5, v7

    iput v9, v4, Landroid/graphics/Rect;->left:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    sub-int v5, v6, v8

    iput v5, v4, Landroid/graphics/Rect;->top:I

    goto :goto_67

    :cond_81
    iput v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    goto :goto_67

    :goto_8a
    int-to-float v1, v1

    int-to-float v2, v2

    div-float v5, v1, v2

    int-to-float v6, v7

    int-to-float v7, v8

    div-float v8, v6, v7

    iget-object v9, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object v9, v9, Lcom/ssjj/fnsdk/core/share/process/CfgData;->fixType:Ljava/lang/String;

    const-string v11, "crop"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_cf

    cmpl-float v6, v5, v8

    if-lez v6, :cond_b7

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-float v2, v2, v8

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget v2, v3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    iput v2, v3, Landroid/graphics/Rect;->left:I

    iget v2, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, v3, Landroid/graphics/Rect;->right:I

    goto :goto_109

    :cond_b7
    cmpg-float v2, v5, v8

    if-gez v2, :cond_109

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-float/2addr v1, v8

    float-to-int v1, v1

    sub-int/2addr v2, v1

    iget v1, v3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->top:I

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_109

    :cond_cf
    iget-object v1, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/share/process/CfgData;->fixType:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_109

    cmpl-float v1, v5, v8

    if-lez v1, :cond_f1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-float/2addr v6, v5

    float-to-int v2, v6

    sub-int/2addr v1, v2

    iget v2, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    iput v2, v4, Landroid/graphics/Rect;->top:I

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_109

    :cond_f1
    cmpg-float v1, v5, v8

    if-gez v1, :cond_109

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-float v7, v7, v5

    float-to-int v2, v7

    sub-int/2addr v1, v2

    iget v2, v4, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    iput v2, v4, Landroid/graphics/Rect;->left:I

    iget v2, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, v4, Landroid/graphics/Rect;->right:I

    :cond_109
    :goto_109
    iget-object v1, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v1, v1, Lcom/ssjj/fnsdk/core/share/process/CfgData;->rotation:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_139

    iget-object v1, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v1, v1, Lcom/ssjj/fnsdk/core/share/process/CfgData;->rotation:F

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v1, v2, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p2, p0, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object p0, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget p0, p0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->rotation:F

    neg-float p0, p0

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, p0, p1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_13c

    :cond_139
    invoke-virtual {p2, p0, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_13c
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/process/ActionData;Lcom/ssjj/fnsdk/core/SsjjFNParams;)Landroid/graphics/Bitmap;
    .registers 13

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/share/process/ActionData;->list:Ljava/util/List;

    if-eqz v0, :cond_f2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_f2

    :cond_c
    iget v1, p1, Lcom/ssjj/fnsdk/core/share/process/ActionData;->bgw:I

    iget v2, p1, Lcom/ssjj/fnsdk/core/share/process/ActionData;->bgh:I

    const/4 v3, 0x0

    if-ltz v1, :cond_15

    if-gez v2, :cond_27

    :cond_15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_d0

    if-gez v1, :cond_24

    move v1, v5

    :cond_24
    if-gez v2, :cond_27

    move v2, v6

    :cond_27
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Lcom/ssjj/fnsdk/core/share/process/ActionData;->bgw:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Lcom/ssjj/fnsdk/core/share/process/ActionData;->bgh:I

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v8, v1, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_53
    :goto_53
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_60

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    return-object v7

    :cond_60
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    if-nez v0, :cond_6b

    goto :goto_53

    :cond_6b
    iget-object v0, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->key:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_80

    if-nez v1, :cond_80

    iget-boolean v2, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->forceShow:Z

    if-nez v2, :cond_80

    goto :goto_53

    :cond_80
    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8e

    :cond_8c
    iget-object v0, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->defval:Ljava/lang/String;

    :cond_8e
    const-string v2, "text"

    iget-object v3, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b5

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->key:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_font"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1, v8}, Lcom/ssjj/fnsdk/core/share/process/MergeUtil;->a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/process/CfgItem;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Canvas;)V

    goto :goto_53

    :cond_b5
    const-string v2, "image"

    iget-object v3, p1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_cc

    goto :goto_53

    :cond_cc
    invoke-static {p0, p1, v0, v1, v8}, Lcom/ssjj/fnsdk/core/share/process/MergeUtil;->a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/process/CfgItem;Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/Canvas;)V

    goto :goto_53

    :cond_d0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ssjj/fnsdk/core/share/process/CfgItem;

    iget-object v8, v7, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    if-nez v8, :cond_dc

    goto/16 :goto_1b

    :cond_dc
    iget-object v8, v7, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v8, v8, Lcom/ssjj/fnsdk/core/share/process/CfgData;->w:I

    if-le v8, v5, :cond_e6

    iget-object v5, v7, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v5, v5, Lcom/ssjj/fnsdk/core/share/process/CfgData;->w:I

    :cond_e6
    iget-object v8, v7, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v8, v8, Lcom/ssjj/fnsdk/core/share/process/CfgData;->h:I

    if-le v8, v6, :cond_1b

    iget-object v6, v7, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget v6, v6, Lcom/ssjj/fnsdk/core/share/process/CfgData;->h:I

    goto/16 :goto_1b

    :cond_f2
    :goto_f2
    const-string p0, "processImage fail!!! \u914d\u7f6e\u5217\u8868\u4e3a\u7a7a"

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static processImageAsync(Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/process/ActionData;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v8, Lcom/ssjj/fnsdk/core/share/process/a;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/ssjj/fnsdk/core/share/process/a;-><init>(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/process/ActionData;Lcom/ssjj/fnsdk/core/SsjjFNParams;Ljava/lang/String;JLcom/ssjj/fnsdk/core/SsjjFNListener;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v8, p0}, Lcom/ssjj/fnsdk/core/share/process/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
