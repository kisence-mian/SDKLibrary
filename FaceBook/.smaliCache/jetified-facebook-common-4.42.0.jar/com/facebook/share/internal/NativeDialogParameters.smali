.class public Lcom/facebook/share/internal/NativeDialogParameters;
.super Ljava/lang/Object;
.source "NativeDialogParameters.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create(Lcom/facebook/share/model/ShareCameraEffectContent;Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 8
    .param p0, "cameraEffectContent"    # Lcom/facebook/share/model/ShareCameraEffectContent;
    .param p1, "attachmentUrlsBundle"    # Landroid/os/Bundle;
    .param p2, "dataErrorsFatal"    # Z

    .line 139
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 141
    .local v0, "params":Landroid/os/Bundle;
    nop

    .line 144
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareCameraEffectContent;->getEffectId()Ljava/lang/String;

    move-result-object v1

    .line 141
    const-string v2, "effect_id"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-eqz p1, :cond_15

    .line 147
    const-string v1, "effect_textures"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 151
    :cond_15
    nop

    .line 152
    :try_start_16
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareCameraEffectContent;->getArguments()Lcom/facebook/share/model/CameraEffectArguments;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/share/internal/CameraEffectJSONUtility;->convertToJSON(Lcom/facebook/share/model/CameraEffectArguments;)Lorg/json/JSONObject;

    move-result-object v1

    .line 153
    .local v1, "argsJSON":Lorg/json/JSONObject;
    if-eqz v1, :cond_29

    .line 154
    const-string v2, "effect_arguments"

    .line 157
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-static {v0, v2, v3}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_29} :catch_2b

    .line 163
    .end local v1    # "argsJSON":Lorg/json/JSONObject;
    :cond_29
    nop

    .line 165
    return-object v0

    .line 159
    :catch_2b
    move-exception v1

    .line 160
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/facebook/FacebookException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create a JSON Object from the provided CameraEffectArguments: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 162
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static create(Lcom/facebook/share/model/ShareLinkContent;Z)Landroid/os/Bundle;
    .registers 5
    .param p0, "linkContent"    # Lcom/facebook/share/model/ShareLinkContent;
    .param p1, "dataErrorsFatal"    # Z

    .line 169
    invoke-static {p0, p1}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 171
    .local v0, "params":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TITLE"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    nop

    .line 173
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v2, "DESCRIPTION"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "IMAGE"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 175
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getQuote()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QUOTE"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "MESSENGER_LINK"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 177
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "TARGET_DISPLAY"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 179
    return-object v0
.end method

.method private static create(Lcom/facebook/share/model/ShareMediaContent;Ljava/util/List;Z)Landroid/os/Bundle;
    .registers 6
    .param p0, "mediaContent"    # Lcom/facebook/share/model/ShareMediaContent;
    .param p2, "dataErrorsFatal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareMediaContent;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 211
    .local p1, "mediaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 213
    .local v0, "params":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "MEDIA"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 215
    return-object v0
.end method

.method private static create(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;Z)Landroid/os/Bundle;
    .registers 7
    .param p0, "genericTemplateContent"    # Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;
    .param p1, "dataErrorsFatal"    # Z

    .line 248
    invoke-static {p0, p1}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 251
    .local v0, "params":Landroid/os/Bundle;
    :try_start_4
    invoke-static {v0, p0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addGenericTemplateContent(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_7} :catch_9

    .line 258
    nop

    .line 259
    return-object v0

    .line 254
    :catch_9
    move-exception v1

    .line 255
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/facebook/FacebookException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create a JSON Object from the provided ShareMessengerGenericTemplateContent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 257
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static create(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;Z)Landroid/os/Bundle;
    .registers 7
    .param p0, "mediaTemplateContent"    # Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
    .param p1, "dataErrorsFatal"    # Z

    .line 282
    invoke-static {p0, p1}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 285
    .local v0, "params":Landroid/os/Bundle;
    :try_start_4
    invoke-static {v0, p0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addMediaTemplateContent(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_7} :catch_9

    .line 292
    nop

    .line 294
    return-object v0

    .line 288
    :catch_9
    move-exception v1

    .line 289
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/facebook/FacebookException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create a JSON Object from the provided ShareMessengerMediaTemplateContent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 291
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static create(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;Z)Landroid/os/Bundle;
    .registers 7
    .param p0, "openGraphMusicTemplateContent"    # Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;
    .param p1, "dataErrorsFatal"    # Z

    .line 265
    invoke-static {p0, p1}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 268
    .local v0, "params":Landroid/os/Bundle;
    :try_start_4
    invoke-static {v0, p0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addOpenGraphMusicTemplateContent(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_7} :catch_9

    .line 275
    nop

    .line 276
    return-object v0

    .line 271
    :catch_9
    move-exception v1

    .line 272
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/facebook/FacebookException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create a JSON Object from the provided ShareMessengerOpenGraphMusicTemplateContent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 274
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static create(Lcom/facebook/share/model/ShareOpenGraphContent;Lorg/json/JSONObject;Z)Landroid/os/Bundle;
    .registers 7
    .param p0, "openGraphContent"    # Lcom/facebook/share/model/ShareOpenGraphContent;
    .param p1, "openGraphActionJSON"    # Lorg/json/JSONObject;
    .param p2, "dataErrorsFatal"    # Z

    .line 222
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 225
    .local v0, "params":Landroid/os/Bundle;
    nop

    .line 226
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPreviewPropertyName()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v1}, Lcom/facebook/share/internal/ShareInternalUtility;->getFieldNameAndNamespaceFromFullName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 228
    .local v1, "previewProperty":Ljava/lang/String;
    const-string v2, "PREVIEW_PROPERTY_NAME"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    nop

    .line 235
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object v2

    .line 232
    const-string v3, "ACTION_TYPE"

    invoke-static {v0, v3, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    nop

    .line 240
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    const-string v3, "ACTION"

    invoke-static {v0, v3, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
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

    .line 186
    .local p1, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 188
    .local v0, "params":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "PHOTOS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 190
    return-object v0
.end method

.method private static create(Lcom/facebook/share/model/ShareStoryContent;Landroid/os/Bundle;Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 8
    .param p0, "storyContent"    # Lcom/facebook/share/model/ShareStoryContent;
    .param p1, "mediaInfo"    # Landroid/os/Bundle;
    .param p2, "stickerInfo"    # Landroid/os/Bundle;
    .param p3, "dataErrorsFatal"    # Z

    .line 302
    invoke-static {p0, p3}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 304
    .local v0, "params":Landroid/os/Bundle;
    if-eqz p1, :cond_b

    .line 305
    const-string v1, "bg_asset"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 308
    :cond_b
    if-eqz p2, :cond_12

    .line 309
    const-string v1, "interactive_asset_uri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 312
    :cond_12
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getBackgroundColorList()Ljava/util/List;

    move-result-object v1

    .line 313
    .local v1, "backgroundColorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 314
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "top_background_color_list"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 319
    :cond_26
    nop

    .line 320
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getAttributionLink()Ljava/lang/String;

    move-result-object v2

    .line 319
    const-string v3, "content_url"

    invoke-static {v0, v3, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-object v0
.end method

.method private static create(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Z)Landroid/os/Bundle;
    .registers 6
    .param p0, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p1, "videoUrl"    # Ljava/lang/String;
    .param p2, "dataErrorsFatal"    # Z

    .line 197
    invoke-static {p0, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 199
    .local v0, "params":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TITLE"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    nop

    .line 201
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    .line 200
    const-string v2, "DESCRIPTION"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "VIDEO"

    invoke-static {v0, v1, p1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-object v0
.end method

.method public static create(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;
    .registers 9
    .param p0, "callId"    # Ljava/util/UUID;
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;
    .param p2, "shouldFailOnDataError"    # Z

    .line 60
    const-string v0, "shareContent"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    const-string v0, "callId"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "nativeParams":Landroid/os/Bundle;
    instance-of v1, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v1, :cond_18

    .line 65
    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/ShareLinkContent;

    .line 66
    .local v1, "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    invoke-static {v1, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareLinkContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .end local v1    # "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    goto/16 :goto_cd

    :cond_18
    instance-of v1, p1, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v1, :cond_29

    .line 68
    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/SharePhotoContent;

    .line 69
    .local v1, "photoContent":Lcom/facebook/share/model/SharePhotoContent;
    invoke-static {v1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getPhotoUrls(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Ljava/util/List;

    move-result-object v2

    .line 73
    .local v2, "photoUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, v2, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .end local v1    # "photoContent":Lcom/facebook/share/model/SharePhotoContent;
    .end local v2    # "photoUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_cd

    :cond_29
    instance-of v1, p1, Lcom/facebook/share/model/ShareVideoContent;

    if-eqz v1, :cond_3a

    .line 75
    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/ShareVideoContent;

    .line 76
    .local v1, "videoContent":Lcom/facebook/share/model/ShareVideoContent;
    invoke-static {v1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getVideoUrl(Lcom/facebook/share/model/ShareVideoContent;Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "videoUrl":Ljava/lang/String;
    invoke-static {v1, v2, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .end local v1    # "videoContent":Lcom/facebook/share/model/ShareVideoContent;
    .end local v2    # "videoUrl":Ljava/lang/String;
    goto/16 :goto_cd

    :cond_3a
    instance-of v1, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v1, :cond_71

    .line 80
    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/ShareOpenGraphContent;

    .line 82
    .local v1, "openGraphContent":Lcom/facebook/share/model/ShareOpenGraphContent;
    :try_start_41
    invoke-static {p0, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->toJSONObjectForCall(Ljava/util/UUID;Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;

    move-result-object v2

    .line 84
    .local v2, "openGraphActionJSON":Lorg/json/JSONObject;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/facebook/share/internal/ShareInternalUtility;->removeNamespacesFromOGJsonObject(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v3

    move-object v2, v3

    .line 86
    invoke-static {v1, v2, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareOpenGraphContent;Lorg/json/JSONObject;Z)Landroid/os/Bundle;

    move-result-object v3
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_4f} :catch_53

    move-object v0, v3

    .line 91
    .end local v2    # "openGraphActionJSON":Lorg/json/JSONObject;
    nop

    .line 92
    .end local v1    # "openGraphContent":Lcom/facebook/share/model/ShareOpenGraphContent;
    goto/16 :goto_cd

    .line 87
    .restart local v1    # "openGraphContent":Lcom/facebook/share/model/ShareOpenGraphContent;
    :catch_53
    move-exception v2

    .line 88
    .local v2, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/facebook/FacebookException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create a JSON Object from the provided ShareOpenGraphContent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 90
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    .end local v1    # "openGraphContent":Lcom/facebook/share/model/ShareOpenGraphContent;
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_71
    instance-of v1, p1, Lcom/facebook/share/model/ShareMediaContent;

    if-eqz v1, :cond_81

    .line 93
    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/ShareMediaContent;

    .line 94
    .local v1, "mediaContent":Lcom/facebook/share/model/ShareMediaContent;
    invoke-static {v1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getMediaInfos(Lcom/facebook/share/model/ShareMediaContent;Ljava/util/UUID;)Ljava/util/List;

    move-result-object v2

    .line 98
    .local v2, "mediaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {v1, v2, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareMediaContent;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 99
    .end local v1    # "mediaContent":Lcom/facebook/share/model/ShareMediaContent;
    .end local v2    # "mediaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    goto :goto_cd

    :cond_81
    instance-of v1, p1, Lcom/facebook/share/model/ShareCameraEffectContent;

    if-eqz v1, :cond_91

    .line 100
    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/ShareCameraEffectContent;

    .line 104
    .local v1, "cameraEffectContent":Lcom/facebook/share/model/ShareCameraEffectContent;
    invoke-static {v1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getTextureUrlBundle(Lcom/facebook/share/model/ShareCameraEffectContent;Ljava/util/UUID;)Landroid/os/Bundle;

    move-result-object v2

    .line 108
    .local v2, "attachmentUrlsBundle":Landroid/os/Bundle;
    invoke-static {v1, v2, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareCameraEffectContent;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 109
    .end local v1    # "cameraEffectContent":Lcom/facebook/share/model/ShareCameraEffectContent;
    .end local v2    # "attachmentUrlsBundle":Landroid/os/Bundle;
    goto :goto_cd

    :cond_91
    instance-of v1, p1, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    if-eqz v1, :cond_9d

    .line 110
    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    .line 112
    .local v1, "genericTemplateContent":Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;
    invoke-static {v1, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 113
    .end local v1    # "genericTemplateContent":Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;
    goto :goto_cd

    :cond_9d
    instance-of v1, p1, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    if-eqz v1, :cond_a9

    .line 114
    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    .line 116
    .local v1, "openGraphMusicTemplateContent":Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;
    invoke-static {v1, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 117
    .end local v1    # "openGraphMusicTemplateContent":Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;
    goto :goto_cd

    :cond_a9
    instance-of v1, p1, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    if-eqz v1, :cond_b5

    .line 118
    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    .line 120
    .local v1, "mediaTemplateContent":Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
    invoke-static {v1, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .end local v1    # "mediaTemplateContent":Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
    goto :goto_cc

    .line 121
    :cond_b5
    instance-of v1, p1, Lcom/facebook/share/model/ShareStoryContent;

    if-eqz v1, :cond_cc

    .line 122
    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/ShareStoryContent;

    .line 124
    .local v1, "storyContent":Lcom/facebook/share/model/ShareStoryContent;
    nop

    .line 125
    invoke-static {v1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getBackgroundAssetMediaInfo(Lcom/facebook/share/model/ShareStoryContent;Ljava/util/UUID;)Landroid/os/Bundle;

    move-result-object v2

    .line 126
    .local v2, "mediaInfo":Landroid/os/Bundle;
    nop

    .line 127
    invoke-static {v1, p0}, Lcom/facebook/share/internal/ShareInternalUtility;->getStickerUrl(Lcom/facebook/share/model/ShareStoryContent;Ljava/util/UUID;)Landroid/os/Bundle;

    move-result-object v3

    .line 128
    .local v3, "stickerInfo":Landroid/os/Bundle;
    nop

    .line 129
    invoke-static {v1, v2, v3, p2}, Lcom/facebook/share/internal/NativeDialogParameters;->create(Lcom/facebook/share/model/ShareStoryContent;Landroid/os/Bundle;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_cd

    .line 121
    .end local v1    # "storyContent":Lcom/facebook/share/model/ShareStoryContent;
    .end local v2    # "mediaInfo":Landroid/os/Bundle;
    .end local v3    # "stickerInfo":Landroid/os/Bundle;
    :cond_cc
    :goto_cc
    nop

    .line 132
    :goto_cd
    return-object v0
.end method

.method private static createBaseParameters(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;
    .registers 7
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;
    .param p1, "dataErrorsFatal"    # Z

    .line 326
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 327
    .local v0, "params":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "LINK"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 328
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PLACE"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getPageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PAGE"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getRef()Ljava/lang/String;

    move-result-object v1

    const-string v2, "REF"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v1, "DATA_FAILURES_FATAL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 334
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getPeopleIds()Ljava/util/List;

    move-result-object v1

    .line 335
    .local v1, "peopleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 336
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "FRIENDS"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 341
    :cond_42
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->getShareHashtag()Lcom/facebook/share/model/ShareHashtag;

    move-result-object v2

    .line 342
    .local v2, "shareHashtag":Lcom/facebook/share/model/ShareHashtag;
    if-eqz v2, :cond_51

    .line 343
    invoke-virtual {v2}, Lcom/facebook/share/model/ShareHashtag;->getHashtag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HASHTAG"

    invoke-static {v0, v4, v3}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_51
    return-object v0
.end method
