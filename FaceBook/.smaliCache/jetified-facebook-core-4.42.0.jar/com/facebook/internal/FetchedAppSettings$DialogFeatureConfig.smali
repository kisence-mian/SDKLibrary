.class public Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
.super Ljava/lang/Object;
.source "FetchedAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FetchedAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogFeatureConfig"
.end annotation


# static fields
.field private static final DIALOG_CONFIG_DIALOG_NAME_FEATURE_NAME_SEPARATOR:Ljava/lang/String; = "\\|"

.field private static final DIALOG_CONFIG_NAME_KEY:Ljava/lang/String; = "name"

.field private static final DIALOG_CONFIG_URL_KEY:Ljava/lang/String; = "url"

.field private static final DIALOG_CONFIG_VERSIONS_KEY:Ljava/lang/String; = "versions"


# instance fields
.field private dialogName:Ljava/lang/String;

.field private fallbackUrl:Landroid/net/Uri;

.field private featureName:Ljava/lang/String;

.field private featureVersionSpec:[I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[I)V
    .registers 5
    .param p1, "dialogName"    # Ljava/lang/String;
    .param p2, "featureName"    # Ljava/lang/String;
    .param p3, "fallbackUrl"    # Landroid/net/Uri;
    .param p4, "featureVersionSpec"    # [I

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->dialogName:Ljava/lang/String;

    .line 229
    iput-object p2, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->featureName:Ljava/lang/String;

    .line 230
    iput-object p3, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->fallbackUrl:Landroid/net/Uri;

    .line 231
    iput-object p4, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->featureVersionSpec:[I

    .line 232
    return-void
.end method

.method public static parseDialogConfig(Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    .registers 10
    .param p0, "dialogConfigJSON"    # Lorg/json/JSONObject;

    .line 153
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "dialogNameWithFeature":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 155
    return-object v2

    .line 158
    :cond_e
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "components":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_19

    .line 163
    return-object v2

    .line 166
    :cond_19
    const/4 v3, 0x0

    aget-object v3, v1, v3

    .line 167
    .local v3, "dialogName":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v1, v4

    .line 168
    .local v4, "featureName":Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4d

    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    goto :goto_4d

    .line 172
    :cond_2c
    const-string v2, "url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "urlString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 174
    .local v5, "fallbackUri":Landroid/net/Uri;
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 175
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 178
    :cond_3d
    const-string v6, "versions"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 180
    .local v6, "versionsJSON":Lorg/json/JSONArray;
    invoke-static {v6}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->parseVersionSpec(Lorg/json/JSONArray;)[I

    move-result-object v7

    .line 182
    .local v7, "featureVersionSpec":[I
    new-instance v8, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    invoke-direct {v8, v3, v4, v5, v7}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[I)V

    return-object v8

    .line 169
    .end local v2    # "urlString":Ljava/lang/String;
    .end local v5    # "fallbackUri":Landroid/net/Uri;
    .end local v6    # "versionsJSON":Lorg/json/JSONArray;
    .end local v7    # "featureVersionSpec":[I
    :cond_4d
    :goto_4d
    return-object v2
.end method

.method private static parseVersionSpec(Lorg/json/JSONArray;)[I
    .registers 8
    .param p0, "versionsJSON"    # Lorg/json/JSONArray;

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "versionSpec":[I
    if-eqz p0, :cond_2f

    .line 192
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 193
    .local v1, "numVersions":I
    new-array v0, v1, [I

    .line 194
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_2f

    .line 196
    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONArray;->optInt(II)I

    move-result v4

    .line 197
    .local v4, "version":I
    if-ne v4, v3, :cond_2a

    .line 200
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "versionString":Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 203
    :try_start_1d
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_21} :catch_23

    move v4, v5

    .line 207
    goto :goto_2a

    .line 204
    :catch_23
    move-exception v5

    .line 205
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    const-string v6, "FacebookSDK"

    invoke-static {v6, v5}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 206
    const/4 v4, -0x1

    .line 211
    .end local v3    # "versionString":Ljava/lang/String;
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2a
    :goto_2a
    aput v4, v0, v2

    .line 194
    .end local v4    # "version":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 215
    .end local v1    # "numVersions":I
    .end local v2    # "i":I
    :cond_2f
    return-object v0
.end method


# virtual methods
.method public getDialogName()Ljava/lang/String;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->dialogName:Ljava/lang/String;

    return-object v0
.end method

.method public getFallbackUrl()Landroid/net/Uri;
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->fallbackUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->featureName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionSpec()[I
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->featureVersionSpec:[I

    return-object v0
.end method
