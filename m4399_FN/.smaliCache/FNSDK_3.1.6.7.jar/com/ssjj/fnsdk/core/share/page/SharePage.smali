.class public Lcom/ssjj/fnsdk/core/share/page/SharePage;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_RANDOM:I = 0x1

.field public static final TYPE_SELECT:I

.field private static a:Lcom/ssjj/fnsdk/core/share/page/SharePage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePage;->a:Lcom/ssjj/fnsdk/core/share/page/SharePage;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/View;II)Landroid/app/Dialog;
    .registers 9

    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/16 p2, 0x400

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 v2, -0x1

    if-lez p3, :cond_31

    if-gtz p4, :cond_1f

    goto :goto_31

    :cond_1f
    invoke-static {}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->getScreenWidth()I

    move-result v3

    if-gt p3, v3, :cond_31

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->getScreenHeight()I

    move-result v3

    if-le p4, v3, :cond_2c

    goto :goto_31

    :cond_2c
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_35

    :cond_31
    :goto_31
    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_35
    const/16 p3, 0x11

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p3, 0x0

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    return-object v0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/page/SharePage;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/page/SharePage;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 6

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/SharePage;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    if-nez p2, :cond_b

    return-object v1

    :cond_b
    :try_start_b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_2a
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_41
    return-object p1
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    new-instance v1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;-><init>()V

    iget-object v2, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;

    iput-object v2, v1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;

    iget v2, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->size:I

    iput v2, v1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->size:I

    iget v2, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->color:I

    iput v2, v1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->color:I

    iget-object v2, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->font:Ljava/lang/String;

    iput-object v2, v1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->font:Ljava/lang/String;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->style:Ljava/lang/String;

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->style:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/page/SharePage;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/SharePage;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/share/page/SharePage;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePage;->a:Lcom/ssjj/fnsdk/core/share/page/SharePage;

    if-nez v0, :cond_b

    new-instance v0, Lcom/ssjj/fnsdk/core/share/page/SharePage;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePage;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePage;->a:Lcom/ssjj/fnsdk/core/share/page/SharePage;

    :cond_b
    sget-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePage;->a:Lcom/ssjj/fnsdk/core/share/page/SharePage;

    return-object v0
.end method


# virtual methods
.method public mergeTextToImage(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ssjj/fnsdk/core/SsjjFNParams;",
            "Lcom/ssjj/fnsdk/core/SsjjFNListener;",
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    move-object v1, p1

    move-object v5, p2

    move-object/from16 v3, p3

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->init(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->init(Landroid/content/Context;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v2}, Lcom/ssjj/fnsdk/core/share/page/SharePage;->a(Ljava/util/List;Ljava/util/List;)V

    const-string v0, "shareBgPath"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    if-nez v0, :cond_32

    const-string v0, "shareBgPath \u5b57\u6bb5\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz v3, :cond_31

    new-instance v1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-interface {v3, v4, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_31
    return-void

    :cond_32
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_48

    const-string v0, "shareBgPath \u4e0d\u662f\u6709\u6548\u7684\u56fe\u7247\u6587\u4ef6\u8def\u5f84"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz v3, :cond_47

    new-instance v1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-interface {v3, v4, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_47
    return-void

    :cond_48
    const-string v0, "shareImagePath"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_60

    const-string v0, "shareImagePath \u5b57\u6bb5\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz v3, :cond_5f

    new-instance v1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-interface {v3, v4, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_5f
    return-void

    :cond_60
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_76

    const-string v0, "shareImagePath \u4e0d\u662f\u6709\u6548\u7684\u56fe\u7247\u6587\u4ef6\u8def\u5f84"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz v3, :cond_75

    new-instance v1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-interface {v3, v4, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_75
    return-void

    :cond_76
    :try_start_76
    const-string v0, "maxTextCount"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_80} :catch_82

    move v9, v0

    goto :goto_85

    :catch_82
    move-exception v0

    const/4 v0, 0x5

    const/4 v9, 0x5

    :goto_85
    const/4 v10, 0x0

    :try_start_86
    const-string v0, "type"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_90} :catch_b3

    if-eqz v11, :cond_b5

    if-eq v11, v4, :cond_b5

    :try_start_94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "\u975e\u6cd5\u5206\u4eab\u6587\u6848\u7c7b\u578btype\uff1a"

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz v3, :cond_b0

    new-instance v12, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v12}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-interface {v3, v4, v0, v12}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_b0} :catch_b1

    :cond_b0
    return-void

    :catch_b1
    move-exception v0

    goto :goto_b5

    :catch_b3
    move-exception v0

    const/4 v11, 0x0

    :cond_b5
    :goto_b5
    new-instance v12, Lcom/ssjj/fnsdk/core/share/page/SharePageView;

    invoke-direct {v12, p1, v2, v11}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v12, v9}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->setCustomTextCount(I)V

    invoke-virtual {v12, v8}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->setShareImage(Landroid/graphics/Bitmap;)V

    if-eqz v6, :cond_c5

    invoke-virtual {v12, v6}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->setBackground(Landroid/graphics/Bitmap;)V

    :cond_c5
    :try_start_c5
    const-string v0, "dialogW"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "dialogH"

    invoke-virtual {p2, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_ef

    if-nez v2, :cond_101

    :cond_ef
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_f7} :catch_f8

    goto :goto_101

    :catch_f8
    move-exception v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_101
    :goto_101
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "dlgW:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", dlgH:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v12, v0, v2}, Lcom/ssjj/fnsdk/core/share/page/SharePage;->a(Landroid/content/Context;Landroid/view/View;II)Landroid/app/Dialog;

    move-result-object v0

    new-instance v8, Lcom/ssjj/fnsdk/core/share/page/k;

    move-object v1, v8

    move-object v2, p0

    move-object/from16 v3, p3

    move-object v4, v12

    move-object v5, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/ssjj/fnsdk/core/share/page/k;-><init>(Lcom/ssjj/fnsdk/core/share/page/SharePage;Lcom/ssjj/fnsdk/core/SsjjFNListener;Lcom/ssjj/fnsdk/core/share/page/SharePageView;Lcom/ssjj/fnsdk/core/SsjjFNParams;Landroid/app/Dialog;)V

    invoke-virtual {v12, v8}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->setSharePageListener(Lcom/ssjj/fnsdk/core/share/page/SharePageView$SharePageListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
