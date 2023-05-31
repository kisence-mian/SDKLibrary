.class public Lcom/tds/common/utils/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dipValue"    # F

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 80
    .local v0, "scale":F
    mul-float v1, p1, v0

    float-to-int v1, v1

    return v1
.end method

.method public static dp2pxWithScale(FF)I
    .registers 3
    .param p0, "scale"    # F
    .param p1, "dipValue"    # F

    .line 84
    mul-float v0, p1, p0

    float-to-int v0, v0

    return v0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 133
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 134
    return-object v0

    .line 137
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 138
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_15

    return-object v0

    .line 139
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :catchall_15
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLocalizedResources(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/res/Resources;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    .local v0, "standardResources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 32
    .local v1, "assets":Landroid/content/res/AssetManager;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 33
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 34
    .local v3, "config":Landroid/content/res/Configuration;
    iput-object p1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 35
    new-instance v4, Landroid/content/res/Resources;

    invoke-direct {v4, v1, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v4
.end method

.method public static getLocalizedResourcesByDomestic(Landroid/content/Context;)Landroid/content/res/Resources;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 26
    invoke-static {}, Lcom/tds/common/localize/LocalizeManager;->getDefaultLocaleByDomestic()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tds/common/utils/UIUtils;->getLocalizedResources(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageIconDrawable(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "context"    # Landroid/app/Activity;

    .line 117
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 118
    return-object v0

    .line 120
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 121
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_1c

    .line 123
    :try_start_a
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 124
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_17} :catch_18

    return-object v0

    .line 125
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_18
    move-exception v2

    .line 126
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 129
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1c
    return-object v0
.end method

.method public static getPreferredLocalizedResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 21
    nop

    .line 22
    invoke-static {}, Lcom/tds/common/localize/LocalizeManager;->getPreferredLang()I

    move-result v0

    invoke-static {v0}, Lcom/tds/common/localize/LocalizeManager;->getLocale(I)Ljava/util/Locale;

    move-result-object v0

    .line 21
    invoke-static {p0, v0}, Lcom/tds/common/utils/UIUtils;->getLocalizedResources(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 72
    :try_start_0
    invoke-static {p0, p1}, Lcom/tds/common/utils/UIUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 73
    :catch_9
    move-exception v0

    .line 74
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, ""

    return-object v1
.end method

.method public static getStringId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 51
    invoke-static {p0}, Lcom/tds/common/utils/UIUtils;->getPreferredLocalizedResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 54
    .local v0, "resultID":I
    if-nez v0, :cond_1c

    .line 56
    invoke-static {p0}, Lcom/tds/common/utils/UIUtils;->getLocalizedResourcesByDomestic(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 59
    :cond_1c
    return v0
.end method

.method public static getStyleId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "style"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getViewId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getWindowHeight(Landroid/app/Activity;)I
    .registers 3
    .param p0, "context"    # Landroid/app/Activity;

    .line 111
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 112
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 113
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static getWindowLongLength(Landroid/app/Activity;)I
    .registers 4
    .param p0, "context"    # Landroid/app/Activity;

    .line 99
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 100
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 101
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static getWindowShortLength(Landroid/app/Activity;)I
    .registers 4
    .param p0, "context"    # Landroid/app/Activity;

    .line 93
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 94
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 95
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public static getWindowWidth(Landroid/app/Activity;)I
    .registers 3
    .param p0, "context"    # Landroid/app/Activity;

    .line 105
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 106
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 107
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spValue"    # F

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 89
    .local v0, "fontScale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
