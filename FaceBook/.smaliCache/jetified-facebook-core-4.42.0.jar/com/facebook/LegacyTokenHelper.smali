.class final Lcom/facebook/LegacyTokenHelper;
.super Ljava/lang/Object;
.source "LegacyTokenHelper.java"


# static fields
.field public static final APPLICATION_ID_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.ApplicationId"

.field public static final DECLINED_PERMISSIONS_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.DeclinedPermissions"

.field public static final DEFAULT_CACHE_KEY:Ljava/lang/String; = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"

.field public static final EXPIRATION_DATE_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.ExpirationDate"

.field private static final INVALID_BUNDLE_MILLISECONDS:J = -0x8000000000000000L

.field private static final IS_SSO_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.IsSSO"

.field private static final JSON_VALUE:Ljava/lang/String; = "value"

.field private static final JSON_VALUE_ENUM_TYPE:Ljava/lang/String; = "enumType"

.field private static final JSON_VALUE_TYPE:Ljava/lang/String; = "valueType"

.field public static final LAST_REFRESH_DATE_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.LastRefreshDate"

.field public static final PERMISSIONS_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.Permissions"

.field private static final TAG:Ljava/lang/String;

.field public static final TOKEN_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.Token"

.field public static final TOKEN_SOURCE_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.AccessTokenSource"

.field private static final TYPE_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TYPE_BOOLEAN_ARRAY:Ljava/lang/String; = "bool[]"

.field private static final TYPE_BYTE:Ljava/lang/String; = "byte"

.field private static final TYPE_BYTE_ARRAY:Ljava/lang/String; = "byte[]"

.field private static final TYPE_CHAR:Ljava/lang/String; = "char"

.field private static final TYPE_CHAR_ARRAY:Ljava/lang/String; = "char[]"

.field private static final TYPE_DOUBLE:Ljava/lang/String; = "double"

.field private static final TYPE_DOUBLE_ARRAY:Ljava/lang/String; = "double[]"

.field private static final TYPE_ENUM:Ljava/lang/String; = "enum"

.field private static final TYPE_FLOAT:Ljava/lang/String; = "float"

.field private static final TYPE_FLOAT_ARRAY:Ljava/lang/String; = "float[]"

.field private static final TYPE_INTEGER:Ljava/lang/String; = "int"

.field private static final TYPE_INTEGER_ARRAY:Ljava/lang/String; = "int[]"

.field private static final TYPE_LONG:Ljava/lang/String; = "long"

.field private static final TYPE_LONG_ARRAY:Ljava/lang/String; = "long[]"

.field private static final TYPE_SHORT:Ljava/lang/String; = "short"

.field private static final TYPE_SHORT_ARRAY:Ljava/lang/String; = "short[]"

.field private static final TYPE_STRING:Ljava/lang/String; = "string"

.field private static final TYPE_STRING_LIST:Ljava/lang/String; = "stringList"


# instance fields
.field private cache:Landroid/content/SharedPreferences;

.field private cacheKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 91
    const-class v0, Lcom/facebook/LegacyTokenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/LegacyTokenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/LegacyTokenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"

    goto :goto_12

    :cond_11
    move-object v0, p2

    :goto_12
    iput-object v0, p0, Lcom/facebook/LegacyTokenHelper;->cacheKey:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    .local v0, "applicationContext":Landroid/content/Context;
    if-eqz v0, :cond_1c

    move-object v1, v0

    goto :goto_1d

    :cond_1c
    move-object v1, p1

    :goto_1d
    move-object p1, v1

    .line 135
    iget-object v1, p0, Lcom/facebook/LegacyTokenHelper;->cacheKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    .line 138
    return-void
.end method

.method private deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    const-string v1, "{}"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "jsonString":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 444
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "valueType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "valueType":Ljava/lang/String;
    const-string v3, "bool"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "value"

    if-eqz v3, :cond_26

    .line 447
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_23e

    .line 448
    :cond_26
    const-string v3, "bool[]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 449
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 450
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Z

    .line 451
    .local v4, "array":[Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_39
    array-length v6, v4

    if-ge v5, v6, :cond_45

    .line 452
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v6

    aput-boolean v6, v4, v5

    .line 451
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 454
    .end local v5    # "i":I
    :cond_45
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 455
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "array":[Z
    goto/16 :goto_23e

    :cond_4a
    const-string v3, "byte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 456
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_23e

    .line 457
    :cond_5c
    const-string v3, "byte[]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 458
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 459
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [B

    .line 460
    .local v4, "array":[B
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6f
    array-length v6, v4

    if-ge v5, v6, :cond_7c

    .line 461
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 460
    add-int/lit8 v5, v5, 0x1

    goto :goto_6f

    .line 463
    .end local v5    # "i":I
    :cond_7c
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 464
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "array":[B
    goto/16 :goto_23e

    :cond_81
    const-string v3, "short"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 465
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_23e

    .line 466
    :cond_93
    const-string v3, "short[]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 467
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 468
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [S

    .line 469
    .local v4, "array":[S
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_a6
    array-length v6, v4

    if-ge v5, v6, :cond_b3

    .line 470
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    int-to-short v6, v6

    aput-short v6, v4, v5

    .line 469
    add-int/lit8 v5, v5, 0x1

    goto :goto_a6

    .line 472
    .end local v5    # "i":I
    :cond_b3
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 473
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "array":[S
    goto/16 :goto_23e

    :cond_b8
    const-string v3, "int"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 474
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_23e

    .line 475
    :cond_c9
    const-string v3, "int[]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 476
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 477
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [I

    .line 478
    .local v4, "array":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_dc
    array-length v6, v4

    if-ge v5, v6, :cond_e8

    .line 479
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v4, v5

    .line 478
    add-int/lit8 v5, v5, 0x1

    goto :goto_dc

    .line 481
    .end local v5    # "i":I
    :cond_e8
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 482
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "array":[I
    goto/16 :goto_23e

    :cond_ed
    const-string v3, "long"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 483
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p2, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_23e

    .line 484
    :cond_fe
    const-string v3, "long[]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_122

    .line 485
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 486
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [J

    .line 487
    .local v4, "array":[J
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_111
    array-length v6, v4

    if-ge v5, v6, :cond_11d

    .line 488
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 487
    add-int/lit8 v5, v5, 0x1

    goto :goto_111

    .line 490
    .end local v5    # "i":I
    :cond_11d
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 491
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "array":[J
    goto/16 :goto_23e

    :cond_122
    const-string v3, "float"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_134

    .line 492
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_23e

    .line 493
    :cond_134
    const-string v3, "float[]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_159

    .line 494
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 495
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [F

    .line 496
    .local v4, "array":[F
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_147
    array-length v6, v4

    if-ge v5, v6, :cond_154

    .line 497
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v4, v5

    .line 496
    add-int/lit8 v5, v5, 0x1

    goto :goto_147

    .line 499
    .end local v5    # "i":I
    :cond_154
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 500
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "array":[F
    goto/16 :goto_23e

    :cond_159
    const-string v3, "double"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16a

    .line 501
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {p2, p1, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_23e

    .line 502
    :cond_16a
    const-string v3, "double[]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18e

    .line 503
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 504
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [D

    .line 505
    .local v4, "array":[D
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_17d
    array-length v6, v4

    if-ge v5, v6, :cond_189

    .line 506
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 505
    add-int/lit8 v5, v5, 0x1

    goto :goto_17d

    .line 508
    .end local v5    # "i":I
    :cond_189
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 509
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "array":[D
    goto/16 :goto_23e

    :cond_18e
    const-string v3, "char"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_1ad

    .line 510
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, "charString":Ljava/lang/String;
    if-eqz v3, :cond_1ab

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1ab

    .line 512
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 514
    .end local v3    # "charString":Ljava/lang/String;
    :cond_1ab
    goto/16 :goto_23e

    :cond_1ad
    const-string v3, "char[]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1dc

    .line 515
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 516
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [C

    .line 517
    .local v4, "array":[C
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1c0
    array-length v8, v4

    if-ge v7, v8, :cond_1d8

    .line 518
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 519
    .local v8, "charString":Ljava/lang/String;
    if-eqz v8, :cond_1d5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v6, :cond_1d5

    .line 520
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v4, v7

    .line 517
    .end local v8    # "charString":Ljava/lang/String;
    :cond_1d5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c0

    .line 523
    .end local v7    # "i":I
    :cond_1d8
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 524
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "array":[C
    goto :goto_23e

    :cond_1dc
    const-string v3, "string"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ec

    .line 525
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23e

    .line 526
    :cond_1ec
    const-string v3, "stringList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21b

    .line 527
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 528
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 529
    .local v4, "numStrings":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 530
    .local v5, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_202
    if-ge v6, v4, :cond_217

    .line 531
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 532
    .local v7, "jsonStringValue":Ljava/lang/Object;
    sget-object v8, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v7, v8, :cond_20e

    const/4 v8, 0x0

    goto :goto_211

    :cond_20e
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    :goto_211
    invoke-virtual {v5, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 530
    .end local v7    # "jsonStringValue":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_202

    .line 536
    .end local v6    # "i":I
    :cond_217
    invoke-virtual {p2, p1, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "numStrings":I
    .end local v5    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_23d

    .line 537
    :cond_21b
    const-string v3, "enum"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23d

    .line 539
    :try_start_223
    const-string v3, "enumType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, "enumType":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 543
    .local v5, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    .line 544
    .local v4, "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_238
    .catch Ljava/lang/ClassNotFoundException; {:try_start_223 .. :try_end_238} :catch_23b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_223 .. :try_end_238} :catch_239

    .end local v3    # "enumType":Ljava/lang/String;
    .end local v4    # "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v5    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    goto :goto_23c

    .line 546
    :catch_239
    move-exception v3

    goto :goto_23e

    .line 545
    :catch_23b
    move-exception v3

    .line 547
    :goto_23c
    goto :goto_23e

    .line 537
    :cond_23d
    :goto_23d
    nop

    .line 549
    :goto_23e
    return-void
.end method

.method public static getApplicationId(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 299
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    const-string v0, "com.facebook.TokenCachingStrategy.ApplicationId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
    .registers 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 309
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 310
    return-object v0

    .line 313
    :cond_4
    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 314
    .local v3, "n":J
    cmp-long v5, v3, v1

    if-nez v5, :cond_f

    .line 315
    return-object v0

    .line 318
    :cond_f
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static getExpirationDate(Landroid/os/Bundle;)Ljava/util/Date;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 219
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    const-string v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-static {p0, v0}, Lcom/facebook/LegacyTokenHelper;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getExpirationMilliseconds(Landroid/os/Bundle;)J
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 230
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    const-string v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastRefreshDate(Landroid/os/Bundle;)Ljava/util/Date;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 278
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    const-string v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    invoke-static {p0, v0}, Lcom/facebook/LegacyTokenHelper;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getLastRefreshMilliseconds(Landroid/os/Bundle;)J
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 289
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    const-string v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPermissions(Landroid/os/Bundle;)Ljava/util/Set;
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 240
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    const-string v0, "com.facebook.TokenCachingStrategy.Permissions"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 242
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_f

    .line 243
    const/4 v1, 0x0

    return-object v1

    .line 245
    :cond_f
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static getSource(Landroid/os/Bundle;)Lcom/facebook/AccessTokenSource;
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 263
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    const-string v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 265
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/AccessTokenSource;

    return-object v0

    .line 267
    :cond_14
    const-string v0, "com.facebook.TokenCachingStrategy.IsSSO"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 268
    .local v0, "isSSO":Z
    if-eqz v0, :cond_1f

    sget-object v1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    goto :goto_21

    :cond_1f
    sget-object v1, Lcom/facebook/AccessTokenSource;->WEB_VIEW:Lcom/facebook/AccessTokenSource;

    :goto_21
    return-object v1
.end method

.method public static getToken(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 208
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    const-string v0, "com.facebook.TokenCachingStrategy.Token"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasTokenInformation(Landroid/os/Bundle;)Z
    .registers 8
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 190
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 191
    return v0

    .line 194
    :cond_4
    const-string v1, "com.facebook.TokenCachingStrategy.Token"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_13

    goto :goto_22

    .line 199
    :cond_13
    const-string v2, "com.facebook.TokenCachingStrategy.ExpirationDate"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 200
    .local v5, "expiresMilliseconds":J
    cmp-long v2, v5, v3

    if-nez v2, :cond_20

    .line 201
    return v0

    .line 204
    :cond_20
    const/4 v0, 0x1

    return v0

    .line 196
    .end local v5    # "expiresMilliseconds":J
    :cond_22
    :goto_22
    return v0
.end method

.method public static putApplicationId(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # Ljava/lang/String;

    .line 304
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    const-string v0, "com.facebook.TokenCachingStrategy.ApplicationId"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method static putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/util/Date;

    .line 322
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 323
    return-void
.end method

.method public static putDeclinedPermissions(Landroid/os/Bundle;Ljava/util/Collection;)V
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 256
    .local p1, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    const-string v0, "value"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "com.facebook.TokenCachingStrategy.DeclinedPermissions"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 260
    return-void
.end method

.method public static putExpirationDate(Landroid/os/Bundle;Ljava/util/Date;)V
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # Ljava/util/Date;

    .line 224
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    const-string v0, "value"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    const-string v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-static {p0, v0, p1}, Lcom/facebook/LegacyTokenHelper;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    .line 227
    return-void
.end method

.method public static putExpirationMilliseconds(Landroid/os/Bundle;J)V
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # J

    .line 235
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    const-string v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 237
    return-void
.end method

.method public static putLastRefreshDate(Landroid/os/Bundle;Ljava/util/Date;)V
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # Ljava/util/Date;

    .line 283
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    const-string v0, "value"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    const-string v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    invoke-static {p0, v0, p1}, Lcom/facebook/LegacyTokenHelper;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    .line 286
    return-void
.end method

.method public static putLastRefreshMilliseconds(Landroid/os/Bundle;J)V
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # J

    .line 294
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    const-string v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 296
    return-void
.end method

.method public static putPermissions(Landroid/os/Bundle;Ljava/util/Collection;)V
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 249
    .local p1, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    const-string v0, "value"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "com.facebook.TokenCachingStrategy.Permissions"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 253
    return-void
.end method

.method public static putSource(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)V
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # Lcom/facebook/AccessTokenSource;

    .line 273
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    const-string v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 275
    return-void
.end method

.method public static putToken(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # Ljava/lang/String;

    .line 213
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    const-string v0, "value"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    const-string v0, "com.facebook.TokenCachingStrategy.Token"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
    .registers 15
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "editor"    # Landroid/content/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 327
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 328
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 330
    return-void

    .line 333
    :cond_7
    const/4 v1, 0x0

    .line 334
    .local v1, "supportedType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 335
    .local v2, "jsonArray":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 337
    .local v3, "json":Lorg/json/JSONObject;
    instance-of v4, v0, Ljava/lang/Byte;

    const-string v5, "value"

    if-eqz v4, :cond_22

    .line 338
    const-string v1, "byte"

    .line 339
    move-object v4, v0

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->intValue()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1a8

    .line 340
    :cond_22
    instance-of v4, v0, Ljava/lang/Short;

    if-eqz v4, :cond_34

    .line 341
    const-string v1, "short"

    .line 342
    move-object v4, v0

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->intValue()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1a8

    .line 343
    :cond_34
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_46

    .line 344
    const-string v1, "int"

    .line 345
    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1a8

    .line 346
    :cond_46
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_58

    .line 347
    const-string v1, "long"

    .line 348
    move-object v4, v0

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto/16 :goto_1a8

    .line 349
    :cond_58
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_6a

    .line 350
    const-string v1, "float"

    .line 351
    move-object v4, v0

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto/16 :goto_1a8

    .line 352
    :cond_6a
    instance-of v4, v0, Ljava/lang/Double;

    if-eqz v4, :cond_7c

    .line 353
    const-string v1, "double"

    .line 354
    move-object v4, v0

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto/16 :goto_1a8

    .line 355
    :cond_7c
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_8e

    .line 356
    const-string v1, "bool"

    .line 357
    move-object v4, v0

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_1a8

    .line 358
    :cond_8e
    instance-of v4, v0, Ljava/lang/Character;

    if-eqz v4, :cond_9d

    .line 359
    const-string v1, "char"

    .line 360
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1a8

    .line 361
    :cond_9d
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_ab

    .line 362
    const-string v1, "string"

    .line 363
    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1a8

    .line 364
    :cond_ab
    instance-of v4, v0, Ljava/lang/Enum;

    if-eqz v4, :cond_c7

    .line 365
    const-string v1, "enum"

    .line 366
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "enumType"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1a8

    .line 371
    :cond_c7
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v4

    .line 372
    instance-of v4, v0, [B

    const/4 v6, 0x0

    if-eqz v4, :cond_e4

    .line 373
    const-string v1, "byte[]"

    .line 374
    move-object v4, v0

    check-cast v4, [B

    check-cast v4, [B

    array-length v7, v4

    :goto_da
    if-ge v6, v7, :cond_1a8

    aget-byte v8, v4, v6

    .line 375
    .local v8, "v":B
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 374
    .end local v8    # "v":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_da

    .line 377
    :cond_e4
    instance-of v4, v0, [S

    if-eqz v4, :cond_fa

    .line 378
    const-string v1, "short[]"

    .line 379
    move-object v4, v0

    check-cast v4, [S

    check-cast v4, [S

    array-length v7, v4

    :goto_f0
    if-ge v6, v7, :cond_1a8

    aget-short v8, v4, v6

    .line 380
    .local v8, "v":S
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 379
    .end local v8    # "v":S
    add-int/lit8 v6, v6, 0x1

    goto :goto_f0

    .line 382
    :cond_fa
    instance-of v4, v0, [I

    if-eqz v4, :cond_110

    .line 383
    const-string v1, "int[]"

    .line 384
    move-object v4, v0

    check-cast v4, [I

    check-cast v4, [I

    array-length v7, v4

    :goto_106
    if-ge v6, v7, :cond_1a8

    aget v8, v4, v6

    .line 385
    .local v8, "v":I
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 384
    .end local v8    # "v":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_106

    .line 387
    :cond_110
    instance-of v4, v0, [J

    if-eqz v4, :cond_126

    .line 388
    const-string v1, "long[]"

    .line 389
    move-object v4, v0

    check-cast v4, [J

    check-cast v4, [J

    array-length v7, v4

    :goto_11c
    if-ge v6, v7, :cond_1a8

    aget-wide v8, v4, v6

    .line 390
    .local v8, "v":J
    invoke-virtual {v2, v8, v9}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 389
    .end local v8    # "v":J
    add-int/lit8 v6, v6, 0x1

    goto :goto_11c

    .line 392
    :cond_126
    instance-of v4, v0, [F

    if-eqz v4, :cond_13d

    .line 393
    const-string v1, "float[]"

    .line 394
    move-object v4, v0

    check-cast v4, [F

    check-cast v4, [F

    array-length v7, v4

    :goto_132
    if-ge v6, v7, :cond_1a8

    aget v8, v4, v6

    .line 395
    .local v8, "v":F
    float-to-double v9, v8

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 394
    .end local v8    # "v":F
    add-int/lit8 v6, v6, 0x1

    goto :goto_132

    .line 397
    :cond_13d
    instance-of v4, v0, [D

    if-eqz v4, :cond_153

    .line 398
    const-string v1, "double[]"

    .line 399
    move-object v4, v0

    check-cast v4, [D

    check-cast v4, [D

    array-length v7, v4

    :goto_149
    if-ge v6, v7, :cond_1a8

    aget-wide v8, v4, v6

    .line 400
    .local v8, "v":D
    invoke-virtual {v2, v8, v9}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 399
    .end local v8    # "v":D
    add-int/lit8 v6, v6, 0x1

    goto :goto_149

    .line 402
    :cond_153
    instance-of v4, v0, [Z

    if-eqz v4, :cond_169

    .line 403
    const-string v1, "bool[]"

    .line 404
    move-object v4, v0

    check-cast v4, [Z

    check-cast v4, [Z

    array-length v7, v4

    :goto_15f
    if-ge v6, v7, :cond_1a8

    aget-boolean v8, v4, v6

    .line 405
    .local v8, "v":Z
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 404
    .end local v8    # "v":Z
    add-int/lit8 v6, v6, 0x1

    goto :goto_15f

    .line 407
    :cond_169
    instance-of v4, v0, [C

    if-eqz v4, :cond_183

    .line 408
    const-string v1, "char[]"

    .line 409
    move-object v4, v0

    check-cast v4, [C

    check-cast v4, [C

    array-length v7, v4

    :goto_175
    if-ge v6, v7, :cond_1a8

    aget-char v8, v4, v6

    .line 410
    .local v8, "v":C
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 409
    .end local v8    # "v":C
    add-int/lit8 v6, v6, 0x1

    goto :goto_175

    .line 412
    :cond_183
    instance-of v4, v0, Ljava/util/List;

    if-eqz v4, :cond_1a7

    .line 413
    const-string v1, "stringList"

    .line 415
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 416
    .local v4, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_190
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 417
    .local v7, "v":Ljava/lang/String;
    if-nez v7, :cond_1a1

    sget-object v8, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_1a2

    :cond_1a1
    move-object v8, v7

    :goto_1a2
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 418
    .end local v7    # "v":Ljava/lang/String;
    goto :goto_190

    .line 419
    .end local v4    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1a6
    goto :goto_1a8

    .line 422
    :cond_1a7
    const/4 v2, 0x0

    .line 426
    :cond_1a8
    :goto_1a8
    if-eqz v1, :cond_1bb

    .line 427
    const-string v4, "valueType"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    if-eqz v2, :cond_1b4

    .line 431
    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    :cond_1b4
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, "jsonString":Ljava/lang/String;
    invoke-interface {p3, p1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 437
    .end local v4    # "jsonString":Ljava/lang/String;
    :cond_1bb
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 187
    return-void
.end method

.method public load()Landroid/os/Bundle;
    .registers 10

    .line 141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, "settings":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 145
    .local v1, "allCachedEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 147
    .local v3, "key":Ljava/lang/String;
    :try_start_1f
    invoke-direct {p0, v3, v0}, Lcom/facebook/LegacyTokenHelper;->deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_22} :catch_24

    .line 153
    nop

    .line 154
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_13

    .line 148
    .restart local v3    # "key":Ljava/lang/String;
    :catch_24
    move-exception v2

    .line 150
    .local v2, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v5, 0x5

    sget-object v6, Lcom/facebook/LegacyTokenHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading cached value for key: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v4, 0x0

    return-object v4

    .line 156
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "key":Ljava/lang/String;
    :cond_4c
    return-object v0
.end method

.method public save(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 160
    const-string v0, "bundle"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    .local v2, "key":Ljava/lang/String;
    :try_start_1f
    invoke-direct {p0, v2, p1, v0}, Lcom/facebook/LegacyTokenHelper;->serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_22} :catch_24

    .line 177
    nop

    .line 178
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_13

    .line 167
    .restart local v2    # "key":Ljava/lang/String;
    :catch_24
    move-exception v1

    .line 169
    .local v1, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v4, 0x5

    sget-object v5, Lcom/facebook/LegacyTokenHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error processing value for key: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void

    .line 179
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    :cond_4b
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 180
    return-void
.end method
