.class public final Lcom/facebook/share/ShareApi;
.super Ljava/lang/Object;
.source "ShareApi.java"


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final DEFAULT_GRAPH_NODE:Ljava/lang/String; = "me"

.field private static final GRAPH_PATH_FORMAT:Ljava/lang/String; = "%s/%s"

.field private static final PHOTOS_EDGE:Ljava/lang/String; = "photos"

.field private static final TAG:Ljava/lang/String; = "ShareApi"


# instance fields
.field private graphNode:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private final shareContent:Lcom/facebook/share/model/ShareContent;


# direct methods
.method public constructor <init>(Lcom/facebook/share/model/ShareContent;)V
    .registers 3
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/facebook/share/ShareApi;->shareContent:Lcom/facebook/share/model/ShareContent;

    .line 89
    const-string v0, "me"

    iput-object v0, p0, Lcom/facebook/share/ShareApi;->graphNode:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$000(Landroid/os/Bundle;)V
    .registers 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .line 58
    invoke-static {p0}, Lcom/facebook/share/ShareApi;->handleImagesOnAction(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/ShareApi;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/ShareApi;
    .param p1, "x1"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lcom/facebook/share/ShareApi;->getGraphPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/ShareApi;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/ShareApi;->stageArrayList(Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/share/ShareApi;Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/ShareApi;
    .param p1, "x1"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .param p2, "x2"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/ShareApi;->stageOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/share/ShareApi;Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/ShareApi;
    .param p1, "x1"    # Lcom/facebook/share/model/SharePhoto;
    .param p2, "x2"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/ShareApi;->stagePhoto(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    return-void
.end method

.method private addCommonParameters(Landroid/os/Bundle;Lcom/facebook/share/model/ShareContent;)V
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .line 205
    invoke-virtual {p2}, Lcom/facebook/share/model/ShareContent;->getPeopleIds()Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, "peopleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 207
    const-string v1, ", "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tags"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_15
    invoke-virtual {p2}, Lcom/facebook/share/model/ShareContent;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 211
    invoke-virtual {p2}, Lcom/facebook/share/model/ShareContent;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "place"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_28
    invoke-virtual {p2}, Lcom/facebook/share/model/ShareContent;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 215
    invoke-virtual {p2}, Lcom/facebook/share/model/ShareContent;->getPageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_3b
    invoke-virtual {p2}, Lcom/facebook/share/model/ShareContent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 219
    invoke-virtual {p2}, Lcom/facebook/share/model/ShareContent;->getRef()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ref"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_4e
    return-void
.end method

.method private getGraphPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "pathAfterGraphNode"    # Ljava/lang/String;

    .line 195
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getGraphNode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 195
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object v0

    .line 199
    :catch_1c
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSharePhotoCommonParameters(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/model/SharePhotoContent;)Landroid/os/Bundle;
    .registers 11
    .param p1, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p2, "photoContent"    # Lcom/facebook/share/model/SharePhotoContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 434
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    .line 435
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "place"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 436
    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent;->getPlaceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 437
    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent;->getPlaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_1d
    const-string v1, "tags"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 440
    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent;->getPeopleIds()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 441
    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent;->getPeopleIds()Ljava/util/List;

    move-result-object v2

    .line 442
    .local v2, "peopleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 443
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 444
    .local v3, "tags":Lorg/json/JSONArray;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 445
    .local v5, "id":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 446
    .local v6, "tag":Lorg/json/JSONObject;
    const-string v7, "tag_uid"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 448
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "tag":Lorg/json/JSONObject;
    goto :goto_42

    .line 449
    :cond_5c
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .end local v2    # "peopleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "tags":Lorg/json/JSONArray;
    :cond_63
    const-string v1, "ref"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 453
    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 454
    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_7c
    return-object v0
.end method

.method private static handleImagesOnAction(Landroid/os/Bundle;)V
    .registers 12
    .param p0, "parameters"    # Landroid/os/Bundle;

    .line 276
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "imageStr":Ljava/lang/String;
    if-eqz v1, :cond_4c

    .line 280
    const/4 v2, 0x0

    :try_start_9
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 281
    .local v3, "images":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3a

    .line 282
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 283
    .local v5, "jsonImage":Lorg/json/JSONObject;
    if-eqz v5, :cond_1f

    .line 284
    invoke-static {p0, v4, v5}, Lcom/facebook/share/ShareApi;->putImageInBundleWithArrayFormat(Landroid/os/Bundle;ILorg/json/JSONObject;)V

    goto :goto_37

    .line 287
    :cond_1f
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, "url":Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v8, "image[%d][url]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .end local v5    # "jsonImage":Lorg/json/JSONObject;
    .end local v6    # "url":Ljava/lang/String;
    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 291
    .end local v4    # "i":I
    :cond_3a
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_3d} :catch_3e

    .line 292
    return-void

    .line 293
    .end local v3    # "images":Lorg/json/JSONArray;
    :catch_3e
    move-exception v3

    .line 299
    :try_start_3f
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 300
    .local v3, "image":Lorg/json/JSONObject;
    invoke-static {p0, v2, v3}, Lcom/facebook/share/ShareApi;->putImageInBundleWithArrayFormat(Landroid/os/Bundle;ILorg/json/JSONObject;)V

    .line 301
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_4a} :catch_4b

    .line 305
    .end local v3    # "image":Lorg/json/JSONObject;
    goto :goto_4c

    .line 302
    :catch_4b
    move-exception v0

    .line 307
    :cond_4c
    :goto_4c
    return-void
.end method

.method private static putImageInBundleWithArrayFormat(Landroid/os/Bundle;ILorg/json/JSONObject;)V
    .registers 9
    .param p0, "parameters"    # Landroid/os/Bundle;
    .param p1, "index"    # I
    .param p2, "image"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 313
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 314
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 315
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 316
    .local v1, "property":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string v4, "image[%d][%s]"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .end local v1    # "property":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_4

    .line 319
    :cond_31
    return-void
.end method

.method public static share(Lcom/facebook/share/model/ShareContent;Lcom/facebook/FacebookCallback;)V
    .registers 3
    .param p0, "shareContent"    # Lcom/facebook/share/model/ShareContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareContent;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p1, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    new-instance v0, Lcom/facebook/share/ShareApi;

    invoke-direct {v0, p0}, Lcom/facebook/share/ShareApi;-><init>(Lcom/facebook/share/model/ShareContent;)V

    .line 79
    invoke-virtual {v0, p1}, Lcom/facebook/share/ShareApi;->share(Lcom/facebook/FacebookCallback;)V

    .line 80
    return-void
.end method

.method private shareLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/FacebookCallback;)V
    .registers 11
    .param p1, "linkContent"    # Lcom/facebook/share/model/ShareLinkContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareLinkContent;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .line 399
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    new-instance v5, Lcom/facebook/share/ShareApi$4;

    invoke-direct {v5, p0, p2}, Lcom/facebook/share/ShareApi$4;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/FacebookCallback;)V

    .line 407
    .local v5, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    .line 408
    .local v6, "parameters":Landroid/os/Bundle;
    invoke-direct {p0, v6, p1}, Lcom/facebook/share/ShareApi;->addCommonParameters(Landroid/os/Bundle;Lcom/facebook/share/model/ShareContent;)V

    .line 409
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "link"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "picture"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getRef()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ref"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    new-instance v7, Lcom/facebook/GraphRequest;

    .line 416
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 417
    const-string v0, "feed"

    invoke-direct {p0, v0}, Lcom/facebook/share/ShareApi;->getGraphPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v0, v7

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 420
    invoke-virtual {v7}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 421
    return-void
.end method

.method private shareOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/FacebookCallback;)V
    .registers 12
    .param p1, "openGraphContent"    # Lcom/facebook/share/model/ShareOpenGraphContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareOpenGraphContent;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .line 230
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    new-instance v4, Lcom/facebook/share/ShareApi$1;

    invoke-direct {v4, p0, p2}, Lcom/facebook/share/ShareApi$1;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/FacebookCallback;)V

    .line 238
    .local v4, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v6

    .line 239
    .local v6, "action":Lcom/facebook/share/model/ShareOpenGraphAction;
    invoke-virtual {v6}, Lcom/facebook/share/model/ShareOpenGraphAction;->getBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 240
    .local v7, "parameters":Landroid/os/Bundle;
    invoke-direct {p0, v7, p1}, Lcom/facebook/share/ShareApi;->addCommonParameters(Landroid/os/Bundle;Lcom/facebook/share/model/ShareContent;)V

    .line 241
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 242
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_23
    new-instance v8, Lcom/facebook/share/ShareApi$2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v7

    move-object v3, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/ShareApi$2;-><init>(Lcom/facebook/share/ShareApi;Landroid/os/Bundle;Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/GraphRequest$Callback;Lcom/facebook/FacebookCallback;)V

    .line 269
    .local v0, "stageCallback":Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    invoke-direct {p0, v7, v0}, Lcom/facebook/share/ShareApi;->stageOpenGraphAction(Landroid/os/Bundle;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 270
    return-void
.end method

.method private sharePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/FacebookCallback;)V
    .registers 28
    .param p1, "photoContent"    # Lcom/facebook/share/model/SharePhotoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/SharePhotoContent;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .line 323
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    new-instance v0, Lcom/facebook/internal/Mutable;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/internal/Mutable;-><init>(Ljava/lang/Object;)V

    move-object v9, v0

    .line 324
    .local v9, "requestCount":Lcom/facebook/internal/Mutable;, "Lcom/facebook/internal/Mutable<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v22

    .line 325
    .local v22, "accessToken":Lcom/facebook/AccessToken;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 326
    .local v13, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v4, "errorResponses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphResponse;>;"
    new-instance v15, Lcom/facebook/share/ShareApi$3;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v5, v9

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/share/ShareApi$3;-><init>(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/facebook/internal/Mutable;Lcom/facebook/FacebookCallback;)V

    .line 356
    .local v15, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    :try_start_2e
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/share/model/SharePhoto;
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_42} :catch_d5

    .line 359
    .local v1, "photo":Lcom/facebook/share/model/SharePhoto;
    move-object/from16 v2, p1

    :try_start_44
    invoke-direct {v7, v1, v2}, Lcom/facebook/share/ShareApi;->getSharePhotoCommonParameters(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/model/SharePhotoContent;)Landroid/os/Bundle;

    move-result-object v14
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_48} :catch_9d
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_48} :catch_9b

    .line 363
    .local v14, "params":Landroid/os/Bundle;
    nop

    .line 364
    :try_start_49
    invoke-virtual {v1}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 365
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v6

    .line 366
    .local v6, "photoUri":Landroid/net/Uri;
    invoke-virtual {v1}, Lcom/facebook/share/model/SharePhoto;->getCaption()Ljava/lang/String;

    move-result-object v10
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_55} :catch_9b

    .line 367
    .local v10, "caption":Ljava/lang/String;
    if-nez v10, :cond_63

    .line 368
    :try_start_57
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/share/ShareApi;->getMessage()Ljava/lang/String;

    move-result-object v11
    :try_end_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_5b} :catch_5f

    move-object v10, v11

    move-object/from16 v23, v10

    goto :goto_65

    .line 392
    .end local v1    # "photo":Lcom/facebook/share/model/SharePhoto;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "photoUri":Landroid/net/Uri;
    .end local v10    # "caption":Ljava/lang/String;
    .end local v14    # "params":Landroid/os/Bundle;
    :catch_5f
    move-exception v0

    move-object v1, v13

    goto/16 :goto_d9

    .line 367
    .restart local v1    # "photo":Lcom/facebook/share/model/SharePhoto;
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "photoUri":Landroid/net/Uri;
    .restart local v10    # "caption":Ljava/lang/String;
    .restart local v14    # "params":Landroid/os/Bundle;
    :cond_63
    move-object/from16 v23, v10

    .line 370
    .end local v10    # "caption":Ljava/lang/String;
    .local v23, "caption":Ljava/lang/String;
    :goto_65
    const-string v10, "photos"

    if-eqz v5, :cond_7e

    .line 371
    nop

    .line 373
    :try_start_6a
    invoke-direct {v7, v10}, Lcom/facebook/share/ShareApi;->getGraphPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_6a .. :try_end_6e} :catch_9b

    .line 371
    move-object/from16 v10, v22

    move-object v12, v5

    move-object/from16 v24, v1

    move-object v1, v13

    .end local v13    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    .local v1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    .local v24, "photo":Lcom/facebook/share/model/SharePhoto;
    move-object/from16 v13, v23

    :try_start_76
    invoke-static/range {v10 .. v15}, Lcom/facebook/GraphRequest;->newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_99

    .line 378
    .end local v24    # "photo":Lcom/facebook/share/model/SharePhoto;
    .local v1, "photo":Lcom/facebook/share/model/SharePhoto;
    .restart local v13    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    :cond_7e
    move-object/from16 v24, v1

    move-object v1, v13

    .end local v13    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    .local v1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    .restart local v24    # "photo":Lcom/facebook/share/model/SharePhoto;
    if-eqz v6, :cond_99

    .line 379
    nop

    .line 381
    invoke-direct {v7, v10}, Lcom/facebook/share/ShareApi;->getGraphPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 379
    move-object/from16 v16, v22

    move-object/from16 v18, v6

    move-object/from16 v19, v23

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    invoke-static/range {v16 .. v21}, Lcom/facebook/GraphRequest;->newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "photoUri":Landroid/net/Uri;
    .end local v14    # "params":Landroid/os/Bundle;
    .end local v23    # "caption":Ljava/lang/String;
    .end local v24    # "photo":Lcom/facebook/share/model/SharePhoto;
    :cond_99
    :goto_99
    move-object v13, v1

    goto :goto_36

    .line 392
    .end local v1    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    .restart local v13    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    :catch_9b
    move-exception v0

    goto :goto_d8

    .line 360
    .local v1, "photo":Lcom/facebook/share/model/SharePhoto;
    :catch_9d
    move-exception v0

    move-object/from16 v24, v1

    move-object v1, v13

    move-object v5, v0

    .end local v13    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    .local v1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    .restart local v24    # "photo":Lcom/facebook/share/model/SharePhoto;
    move-object v0, v5

    .line 361
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v8, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    .line 362
    return-void

    .line 388
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    .end local v24    # "photo":Lcom/facebook/share/model/SharePhoto;
    .restart local v13    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    :cond_a7
    move-object/from16 v2, p1

    move-object v1, v13

    .end local v13    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    .restart local v1    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    iget-object v0, v9, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v9, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    .line 389
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/GraphRequest;

    .line 390
    .local v5, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v5}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_d0
    .catch Ljava/io/FileNotFoundException; {:try_start_76 .. :try_end_d0} :catch_d3

    .line 391
    nop

    .end local v5    # "request":Lcom/facebook/GraphRequest;
    goto :goto_c1

    .line 394
    :cond_d2
    goto :goto_dc

    .line 392
    :catch_d3
    move-exception v0

    goto :goto_d9

    .end local v1    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    .restart local v13    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    :catch_d5
    move-exception v0

    move-object/from16 v2, p1

    :goto_d8
    move-object v1, v13

    .line 393
    .end local v13    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    .local v0, "ex":Ljava/io/FileNotFoundException;
    .restart local v1    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    :goto_d9
    invoke-static {v8, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    .line 395
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    :goto_dc
    return-void
.end method

.method private shareVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/FacebookCallback;)V
    .registers 4
    .param p1, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareVideoContent;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .line 426
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getGraphNode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/facebook/share/internal/VideoUploader;->uploadAsync(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    .line 429
    goto :goto_c

    .line 427
    :catch_8
    move-exception v0

    .line 428
    .local v0, "ex":Ljava/io/FileNotFoundException;
    invoke-static {p2, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    .line 430
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    :goto_c
    return-void
.end method

.method private stageArrayList(Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 6
    .param p1, "arrayList"    # Ljava/util/ArrayList;
    .param p2, "onArrayListStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .line 462
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 463
    .local v0, "stagedObject":Lorg/json/JSONArray;
    new-instance v1, Lcom/facebook/share/ShareApi$5;

    invoke-direct {v1, p0, p1, v0}, Lcom/facebook/share/ShareApi$5;-><init>(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Lorg/json/JSONArray;)V

    .line 506
    .local v1, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/facebook/share/ShareApi$6;

    invoke-direct {v2, p0, p2, v0}, Lcom/facebook/share/ShareApi$6;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;Lorg/json/JSONArray;)V

    .line 518
    .local v2, "onStagedArrayMapperCompleteListener":Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    invoke-direct {p0, v1, v2}, Lcom/facebook/share/ShareApi;->stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 519
    return-void
.end method

.method private stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .registers 4
    .param p2, "onCollectionValuesStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/internal/CollectionMapper$Collection<",
            "TT;>;",
            "Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;",
            ")V"
        }
    .end annotation

    .line 524
    .local p1, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<TT;>;"
    new-instance v0, Lcom/facebook/share/ShareApi$7;

    invoke-direct {v0, p0}, Lcom/facebook/share/ShareApi$7;-><init>(Lcom/facebook/share/ShareApi;)V

    .line 542
    .local v0, "valueMapper":Lcom/facebook/internal/CollectionMapper$ValueMapper;
    invoke-static {p1, v0, p2}, Lcom/facebook/internal/CollectionMapper;->iterate(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$ValueMapper;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 543
    return-void
.end method

.method private stageOpenGraphAction(Landroid/os/Bundle;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .registers 4
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "onOpenGraphActionStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    .line 548
    new-instance v0, Lcom/facebook/share/ShareApi$8;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/ShareApi$8;-><init>(Lcom/facebook/share/ShareApi;Landroid/os/Bundle;)V

    .line 570
    .local v0, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<Ljava/lang/String;>;"
    invoke-direct {p0, v0, p2}, Lcom/facebook/share/ShareApi;->stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 571
    return-void
.end method

.method private stageOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 13
    .param p1, "object"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .param p2, "onOpenGraphObjectStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .line 576
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/facebook/share/model/ShareOpenGraphObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 578
    const-string v1, "og:type"

    invoke-virtual {p1, v1}, Lcom/facebook/share/model/ShareOpenGraphObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    :cond_e
    if-nez v0, :cond_1b

    .line 582
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Open Graph objects must contain a type value."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    .line 584
    return-void

    .line 586
    :cond_1b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v7, v1

    .line 587
    .local v7, "stagedObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/facebook/share/ShareApi$9;

    invoke-direct {v1, p0, p1, v7}, Lcom/facebook/share/ShareApi$9;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/share/model/ShareOpenGraphObject;Lorg/json/JSONObject;)V

    move-object v8, v1

    .line 614
    .local v8, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<Ljava/lang/String;>;"
    new-instance v5, Lcom/facebook/share/ShareApi$10;

    invoke-direct {v5, p0, p2}, Lcom/facebook/share/ShareApi$10;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    .line 644
    .local v5, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    move-object v4, v0

    .line 645
    .local v4, "ogType":Ljava/lang/String;
    new-instance v9, Lcom/facebook/share/ShareApi$11;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v7

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/share/ShareApi$11;-><init>(Lcom/facebook/share/ShareApi;Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    .line 675
    .local v1, "onMapperCompleteListener":Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    invoke-direct {p0, v8, v1}, Lcom/facebook/share/ShareApi;->stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 676
    return-void
.end method

.method private stagePhoto(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 9
    .param p1, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p2, "onPhotoStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .line 681
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 682
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    .line 683
    .local v1, "imageUrl":Landroid/net/Uri;
    if-nez v0, :cond_18

    if-eqz v1, :cond_d

    goto :goto_18

    .line 745
    :cond_d
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Photos must have an imageURL or bitmap."

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_49

    .line 684
    :cond_18
    :goto_18
    new-instance v2, Lcom/facebook/share/ShareApi$12;

    invoke-direct {v2, p0, p2, p1}, Lcom/facebook/share/ShareApi$12;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;Lcom/facebook/share/model/SharePhoto;)V

    .line 725
    .local v2, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    if-eqz v0, :cond_2b

    .line 727
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v3

    .line 726
    invoke-static {v3, v0, v2}, Lcom/facebook/share/internal/ShareInternalUtility;->newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Landroid/graphics/Bitmap;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 729
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_48

    .line 733
    :cond_2b
    :try_start_2b
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v3

    .line 732
    invoke-static {v3, v1, v2}, Lcom/facebook/share/internal/ShareInternalUtility;->newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Landroid/net/Uri;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 735
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_36} :catch_37

    .line 742
    goto :goto_48

    .line 736
    :catch_37
    move-exception v3

    .line 737
    .local v3, "ex":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    .line 738
    .local v4, "message":Ljava/lang/String;
    if-nez v4, :cond_40

    .line 739
    const-string v4, "Error staging photo."

    .line 741
    :cond_40
    new-instance v5, Lcom/facebook/FacebookException;

    invoke-direct {v5, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v5}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    .line 744
    .end local v2    # "requestCallback":Lcom/facebook/GraphRequest$Callback;
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    .end local v4    # "message":Ljava/lang/String;
    :goto_48
    nop

    .line 748
    :goto_49
    return-void
.end method


# virtual methods
.method public canShare()Z
    .registers 5

    .line 144
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 145
    return v1

    .line 147
    :cond_8
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 148
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v2

    if-nez v2, :cond_13

    .line 149
    return v1

    .line 151
    :cond_13
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v1

    .line 152
    .local v1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_21

    const-string v2, "publish_actions"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 153
    :cond_21
    const-string v2, "ShareApi"

    const-string v3, "The publish_actions permissions are missing, the share will fail unless this app was authorized to publish in another installation."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_28
    const/4 v2, 0x1

    return v2
.end method

.method public getGraphNode()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/facebook/share/ShareApi;->graphNode:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/facebook/share/ShareApi;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getShareContent()Lcom/facebook/share/model/ShareContent;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/facebook/share/ShareApi;->shareContent:Lcom/facebook/share/model/ShareContent;

    return-object v0
.end method

.method public setGraphNode(Ljava/lang/String;)V
    .registers 2
    .param p1, "graphNode"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/facebook/share/ShareApi;->graphNode:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/facebook/share/ShareApi;->message:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public share(Lcom/facebook/FacebookCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p1, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->canShare()Z

    move-result v0

    if-nez v0, :cond_c

    .line 167
    const-string v0, "Insufficient permissions for sharing content via Api."

    invoke-static {p1, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithError(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V

    .line 169
    return-void

    .line 171
    :cond_c
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v0

    .line 175
    .local v0, "shareContent":Lcom/facebook/share/model/ShareContent;
    :try_start_10
    invoke-static {v0}, Lcom/facebook/share/internal/ShareContentValidation;->validateForApiShare(Lcom/facebook/share/model/ShareContent;)V
    :try_end_13
    .catch Lcom/facebook/FacebookException; {:try_start_10 .. :try_end_13} :catch_40

    .line 179
    nop

    .line 181
    instance-of v1, v0, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v1, :cond_1f

    .line 182
    move-object v1, v0

    check-cast v1, Lcom/facebook/share/model/ShareLinkContent;

    invoke-direct {p0, v1, p1}, Lcom/facebook/share/ShareApi;->shareLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/FacebookCallback;)V

    goto :goto_3f

    .line 183
    :cond_1f
    instance-of v1, v0, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v1, :cond_2a

    .line 184
    move-object v1, v0

    check-cast v1, Lcom/facebook/share/model/SharePhotoContent;

    invoke-direct {p0, v1, p1}, Lcom/facebook/share/ShareApi;->sharePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/FacebookCallback;)V

    goto :goto_3f

    .line 185
    :cond_2a
    instance-of v1, v0, Lcom/facebook/share/model/ShareVideoContent;

    if-eqz v1, :cond_35

    .line 186
    move-object v1, v0

    check-cast v1, Lcom/facebook/share/model/ShareVideoContent;

    invoke-direct {p0, v1, p1}, Lcom/facebook/share/ShareApi;->shareVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/FacebookCallback;)V

    goto :goto_3f

    .line 187
    :cond_35
    instance-of v1, v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v1, :cond_3f

    .line 188
    move-object v1, v0

    check-cast v1, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-direct {p0, v1, p1}, Lcom/facebook/share/ShareApi;->shareOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/FacebookCallback;)V

    .line 190
    :cond_3f
    :goto_3f
    return-void

    .line 176
    :catch_40
    move-exception v1

    .line 177
    .local v1, "ex":Lcom/facebook/FacebookException;
    invoke-static {p1, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    .line 178
    return-void
.end method
