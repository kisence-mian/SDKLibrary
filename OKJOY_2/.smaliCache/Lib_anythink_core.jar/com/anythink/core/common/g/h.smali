.class public final Lcom/anythink/core/common/g/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "CommonUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .registers 2

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 73
    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 104
    if-eqz p0, :cond_28

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 109
    :cond_28
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Landroid/view/View;)Landroid/view/View$OnSystemUiVisibilityChangeListener;
    .registers 2

    .line 162
    new-instance v0, Lcom/anythink/core/common/g/h$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/g/h$1;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 117
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 118
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 119
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 120
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_23

    .line 121
    goto :goto_e

    .line 126
    :cond_22
    goto :goto_24

    .line 122
    :catch_23
    move-exception p0

    .line 127
    :goto_24
    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 2

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 152
    if-eqz p0, :cond_19

    .line 153
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 154
    nop

    .line 1174
    const/16 v0, 0x1306

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 155
    nop

    .line 2162
    new-instance v0, Lcom/anythink/core/common/g/h$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/g/h$1;-><init>(Landroid/view/View;)V

    .line 155
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 157
    :cond_19
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    .line 52
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "connectivity"

    .line 53
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 54
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 55
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_18

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    return v0

    .line 56
    :catch_18
    move-exception p0

    .line 61
    return v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 6

    .line 78
    nop

    .line 81
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_45

    .line 83
    const-string v1, "Permission "

    const-string v2, "CommonUtils"

    if-nez p1, :cond_2d

    .line 84
    const/4 p1, 0x1

    .line 85
    :try_start_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is granted"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p1

    goto :goto_44

    .line 87
    :cond_2d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is NOT granted"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_43} :catch_45

    .line 91
    nop

    .line 92
    :goto_44
    return v0

    .line 89
    :catch_45
    move-exception p0

    .line 90
    return v0
.end method

.method public static a(Lorg/json/JSONArray;)[Ljava/lang/String;
    .registers 5

    .line 132
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 133
    return-object v0

    .line 136
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 137
    const/4 v2, 0x0

    :goto_b
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1a

    .line 138
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_1b

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 140
    :cond_1a
    return-object v1

    .line 141
    :catch_1b
    move-exception p0

    .line 146
    return-object v0
.end method

.method private static b(Landroid/view/View;)V
    .registers 2

    .line 174
    const/16 v0, 0x1306

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 181
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/String;",
            ">(TT;)Z"
        }
    .end annotation

    .line 38
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/String;",
            ">(TT;)Z"
        }
    .end annotation

    .line 42
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
