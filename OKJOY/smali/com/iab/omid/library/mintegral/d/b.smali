.class public Lcom/iab/omid/library/mintegral/d/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/mintegral/d/b$a;
    }
.end annotation


# static fields
.field static a:F

.field private static b:Landroid/view/WindowManager;

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    sput-object v0, Lcom/iab/omid/library/mintegral/d/b;->b:Landroid/view/WindowManager;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "x"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "y"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "height"

    aput-object v2, v0, v1

    sput-object v0, Lcom/iab/omid/library/mintegral/d/b;->c:[Ljava/lang/String;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/iab/omid/library/mintegral/d/b;->a:F

    return-void
.end method

.method static a(I)F
    .registers 3

    int-to-float v0, p0

    sget v1, Lcom/iab/omid/library/mintegral/d/b;->a:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static a(IIII)Lorg/json/JSONObject;
    .registers 8

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "x"

    invoke-static {p0}, Lcom/iab/omid/library/mintegral/d/b;->a(I)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "y"

    invoke-static {p1}, Lcom/iab/omid/library/mintegral/d/b;->a(I)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "width"

    invoke-static {p2}, Lcom/iab/omid/library/mintegral/d/b;->a(I)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "height"

    invoke-static {p3}, Lcom/iab/omid/library/mintegral/d/b;->a(I)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2d} :catch_2e

    :goto_2d
    return-object v1

    :catch_2e
    move-exception v0

    const-string v2, "Error with creating viewStateObject"

    invoke-static {v2, v0}, Lcom/iab/omid/library/mintegral/d/c;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2d
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/iab/omid/library/mintegral/d/b;->a:F

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/iab/omid/library/mintegral/d/b;->b:Landroid/view/WindowManager;

    :cond_18
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .registers 5

    invoke-static {p0}, Lcom/iab/omid/library/mintegral/d/b;->b(Lorg/json/JSONObject;)Lcom/iab/omid/library/mintegral/d/b$a;

    move-result-object v0

    :try_start_4
    const-string v1, "width"

    iget v2, v0, Lcom/iab/omid/library/mintegral/d/b$a;->a:F

    float-to-double v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "height"

    iget v0, v0, Lcom/iab/omid/library/mintegral/d/b$a;->b:F

    float-to-double v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_14
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    const-string v0, "adSessionId"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "Error with setting ad session id"

    invoke-static {v1, v0}, Lcom/iab/omid/library/mintegral/d/c;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException during JSONObject.put for name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/iab/omid/library/mintegral/d/c;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method public static a(Lorg/json/JSONObject;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_19
    :try_start_19
    const-string v0, "isFriendlyObstructionFor"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_1e} :catch_1f

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    const-string v1, "Error with setting friendly obstruction"

    invoke-static {v1, v0}, Lcom/iab/omid/library/mintegral/d/c;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1e
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 4

    :try_start_0
    const-string v0, "childViews"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "childViews"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_15
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_7

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    if-eqz p0, :cond_b

    if-nez p1, :cond_d

    :cond_b
    move v0, v1

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/iab/omid/library/mintegral/d/b$a;
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2c

    sget-object v2, Lcom/iab/omid/library/mintegral/d/b;->b:Landroid/view/WindowManager;

    if-eqz v2, :cond_6a

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    sget-object v1, Lcom/iab/omid/library/mintegral/d/b;->b:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Lcom/iab/omid/library/mintegral/d/b;->a(I)F

    move-result v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/b;->a(I)F

    move-result v0

    :cond_26
    :goto_26
    new-instance v2, Lcom/iab/omid/library/mintegral/d/b$a;

    invoke-direct {v2, v1, v0}, Lcom/iab/omid/library/mintegral/d/b$a;-><init>(FF)V

    return-object v2

    :cond_2c
    const-string v2, "childViews"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_6a

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v2, v1

    move v1, v0

    :goto_3a
    if-ge v2, v4, :cond_26

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_67

    const-string v6, "x"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v8, "y"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v10, "width"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-string v12, "height"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    add-double/2addr v6, v10

    double-to-float v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-double v6, v8, v12

    double-to-float v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_6a
    move v1, v0

    goto :goto_26
.end method

.method public static b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 5
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_7

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    if-eqz p0, :cond_b

    if-nez p1, :cond_d

    :cond_b
    move v0, v1

    goto :goto_6

    :cond_d
    invoke-static {p0, p1}, Lcom/iab/omid/library/mintegral/d/b;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {p0, p1}, Lcom/iab/omid/library/mintegral/d/b;->d(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {p0, p1}, Lcom/iab/omid/library/mintegral/d/b;->e(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {p0, p1}, Lcom/iab/omid/library/mintegral/d/b;->f(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_25
    move v0, v1

    goto :goto_6
.end method

.method private static c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 10

    const/4 v0, 0x0

    sget-object v2, Lcom/iab/omid/library/mintegral/d/b;->c:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_19

    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double v4, v6, v4

    if-eqz v4, :cond_16

    :goto_15
    return v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    const/4 v0, 0x1

    goto :goto_15
.end method

.method private static d(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 5

    const-string v0, "adSessionId"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adSessionId"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static e(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "isFriendlyObstructionFor"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v0, "isFriendlyObstructionFor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v3, :cond_14

    if-nez v4, :cond_14

    move v1, v2

    :cond_13
    :goto_13
    return v1

    :cond_14
    invoke-static {v3, v4}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_1b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_36

    const-string v5, ""

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_36
    move v1, v2

    goto :goto_13
.end method

.method private static f(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "childViews"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v0, "childViews"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v3, :cond_14

    if-nez v4, :cond_14

    move v1, v2

    :cond_13
    :goto_13
    return v1

    :cond_14
    invoke-static {v3, v4}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_1b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_32

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iab/omid/library/mintegral/d/b;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_13

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_32
    move v1, v2

    goto :goto_13
.end method
