.class public Lcom/kwad/sdk/utils/ah;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:J


# direct methods
.method public static a(Landroid/content/Context;)I
    .registers 5

    sget v0, Lcom/kwad/sdk/utils/ah;->a:I

    if-lez v0, :cond_5

    return v0

    :cond_5
    if-nez p0, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_23

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/kwad/sdk/utils/ah;->a:I

    goto :goto_50

    :cond_23
    :try_start_23
    const-string v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/kwad/sdk/utils/ah;->a:I
    :try_end_4b
    .catchall {:try_start_23 .. :try_end_4b} :catchall_4c

    goto :goto_50

    :catchall_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_50
    sget v0, Lcom/kwad/sdk/utils/ah;->a:I

    if-gtz v0, :cond_5c

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {p0, v0}, Lcom/kwad/sdk/utils/ah;->a(Landroid/content/Context;F)I

    move-result p0

    sput p0, Lcom/kwad/sdk/utils/ah;->a:I

    :cond_5c
    sget p0, Lcom/kwad/sdk/utils/ah;->a:I

    return p0
.end method

.method public static a(Landroid/content/Context;F)I
    .registers 2

    if-nez p0, :cond_7

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    :goto_5
    float-to-int p0, p1

    return p0

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    goto :goto_5
.end method

.method public static a(Landroid/view/View;)Landroid/content/Context;
    .registers 3

    invoke-static {p0}, Lcom/kwad/sdk/utils/ah;->b(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/kwad/sdk/utils/ah;->b(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    :cond_18
    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_1e
    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Landroid/view/View;
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lcom/kwad/sdk/utils/ah;->a(Landroid/view/Window;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/ViewGroup;IZ)Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/ah;->f(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/Window;)Landroid/view/View;
    .registers 2

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/View;II)V
    .registers 8

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4b

    if-nez p2, :cond_8

    goto :goto_4b

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v1, :cond_4b

    if-nez v0, :cond_1e

    goto :goto_4b

    :cond_1e
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    if-le v1, v0, :cond_36

    if-le p1, p2, :cond_2a

    goto :goto_38

    :cond_2a
    int-to-float p1, p1

    int-to-float p2, p2

    mul-float/2addr p2, v3

    div-float/2addr p1, p2

    int-to-float p2, v0

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_48

    :cond_36
    if-le p2, p1, :cond_3d

    :goto_38
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_48

    :cond_3d
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p2, p2

    int-to-float p1, p1

    mul-float/2addr p1, v3

    div-float/2addr p2, p1

    int-to-float p1, v1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_48
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public static a()Z
    .registers 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/kwad/sdk/utils/ah;->b:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    sput-wide v0, Lcom/kwad/sdk/utils/ah;->b:J

    if-gez v2, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Landroid/graphics/Matrix;IILcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-eqz v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Matrix;->reset()V

    :cond_9
    const/4 v2, 0x0

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget v3, v1, Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;->width:I

    int-to-float v3, v3

    iget v4, v1, Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;->height:I

    int-to-float v4, v4

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_18

    return v2

    :cond_18
    iget-wide v5, v1, Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;->leftRatio:D

    double-to-float v5, v5

    iget-wide v6, v1, Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;->topRatio:D

    double-to-float v6, v6

    iget-wide v7, v1, Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;->widthRatio:D

    double-to-float v7, v7

    iget-wide v8, v1, Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;->heightRatio:D

    double-to-float v1, v8

    move/from16 v8, p1

    int-to-float v8, v8

    div-float v9, v8, v3

    move/from16 v10, p2

    int-to-float v10, v10

    div-float v11, v10, v4

    div-float v12, v9, v11

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v14, v12, v13

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v14, v14, v16

    if-gez v14, :cond_43

    return v2

    :cond_43
    cmpl-float v14, v9, v11

    const/high16 v15, 0x40000000    # 2.0f

    if-lez v14, :cond_59

    div-float/2addr v11, v9

    sub-float v5, v13, v11

    div-float/2addr v5, v15

    add-float/2addr v11, v13

    div-float/2addr v11, v15

    cmpg-float v5, v6, v5

    if-ltz v5, :cond_58

    add-float/2addr v6, v1

    cmpl-float v1, v6, v11

    if-lez v1, :cond_69

    :cond_58
    return v2

    :cond_59
    sub-float v1, v13, v12

    div-float/2addr v1, v15

    add-float/2addr v12, v13

    div-float/2addr v12, v15

    cmpg-float v1, v5, v1

    if-ltz v1, :cond_81

    add-float/2addr v5, v7

    cmpl-float v1, v5, v12

    if-lez v1, :cond_68

    goto :goto_81

    :cond_68
    move v9, v11

    :cond_69
    const/4 v1, 0x1

    if-nez v0, :cond_6d

    return v1

    :cond_6d
    sub-float v2, v8, v3

    div-float/2addr v2, v15

    sub-float v5, v10, v4

    div-float/2addr v5, v15

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    div-float/2addr v3, v8

    div-float/2addr v4, v10

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    div-float/2addr v8, v15

    div-float/2addr v10, v15

    invoke-virtual {v0, v9, v9, v8, v10}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return v1

    :cond_81
    :goto_81
    return v2
.end method

.method public static a(Landroid/view/View;I)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/utils/ah;->e(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    invoke-static {p0, p1, v2}, Lcom/kwad/sdk/utils/ah;->b(Landroid/view/View;IZ)Z

    move-result p0

    if-eqz p0, :cond_16

    move v0, v2

    :cond_16
    return v0
.end method

.method public static a(Landroid/view/View;IZ)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/utils/ah;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {p0, p1, p2}, Lcom/kwad/sdk/utils/ah;->b(Landroid/view/View;IZ)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public static b(Landroid/app/Activity;)I
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/utils/ah;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method private static b(Landroid/view/View;)Landroid/app/Activity;
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_9
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    instance-of v1, p0, Landroid/content/ContextWrapper;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_18

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_18
    instance-of v1, p0, Lcom/kwad/sdk/api/core/ResContext;

    if-eqz v1, :cond_23

    check-cast p0, Lcom/kwad/sdk/api/core/ResContext;

    invoke-interface {p0}, Lcom/kwad/sdk/api/core/ResContext;->getDelegatedContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_29

    :cond_23
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    :goto_29
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_2f
    return-object v2
.end method

.method public static b(Landroid/view/View;II)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_43

    if-nez p2, :cond_8

    goto :goto_43

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v1, :cond_43

    if-nez v0, :cond_1e

    goto :goto_43

    :cond_1e
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-le v1, v0, :cond_35

    if-le p1, p2, :cond_29

    goto :goto_35

    :cond_29
    int-to-float p1, p1

    int-to-float p2, p2

    mul-float/2addr p2, v3

    div-float/2addr p1, p2

    int-to-float p2, v0

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_40

    :cond_35
    :goto_35
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p2, p2

    int-to-float p1, p1

    mul-float/2addr p1, v3

    div-float/2addr p2, p1

    int-to-float p1, v1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_40
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_43
    :goto_43
    return-void
.end method

.method private static b(Landroid/view/View;IZ)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_18

    return v0

    :cond_18
    if-eqz p2, :cond_21

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result p2

    if-nez p2, :cond_21

    return v0

    :cond_21
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-long v3, p2

    mul-long/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-long v3, p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-long v5, p0

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-lez p0, :cond_52

    const-wide/16 v5, 0x64

    mul-long/2addr v1, v5

    int-to-long p0, p1

    mul-long/2addr p0, v3

    cmp-long p0, v1, p0

    if-ltz p0, :cond_52

    const/4 v0, 0x1

    :cond_52
    return v0
.end method

.method public static c(Landroid/app/Activity;)I
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/utils/ah;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static d(Landroid/content/Context;)Landroid/content/Context;
    .registers 6

    instance-of v0, p0, Lcom/kwad/sdk/api/core/ResContext;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lcom/kwad/sdk/api/core/ResContext;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v2, p0

    :goto_12
    instance-of v3, v2, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_3a

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_1b

    return-object v2

    :cond_1b
    instance-of v3, v2, Lcom/kwad/sdk/api/core/ResContext;

    if-eqz v3, :cond_29

    check-cast v2, Lcom/kwad/sdk/api/core/ResContext;

    invoke-interface {v2}, Lcom/kwad/sdk/api/core/ResContext;->getDelegatedContext()Landroid/content/Context;

    move-result-object v0

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_2f

    :cond_29
    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    :goto_2f
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_3a

    :cond_36
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_3a
    :goto_3a
    if-eqz v0, :cond_40

    invoke-interface {v0}, Lcom/kwad/sdk/api/core/ResContext;->getDelegatedContext()Landroid/content/Context;

    move-result-object p0

    :cond_40
    return-object p0
.end method

.method private static e(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isScreenOn"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-eqz v1, :cond_2a

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_2b

    if-eqz p0, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    return v0

    :catch_2b
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method private static f(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .registers 1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method
