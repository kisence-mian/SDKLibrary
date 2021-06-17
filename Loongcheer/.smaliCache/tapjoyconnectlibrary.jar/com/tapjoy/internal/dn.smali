.class public final Lcom/tapjoy/internal/dn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/dn$a;
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

    sput-object v0, Lcom/tapjoy/internal/dn;->b:Landroid/view/WindowManager;

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

    sput-object v0, Lcom/tapjoy/internal/dn;->c:[Ljava/lang/String;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/tapjoy/internal/dn;->a:F

    return-void
.end method

.method public static a(IIII)Lorg/json/JSONObject;
    .registers 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "x"

    .line 1000
    int-to-float p0, p0

    sget v2, Lcom/tapjoy/internal/dn;->a:F

    div-float/2addr p0, v2

    float-to-double v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p0, "y"

    .line 2000
    int-to-float p1, p1

    sget v1, Lcom/tapjoy/internal/dn;->a:F

    div-float/2addr p1, v1

    float-to-double v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p0, "width"

    .line 3000
    int-to-float p1, p2

    sget p2, Lcom/tapjoy/internal/dn;->a:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p0, "height"

    .line 4000
    int-to-float p1, p3

    sget p2, Lcom/tapjoy/internal/dn;->a:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2d} :catch_2e

    goto :goto_34

    :catch_2e
    move-exception p0

    const-string p1, "Error with creating viewStateObject"

    invoke-static {p1, p0}, Lcom/tapjoy/internal/do;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_34
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/tapjoy/internal/dn;->a:F

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    sput-object p0, Lcom/tapjoy/internal/dn;->b:Landroid/view/WindowManager;

    :cond_18
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .registers 18

    .line 10000
    move-object/from16 v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "height"

    const-string v3, "width"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x11

    if-lt v1, v6, :cond_2d

    sget-object v1, Lcom/tapjoy/internal/dn;->b:Landroid/view/WindowManager;

    if-eqz v1, :cond_68

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    sget-object v4, Lcom/tapjoy/internal/dn;->b:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 11000
    int-to-float v4, v4

    sget v5, Lcom/tapjoy/internal/dn;->a:F

    div-float/2addr v4, v5

    .line 10000
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 12000
    int-to-float v1, v1

    sget v5, Lcom/tapjoy/internal/dn;->a:F

    div-float/2addr v1, v5

    .line 10000
    goto :goto_69

    :cond_2d
    const-string v1, "childViews"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_68

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_3b
    if-ge v7, v6, :cond_66

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_63

    const-string v9, "x"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-string v11, "y"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v15

    add-double/2addr v9, v13

    double-to-float v8, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-double/2addr v11, v15

    double-to-float v8, v11

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :cond_63
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b

    :cond_66
    move v1, v5

    goto :goto_69

    :cond_68
    const/4 v1, 0x0

    :goto_69
    new-instance v5, Lcom/tapjoy/internal/dn$a;

    invoke-direct {v5, v4, v1}, Lcom/tapjoy/internal/dn$a;-><init>(FF)V

    :try_start_6e
    iget v1, v5, Lcom/tapjoy/internal/dn$a;->a:F

    float-to-double v6, v1

    invoke-virtual {v0, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget v1, v5, Lcom/tapjoy/internal/dn$a;->b:F

    float-to-double v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_7a} :catch_7b

    return-void

    :catch_7b
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/tapjoy/internal/dx$a;)V
    .registers 5

    .line 5000
    iget-object v0, p1, Lcom/tapjoy/internal/dx$a;->a:Lcom/tapjoy/internal/de;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 6000
    iget-object p1, p1, Lcom/tapjoy/internal/dx$a;->b:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d

    :cond_1d
    :try_start_1d
    const-string p1, "isFriendlyObstructionFor"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "friendlyObstructionClass"

    .line 7000
    iget-object v1, v0, Lcom/tapjoy/internal/de;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "friendlyObstructionPurpose"

    .line 8000
    iget-object v1, v0, Lcom/tapjoy/internal/de;->c:Lcom/tapjoy/internal/cs;

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "friendlyObstructionReason"

    .line 9000
    iget-object v0, v0, Lcom/tapjoy/internal/de;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception p0

    const-string p1, "Error with setting friendly obstruction"

    invoke-static {p1, p0}, Lcom/tapjoy/internal/do;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    const-string v0, "adSessionId"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    const-string p1, "Error with setting ad session id"

    invoke-static {p1, p0}, Lcom/tapjoy/internal/do;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "JSONException during JSONObject.put for name ["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/tapjoy/internal/do;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "childViews"

    :try_start_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_10

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_17

    if-nez p1, :cond_c

    goto :goto_17

    :cond_c
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ne p0, p1, :cond_17

    return v0

    :cond_17
    :goto_17
    return v1
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    const-string v0, "notVisibleReason"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    const-string p1, "Error with setting not visible reason"

    invoke-static {p1, p0}, Lcom/tapjoy/internal/do;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 12

    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_a1

    if-nez p1, :cond_d

    goto/16 :goto_a1

    .line 13000
    :cond_d
    sget-object v2, Lcom/tapjoy/internal/dn;->c:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v3, :cond_26

    aget-object v5, v2, v4

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    cmpl-double v5, v6, v8

    if-eqz v5, :cond_23

    const/4 v2, 0x0

    goto :goto_27

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_26
    const/4 v2, 0x1

    :goto_27
    if-eqz v2, :cond_a0

    .line 14000
    const-string v2, "adSessionId"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 15000
    const-string v2, "isFriendlyObstructionFor"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v4, :cond_49

    if-eqz v2, :cond_6a

    :cond_49
    invoke-static {v4, v2}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v5

    if-nez v5, :cond_51

    :goto_4f
    const/4 v2, 0x0

    goto :goto_6b

    :cond_51
    const/4 v5, 0x0

    :goto_52
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_6a

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_67

    goto :goto_4f

    :cond_67
    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    :cond_6a
    const/4 v2, 0x1

    :goto_6b
    if-eqz v2, :cond_a0

    .line 16000
    const-string v2, "childViews"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p0, :cond_7b

    if-eqz p1, :cond_9c

    :cond_7b
    invoke-static {p0, p1}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v2

    if-nez v2, :cond_83

    :goto_81
    const/4 p0, 0x0

    goto :goto_9d

    :cond_83
    const/4 v2, 0x0

    :goto_84
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_9c

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/internal/dn;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_99

    goto :goto_81

    :cond_99
    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    :cond_9c
    const/4 p0, 0x1

    :goto_9d
    if-eqz p0, :cond_a0

    return v0

    :cond_a0
    return v1

    .line 0
    :cond_a1
    :goto_a1
    return v1
.end method
