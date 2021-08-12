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
    .registers 4

    .line 81
    const-string v0, "version_code"

    const-string v1, "manifest_version_code"

    const-string v2, "aid"

    const-string v3, "update_version_code"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/tea/crash/c/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

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
    .registers 2

    .line 99
    new-instance v0, Lcom/bytedance/tea/crash/c/b;

    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/c/b;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v0}, Lcom/bytedance/tea/crash/c/b;->a()Lorg/json/JSONObject;

    move-result-object p0

    .line 101
    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/c/b;->a(Lorg/json/JSONObject;)V

    .line 102
    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/c/b;->c(Lorg/json/JSONObject;)V

    .line 103
    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/c/b;->d(Lorg/json/JSONObject;)V

    .line 104
    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/c/b;->e(Lorg/json/JSONObject;)V

    .line 105
    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/c/b;->f(Lorg/json/JSONObject;)V

    .line 106
    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/c/b;->g(Lorg/json/JSONObject;)V

    .line 107
    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/c/b;->b(Lorg/json/JSONObject;)V

    .line 108
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 5

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

    .line 144
    goto :goto_6b

    .line 142
    :catch_6a
    move-exception p1

    .line 145
    :goto_6b
    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 5

    .line 154
    const-string v0, "unknown"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2e

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2e

    .line 156
    const/4 v2, 0x0

    :goto_13
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_35

    .line 157
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2b

    .line 159
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 163
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    :cond_35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 166
    return-object v0

    .line 168
    :cond_40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_44} :catch_45

    return-object v0

    .line 169
    :catch_45
    move-exception v1

    .line 170
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 171
    return-object v0
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 7

    .line 180
    invoke-static {}, Lcom/bytedance/tea/crash/h;->a()Lcom/bytedance/tea/crash/e/a;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_42

    if-eqz p1, :cond_42

    .line 182
    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/a;->b()Ljava/util/Map;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_42

    .line 185
    :try_start_e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 186
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 187
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 188
    goto :goto_1b

    .line 190
    :cond_2e
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 191
    if-eqz v4, :cond_37

    .line 192
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    :cond_37
    goto :goto_1b

    .line 195
    :cond_38
    const-string v0, "custom"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3d} :catch_3e

    .line 198
    goto :goto_42

    .line 196
    :catch_3e
    move-exception p1

    .line 197
    invoke-static {p1}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 201
    :cond_42
    :goto_42
    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 3

    .line 209
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 210
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 211
    return-object v0

    .line 213
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

    return-object v0
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 6

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 224
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 226
    sparse-switch v1, :sswitch_data_48

    .line 237
    const-string v2, "mdpi"

    goto :goto_1a

    .line 234
    :sswitch_12
    const-string v2, "xhdpi"

    .line 235
    goto :goto_1a

    .line 231
    :sswitch_15
    const-string v2, "hdpi"

    .line 232
    goto :goto_1a

    .line 228
    :sswitch_18
    const-string v2, "ldpi"

    .line 240
    :goto_1a
    const-string v3, "density_dpi"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    const-string v1, "display_density"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v1, "resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    .line 245
    goto :goto_46

    .line 243
    :catch_45
    move-exception p1

    .line 246
    :goto_46
    return-void

    nop

    :sswitch_data_48
    .sparse-switch
        0x78 -> :sswitch_18
        0xf0 -> :sswitch_15
        0x140 -> :sswitch_12
    .end sparse-switch
.end method

.method private d(Lorg/json/JSONObject;)V
    .registers 4

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 253
    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    :cond_1b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 258
    const-string v1, "region"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    :cond_2e
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    .line 263
    const/16 v1, -0xc

    if-ge v0, v1, :cond_3f

    .line 264
    move v0, v1

    .line 266
    :cond_3f
    const/16 v1, 0xc

    if-le v0, v1, :cond_44

    .line 267
    move v0, v1

    .line 269
    :cond_44
    const-string v1, "timezone"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    .line 272
    goto :goto_4b

    .line 270
    :catch_4a
    move-exception p1

    .line 273
    :goto_4b
    return-void
.end method

.method private e(Lorg/json/JSONObject;)V
    .registers 5

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    :try_start_5
    invoke-static {}, Lcom/bytedance/tea/crash/g/c;->c()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 282
    const-string v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 283
    :cond_11
    invoke-static {}, Lcom/bytedance/tea/crash/g/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 284
    const-string v1, "FLYME-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 286
    :cond_1d
    invoke-static {}, Lcom/bytedance/tea/crash/g/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 288
    const-string v2, "EMUI-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_2c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_3b
    :goto_3b
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4f

    .line 296
    const-string v1, "rom"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    :cond_4f
    const-string v0, "rom_version"

    invoke-static {}, Lcom/bytedance/tea/crash/g/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_59

    .line 300
    goto :goto_5a

    .line 299
    :catchall_59
    move-exception p1

    .line 301
    :goto_5a
    return-void
.end method

.method private f(Lorg/json/JSONObject;)V
    .registers 4

    .line 305
    :try_start_0
    const-string v0, "access"

    iget-object v1, p0, Lcom/bytedance/tea/crash/c/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/tea/crash/g/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_c

    .line 308
    goto :goto_10

    .line 306
    :catch_c
    move-exception p1

    .line 307
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 309
    :goto_10
    return-void
.end method

.method private g(Lorg/json/JSONObject;)V
    .registers 5

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

    .line 331
    :cond_2a
    goto :goto_2f

    .line 329
    :catch_2b
    move-exception p1

    .line 330
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    :goto_2f
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    const-string v1, "device_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_8

    .line 414
    goto :goto_c

    .line 412
    :catch_8
    move-exception p1

    .line 413
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 415
    :goto_c
    iget-object p1, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    return-object p1
.end method

.method public a(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 363
    const-string v0, "manifest_version_code"

    const-string v1, "version_code"

    const-string v2, "iid"

    if-nez p1, :cond_b

    .line 364
    :try_start_8
    iget-object p1, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    return-object p1

    .line 367
    :cond_b
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 368
    iget-object v5, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 369
    iget-object v5, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    :cond_3c
    goto :goto_13

    .line 373
    :cond_3d
    sget-object v3, Lcom/bytedance/tea/crash/c/b;->a:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_41
    if-ge v5, v4, :cond_68

    aget-object v6, v3, v5

    .line 374
    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_9a

    if-eqz v7, :cond_65

    .line 376
    :try_start_4b
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 377
    iget-object v8, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    invoke-virtual {v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5a} :catch_5b
    .catchall {:try_start_4b .. :try_end_5a} :catchall_9a

    .line 381
    goto :goto_65

    .line 378
    :catch_5b
    move-exception v7

    .line 380
    :try_start_5c
    iget-object v7, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    :cond_65
    :goto_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 385
    :cond_68
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    .line 386
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 387
    iget-object v3, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 390
    :cond_83
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 391
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    const-string v1, "udid"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    iget-object p1, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_99
    .catchall {:try_start_5c .. :try_end_99} :catchall_9a

    .line 399
    :cond_99
    goto :goto_9b

    .line 398
    :catchall_9a
    move-exception p1

    .line 400
    :goto_9b
    iget-object p1, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

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
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_d} :catch_e

    .line 431
    :cond_d
    goto :goto_12

    .line 429
    :catch_e
    move-exception p1

    .line 430
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 432
    :goto_12
    iget-object p1, p0, Lcom/bytedance/tea/crash/c/b;->c:Lorg/json/JSONObject;

    return-object p1
.end method
