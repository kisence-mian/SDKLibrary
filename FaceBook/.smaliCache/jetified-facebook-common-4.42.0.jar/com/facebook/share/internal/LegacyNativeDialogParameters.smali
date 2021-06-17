.class public Lcom/facebook/share/internal/LegacyNativeDialogParameters;
.super Ljava/lang/Object;
.source "LegacyNativeDialogParameters.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create(Lcom/facebook/share/model/ShareLinkContent;Z)Landroid/os/Bundle;
    .registers 5
    .param p0, "linkContent"    # Lcom/facebook/share/model/ShareLinkContent;
    .param p1, "dataErrorsFatal"    # Z

    .line 87
    invoke-static {p0, p1}, Lcom/facebook/share/internal/LegacyNativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, "params":Landroid/os/Bundle;
    nop

    .line 90
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string v2, "com.facebook.platform.extra.TITLE"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    nop

    .line 92
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    .line 91
    const-string v2, "com.facebook.platform.extra.DESCRIPTION"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.facebook.platform.extra.IMAGE"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 95
    return-object v0
.end method

.method private static create(Lcom/facebook/share/model/ShareOpenGraphContent;Lorg/json/JSONObject;Z)Landroid/os/Bundle;
    .registers 6
    .param p0, "openGraphContent"    # Lcom/facebook/share/model/ShareOpenGraphContent;
    .param p1, "openGraphActionJSON"    # Lorg/json/JSONObject;
    .param p2, "dataErrorsFatal"    # Z

    .line 118
    invoke-static {p0, p2}, Lcom/facebook/share/internal/LegacyNativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 120
    .local v0, "params":Landroid/os/Bundle;
    nop

    .line 123
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPreviewPropertyName()Ljava/lang/String;

    move-result-object v1

    .line 120
    const-string v2, "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    nop

    .line 127
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object v1

    .line 124
    const-string v2, "com.facebook.platform.extra.ACTION_TYPE"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    nop

    .line 132
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    const-string v2, "com.facebook.platform.extra.ACTION"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object v0
.end method

.method private static create(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/List;Z)Landroid/os/Bundle;
    .registers 6
    .param p0, "photoContent"    # Lcom/facebook/share/model/SharePhotoContent;
    .param p2, "dataErrorsFatal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/SharePhotoContent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 102
    .local p1, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p2}, Lcom/facebook/share/internal/LegacyNativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 104
    .local v0, "params":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "com.facebook.platform.extra.PHOTOS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 106
    return-object v0
.end method

.method private static create(Lcom/facebook/share/model/ShareVideoContent;Z)Landroid/os/Bundle;
    .registers 3
    .param p0, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p1, "dataErrorsFatal"    # Z

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public static create(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;
    .registers 9
    .param p0, "callId"    # Ljava/util/UUID;
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;
    .param p2, "shouldFailOnDataError"    # Z

    .line 52
    const-string v0, "shareContent"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const-string v0, "callId"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "nativeParams":Landroid/os/Bundle;
    instance-of v1, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v1, :cond_17

    .line 57
    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/ShareLinkContent;

    .line 58
    .local v1, "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    invoke-static {v1, p2}, Lcom/facebook/share/internal/LegacyNativeDialogParameters;->create(Lcom/facebook/share/model/ShareLinkContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .end local v1    # "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    goto :goto_63

    :cond_17
    instance-of v1, p1, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v1, :cond_27

    .line 60
    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/SharePhotoContent;

    .line 61
    .local v1, "photoContent":Lcom/facebook/share/model/SharePhotoContent;
    invoke-static {v1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getPhotoUrls(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Ljava/util/List;

    move-result-object v2

    .line 65
    .local v2, "photoUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, v2, p2}, Lcom/facebook/share/internal/LegacyNativeDialogParameters;->create(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .end local v1    # "photoContent":Lcom/facebook/share/model/SharePhotoContent;
    .end local v2    # "photoUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_63

    :cond_27
    instance-of v1, p1, Lcom/facebook/share/model/ShareVideoContent;

    if-eqz v1, :cond_33

    .line 67
    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/ShareVideoContent;

    .line 68
    .local v1, "videoContent":Lcom/facebook/share/model/ShareVideoContent;
    invoke-static {v1, p2}, Lcom/facebook/share/internal/LegacyNativeDialogParameters;->create(Lcom/facebook/share/model/ShareVideoContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .end local v1    # "videoContent":Lcom/facebook/share/model/ShareVideoContent;
    goto :goto_62

    .line 69
    :cond_33
    instance-of v1, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v1, :cond_62

    .line 70
    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/ShareOpenGraphContent;

    .line 72
    .local v1, "openGraphContent":Lcom/facebook/share/model/ShareOpenGraphContent;
    :try_start_3a
    invoke-static {p0, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->toJSONObjectForCall(Ljava/util/UUID;Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;

    move-result-object v2

    .line 75
    .local v2, "openGraphActionJSON":Lorg/json/JSONObject;
    invoke-static {v1, v2, p2}, Lcom/facebook/share/internal/LegacyNativeDialogParameters;->create(Lcom/facebook/share/model/ShareOpenGraphContent;Lorg/json/JSONObject;Z)Landroid/os/Bundle;

    move-result-object v3
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_42} :catch_44

    move-object v0, v3

    .line 80
    .end local v2    # "openGraphActionJSON":Lorg/json/JSONObject;
    goto :goto_63

    .line 76
    :catch_44
    move-exception v2

    .line 77
    .local v2, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/facebook/FacebookException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create a JSON Object from the provided ShareOpenGraphContent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 79
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    .end local v1    # "openGraphContent":Lcom/facebook/share/model/ShareOpenGraphContent;
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_62
    :goto_62
    nop

    .line 83
    :goto_63
    return-object v0
.end method

.method private static createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;
    .registers 6
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;
    .param p1, "dataErrorsFatal"    # Z

    .line 138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v0, "params":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.facebook.platform.extra.LINK"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 141
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.platform.extra.PLACE"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getRef()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.platform.extra.REF"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "com.facebook.platform.extra.DATA_FAILURES_FATAL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getPeopleIds()Ljava/util/List;

    move-result-object v1

    .line 147
    .local v1, "peopleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 148
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "com.facebook.platform.extra.FRIENDS"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 153
    :cond_39
    return-object v0
.end method
