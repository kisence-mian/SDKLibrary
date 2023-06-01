.class public Lcom/ssjj/fnsdk/core/share/page/SharePageRes;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field public static backBm:Landroid/graphics/Bitmap;

.field public static controlBm:Landroid/graphics/Bitmap;

.field public static deleteBm:Landroid/graphics/Bitmap;

.field public static downBm:Landroid/graphics/Bitmap;

.field public static normalBtnBm:Landroid/graphics/Bitmap;

.field public static pressBtnBm:Landroid/graphics/Bitmap;

.field public static selectedBm:Landroid/graphics/Bitmap;

.field public static unselectedBm:Landroid/graphics/Bitmap;

.field public static upBm:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->a(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .registers 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, p2

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v1, p0, p1, p2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v3, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, p1

    float-to-int p1, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, p1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-int/2addr v0, p3

    int-to-float p3, v0

    invoke-virtual {v2, p0, p2, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object p1
.end method

.method public static init(Landroid/content/Context;)V
    .registers 6

    sget-boolean v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->a:Z

    if-nez v0, :cond_109

    const-string v0, "fnres/shareui_custom/fnsdk_share_btn_back.png"

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/update/util/AssetsLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->backBm:Landroid/graphics/Bitmap;

    const/16 v1, 0xe

    const/high16 v2, -0x1000000

    if-nez v0, :cond_24

    const-string v0, "fnres/shareui/fnsdk_share_btn_back.png"

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/update/util/AssetsLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->backBm:Landroid/graphics/Bitmap;

    if-nez v0, :cond_24

    const-string v0, "\u8fd4\u56de"

    invoke-static {v0, v2, v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->backBm:Landroid/graphics/Bitmap;

    :cond_24
    const-string v0, "fnres/shareui_custom/fnsdk_share_btn_down.png"

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/update/util/AssetsLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->downBm:Landroid/graphics/Bitmap;

    const/16 v3, 0xa

    if-nez v0, :cond_42

    const-string v0, "fnres/shareui/fnsdk_share_btn_down.png"

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/update/util/AssetsLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->downBm:Landroid/graphics/Bitmap;

    if-nez v0, :cond_42

    const-string v0, " \u2193 "

    invoke-static {v0, v2, v3}, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->downBm:Landroid/graphics/Bitmap;

    :cond_42
    const-string v0, "fnres/shareui_custom/fnsdk_share_btn_up.png"

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/update/util/AssetsLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->upBm:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5e

    const-string v0, "fnres/shareui/fnsdk_share_btn_up.png"

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/update/util/AssetsLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->upBm:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5e

    const-string v0, " \u2191 "

    invoke-static {v0, v2, v3}, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->upBm:Landroid/graphics/Bitmap;

    :cond_5e
    const-string v0, "fnres/shareui_custom/fnsdk_share_selected.png"

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/update/util/AssetsLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->selectedBm:Landroid/graphics/Bitmap;

    if-nez v0, :cond_80

    const-string v0, "fnres/shareui/fnsdk_share_selected.png"

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/update/util/AssetsLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->selectedBm:Landroid/graphics/Bitmap;

    if-nez v0, :cond_80

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v0

    const-string v4, "\u221a"

    invoke-static {v4, v2, v3, v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->a(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->selectedBm:Landroid/graphics/Bitmap;

    :cond_80
    const-string v0, "fnres/shareui_custom/fnsdk_share_not_selected.png"

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/update/util/AssetsLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->unselectedBm:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9c

    const-string v0, "fnres/shareui/fnsdk_share_not_selected.png"

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/update/util/AssetsLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->unselectedBm:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9c

    const-string v0, " "

    invoke-static {v0, v2, v3}, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->unselectedBm:Landroid/graphics/Bitmap;

    :cond_9c
    const-string v0, "fnres/shareui_custom/fnsdk_share_btn_confirm_press.png"

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/update/util/AssetsLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->pressBtnBm:Landroid/graphics/Bitmap;

    const-string v3, "\u786e\u5b9a"

    if-nez v0, :cond_be

    const-string v0, "fnres/shareui/fnsdk_share_btn_confirm_press.png"

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/update/util/AssetsLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->pressBtnBm:Landroid/graphics/Bitmap;

    if-nez v0, :cond_be

    const-string v0, "#FF7F24"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v0, v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->pressBtnBm:Landroid/graphics/Bitmap;

    :cond_be
    const-string v0, "fnres/shareui_custom/fnsdk_share_btn_confirm_normal.png"

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/update/util/AssetsLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->normalBtnBm:Landroid/graphics/Bitmap;

    if-nez v0, :cond_de

    const-string v0, "fnres/shareui/fnsdk_share_btn_confirm_normal.png"

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/update/util/AssetsLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->normalBtnBm:Landroid/graphics/Bitmap;

    if-nez v0, :cond_de

    const-string v0, "#8C8C8C"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v0, v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->normalBtnBm:Landroid/graphics/Bitmap;

    :cond_de
    const-string v0, "fnres/shareui/fnsdk_share_delete.png"

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/update/util/AssetsLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->deleteBm:Landroid/graphics/Bitmap;

    if-nez v0, :cond_f0

    const-string v0, "\u5220\u9664"

    invoke-static {v0, v2, v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->deleteBm:Landroid/graphics/Bitmap;

    :cond_f0
    const-string v0, "fnres/shareui/fnsdk_share_rotate.png"

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/update/util/AssetsLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->controlBm:Landroid/graphics/Bitmap;

    if-nez p0, :cond_106

    const/high16 p0, -0x10000

    const/16 v0, 0x10

    const-string v1, "\u66f4\u6362"

    invoke-static {v1, p0, v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->controlBm:Landroid/graphics/Bitmap;

    :cond_106
    const/4 p0, 0x1

    sput-boolean p0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->a:Z

    :cond_109
    return-void
.end method
