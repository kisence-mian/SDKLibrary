.class public final Lcom/bytedance/tea/crash/c/b;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "version_code"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "manifest_version_code"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "aid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "update_version_code"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/tea/crash/c/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    .line 90
    iput-object p1, p0, Lcom/bytedance/tea/crash/c/b;->b:Landroid/content/Context;

    .line 91
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/tea/crash/c/b;
    .registers 3

    .prologue
    .line 99
    new-instance v0, Lcom/bytedance/tea/crash/c/b;

    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/c/b;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v0}, Lcom/bytedance/tea/crash/c/b;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 101
    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/c/b;->a(Lorg/json/JSONObject;)V

    .line 102
    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/c/b;->c(Lorg/json/JSONObject;)V

    .line 103
    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/c/b;->d(Lorg/json/JSONObject;)V

    .line 104
    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/c/b;->e(Lorg/json/JSONObject;)V

    .line 105
    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/c/b;->f(Lorg/json/JSONObject;)V

    .line 106
    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/c/b;->g(Lorg/json/JSONObject;)V

    .line 107
    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/c/b;->b(Lorg/json/JSONObject;)V

    .line 108
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/bytedance/tea/crash/c/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 122
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_26

    .line 123
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 124
    if-lez v0, :cond_26

    .line 125
    const-string v1, "display_name"

    iget-object v2, p0, Lcom/bytedance/tea/crash/c/b;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    :cond_26
    const-string v0, "sdk_version"

    const/16 v1, 0x5672

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    const-string v0, "sdk_version_name"

    const-string v1, "2.2.1-alpha.30"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v0, "os"

    const-string v1, "Android"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v0, "os_version"

    invoke-direct {p0}, Lcom/bytedance/tea/crash/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v0, "os_api"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 133
    const-string v0, "device_model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v0, "device_brand"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v0, "device_manufacturer"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v0, "cpu_abi"

    invoke-direct {p0}, Lcom/bytedance/tea/crash/c/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6a

    .line 145
    :goto_69
    return-void

    .line 142
    :catch_6a
    move-exception v0

    goto :goto_69
.end method

.method private b()Ljava/lang/String;
    .registers 4

    .prologue
    .line 154
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2c

    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2c

    .line 156
    const/4 v1, 0x0

    :goto_11
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_33

    .line 157
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_29

    .line 159
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 163
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 166
    const-string v0, "unknown"

    .line 171
    :goto_3f
    return-object v0

    .line 168
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_45

    move-result-object v0

    goto :goto_3f

    .line 169
    :catch_45
    move-exception v0

    .line 170
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 171
    const-string v0, "unknown"

    goto :goto_3f
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    .line 180
    invoke-static {}, Lcom/bytedance/tea/crash/h;->a()Lcom/bytedance/tea/crash/e/a;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_3b

    if-eqz p1, :cond_3b

    .line 182
    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/a;->b()Ljava/util/Map;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_3b

    .line 185
    :try_start_e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 186
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 190
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 191
    if-eqz v4, :cond_1b

    .line 192
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_36} :catch_37

    goto :goto_1b

    .line 196
    :catch_37
    move-exception v0

    .line 197
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 201
    :cond_3b
    :goto_3b
    return-void

    .line 195
    :cond_3c
    :try_start_3c
    const-string v0, "custom"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_37

    goto :goto_3b
.end method

.method private c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 209
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 210
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 213
    :goto_a
    return-object v0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 224
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 226
    sparse-switch v2, :sswitch_data_48

    .line 237
    const-string v0, "mdpi"

    .line 240
    :goto_11
    const-string v3, "density_dpi"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    const-string v2, "display_density"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v0, "resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    :goto_3b
    return-void

    .line 228
    :sswitch_3c
    const-string v0, "ldpi"

    goto :goto_11

    .line 231
    :sswitch_3f
    const-string v0, "hdpi"

    goto :goto_11

    .line 234
    :sswitch_42
    const-string v0, "xhdpi"
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_11

    .line 243
    :catch_45
    move-exception v0

    goto :goto_3b

    .line 226
    nop

    :sswitch_data_48
    .sparse-switch
        0x78 -> :sswitch_3c
        0xf0 -> :sswitch_3f
        0x140 -> :sswitch_42
    .end sparse-switch
.end method

.method private d(Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    const/16 v0, 0xc

    const/16 v1, -0xc

    .line 251
    :try_start_4
    iget-object v2, p0, Lcom/bytedance/tea/crash/c/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 253
    const-string v3, "language"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    :cond_1f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 258
    const-string v3, "region"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    :cond_32
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    const v3, 0x36ee80

    div-int/2addr v2, v3

    .line 263
    if-ge v2, v1, :cond_4c

    .line 266
    :goto_40
    if-le v1, v0, :cond_4a

    .line 269
    :goto_42
    const-string v1, "timezone"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_47} :catch_48

    .line 273
    :goto_47
    return-void

    .line 270
    :catch_48
    move-exception v0

    goto :goto_47

    :cond_4a
    move v0, v1

    goto :goto_42

    :cond_4c
    move v1, v2

    goto :goto_40
.end method

.method private e(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    :try_start_5
    invoke-static {}, Lcom/bytedance/tea/crash/g/c;->c()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 282
    const-string v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_10
    :goto_10
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_24

    .line 296
    const-string v1, "rom"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    :cond_24
    const-string v0, "rom_version"

    invoke-static {}, Lcom/bytedance/tea/crash/g/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    :goto_2d
    return-void

    .line 283
    :cond_2e
    invoke-static {}, Lcom/bytedance/tea/crash/g/c;->d()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 284
    const-string v1, "FLYME-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 299
    :catch_3a
    move-exception v0

    goto :goto_2d

    .line 286
    :cond_3c
    invoke-static {}, Lcom/bytedance/tea/crash/g/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 288
    const-string v2, "EMUI-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_4b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5a} :catch_3a

    goto :goto_10
.end method

.method private f(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 305
    :try_start_0
    const-string v0, "access"

    iget-object v1, p0, Lcom/bytedance/tea/crash/c/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/tea/crash/g/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_c

    .line 309
    :goto_b
    return-void

    .line 306
    :catch_c
    move-exception v0

    .line 307
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_b
.end method

.method private g(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/b;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 319
    if-eqz v0, :cond_2a

    .line 320
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 322
    const-string v2, "carrier"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    :cond_1b
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 326
    const-string v1, "mcc_mnc"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 332
    :cond_2a
    :goto_2a
    return-void

    .line 329
    :catch_2b
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    const-string v1, "device_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_a

    .line 415
    :goto_7
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    return-object v0

    .line 412
    :catch_a
    move-exception v0

    .line 413
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7
.end method

.method public a(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 8
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 363
    if-nez p1, :cond_5

    .line 364
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    .line 400
    :goto_4
    return-object v0

    .line 367
    :cond_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 368
    iget-object v3, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 369
    iget-object v3, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_36} :catch_37

    goto :goto_d

    .line 398
    :catch_37
    move-exception v0

    .line 400
    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    goto :goto_4

    .line 373
    :cond_3b
    :try_start_3b
    sget-object v2, Lcom/bytedance/tea/crash/c/b;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_40
    if-ge v1, v3, :cond_68

    aget-object v4, v2, v1

    .line 374
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_47} :catch_37

    move-result v0

    if-eqz v0, :cond_59

    .line 376
    :try_start_4a
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 377
    iget-object v5, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    invoke-virtual {v5, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_59} :catch_5d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_59} :catch_37

    .line 373
    :cond_59
    :goto_59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_40

    .line 378
    :catch_5d
    move-exception v0

    .line 380
    :try_start_5e
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_59

    .line 385
    :cond_68
    const-string v0, "version_code"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    const-string v0, "manifest_version_code"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 386
    const-string v0, "version_code"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 387
    iget-object v1, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    const-string v2, "manifest_version_code"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 390
    :cond_8b
    const-string v0, "iid"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 391
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    const-string v1, "udid"

    const-string v2, "iid"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    const-string v1, "iid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_a7} :catch_37

    goto :goto_38
.end method

.method public b(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 426
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 427
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_d} :catch_10

    .line 432
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    return-object v0

    .line 429
    :catch_10
    move-exception v0

    .line 430
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d
.end method
