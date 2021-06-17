.class public Lcom/facebook/GraphRequest;
.super Ljava/lang/Object;
.source "GraphRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;,
        Lcom/facebook/GraphRequest$GraphJSONObjectCallback;,
        Lcom/facebook/GraphRequest$GraphJSONArrayCallback;,
        Lcom/facebook/GraphRequest$OnProgressCallback;,
        Lcom/facebook/GraphRequest$Callback;,
        Lcom/facebook/GraphRequest$Serializer;,
        Lcom/facebook/GraphRequest$KeyValueSerializer;,
        Lcom/facebook/GraphRequest$Attachment;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANGUAGE_HEADER:Ljava/lang/String; = "Accept-Language"

.field public static final ACCESS_TOKEN_PARAM:Ljava/lang/String; = "access_token"

.field private static final ATTACHED_FILES_PARAM:Ljava/lang/String; = "attached_files"

.field private static final ATTACHMENT_FILENAME_PREFIX:Ljava/lang/String; = "file"

.field private static final BATCH_APP_ID_PARAM:Ljava/lang/String; = "batch_app_id"

.field private static final BATCH_BODY_PARAM:Ljava/lang/String; = "body"

.field private static final BATCH_ENTRY_DEPENDS_ON_PARAM:Ljava/lang/String; = "depends_on"

.field private static final BATCH_ENTRY_NAME_PARAM:Ljava/lang/String; = "name"

.field private static final BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM:Ljava/lang/String; = "omit_response_on_success"

.field private static final BATCH_METHOD_PARAM:Ljava/lang/String; = "method"

.field private static final BATCH_PARAM:Ljava/lang/String; = "batch"

.field private static final BATCH_RELATIVE_URL_PARAM:Ljava/lang/String; = "relative_url"

.field private static final CAPTION_PARAM:Ljava/lang/String; = "caption"

.field private static final CONTENT_ENCODING_HEADER:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final DEBUG_KEY:Ljava/lang/String; = "__debug__"

.field private static final DEBUG_MESSAGES_KEY:Ljava/lang/String; = "messages"

.field private static final DEBUG_MESSAGE_KEY:Ljava/lang/String; = "message"

.field private static final DEBUG_MESSAGE_LINK_KEY:Ljava/lang/String; = "link"

.field private static final DEBUG_MESSAGE_TYPE_KEY:Ljava/lang/String; = "type"

.field private static final DEBUG_PARAM:Ljava/lang/String; = "debug"

.field private static final DEBUG_SEVERITY_INFO:Ljava/lang/String; = "info"

.field private static final DEBUG_SEVERITY_WARNING:Ljava/lang/String; = "warning"

.field public static final FIELDS_PARAM:Ljava/lang/String; = "fields"

.field private static final FORMAT_JSON:Ljava/lang/String; = "json"

.field private static final FORMAT_PARAM:Ljava/lang/String; = "format"

.field private static final GRAPH_PATH_FORMAT:Ljava/lang/String; = "%s/%s"

.field private static final ISO_8601_FORMAT_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field public static final MAXIMUM_BATCH_SIZE:I = 0x32

.field private static final ME:Ljava/lang/String; = "me"

.field private static final MIME_BOUNDARY:Ljava/lang/String;

.field private static final MY_FRIENDS:Ljava/lang/String; = "me/friends"

.field private static final MY_PHOTOS:Ljava/lang/String; = "me/photos"

.field private static final PICTURE_PARAM:Ljava/lang/String; = "picture"

.field private static final SDK_ANDROID:Ljava/lang/String; = "android"

.field private static final SDK_PARAM:Ljava/lang/String; = "sdk"

.field private static final SEARCH:Ljava/lang/String; = "search"

.field public static final TAG:Ljava/lang/String;

.field private static final USER_AGENT_BASE:Ljava/lang/String; = "FBAndroidSDK"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"

.field private static final VIDEOS_SUFFIX:Ljava/lang/String; = "/videos"

.field private static defaultBatchApplicationId:Ljava/lang/String;

.field private static volatile userAgent:Ljava/lang/String;

.field private static versionPattern:Ljava/util/regex/Pattern;


# instance fields
.field private accessToken:Lcom/facebook/AccessToken;

.field private batchEntryDependsOn:Ljava/lang/String;

.field private batchEntryName:Ljava/lang/String;

.field private batchEntryOmitResultOnSuccess:Z

.field private callback:Lcom/facebook/GraphRequest$Callback;

.field private graphObject:Lorg/json/JSONObject;

.field private graphPath:Ljava/lang/String;

.field private httpMethod:Lcom/facebook/HttpMethod;

.field private overriddenURL:Ljava/lang/String;

.field private parameters:Landroid/os/Bundle;

.field private skipClientToken:Z

.field private tag:Ljava/lang/Object;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 81
    const-class v0, Lcom/facebook/GraphRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->TAG:Ljava/lang/String;

    .line 131
    const-string v0, "^/?v\\d+\\.\\d+/(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->versionPattern:Ljava/util/regex/Pattern;

    .line 149
    nop

    .line 150
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 151
    .local v0, "chars":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v1, "buffer":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 154
    .local v2, "random":Ljava/security/SecureRandom;
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    .line 155
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2a
    if-ge v4, v3, :cond_39

    .line 156
    array-length v5, v0

    invoke-virtual {v2, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    aget-char v5, v0, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 158
    .end local v4    # "i":I
    :cond_39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/facebook/GraphRequest;->MIME_BOUNDARY:Ljava/lang/String;

    .line 159
    .end local v0    # "chars":[C
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v2    # "random":Ljava/security/SecureRandom;
    .end local v3    # "count":I
    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 165
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;)V
    .registers 9
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "graphPath"    # Ljava/lang/String;

    .line 178
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V
    .registers 11
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "graphPath"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "httpMethod"    # Lcom/facebook/HttpMethod;

    .line 202
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V
    .registers 13
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "graphPath"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "httpMethod"    # Lcom/facebook/HttpMethod;
    .param p5, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .line 229
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;)V
    .registers 8
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "graphPath"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "httpMethod"    # Lcom/facebook/HttpMethod;
    .param p5, "callback"    # Lcom/facebook/GraphRequest$Callback;
    .param p6, "version"    # Ljava/lang/String;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->skipClientToken:Z

    .line 258
    iput-object p1, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    .line 259
    iput-object p2, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    .line 260
    iput-object p6, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    .line 262
    invoke-virtual {p0, p5}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    .line 263
    invoke-virtual {p0, p4}, Lcom/facebook/GraphRequest;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    .line 265
    if-eqz p3, :cond_1f

    .line 266
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    goto :goto_26

    .line 268
    :cond_1f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    .line 271
    :goto_26
    iget-object v0, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    if-nez v0, :cond_30

    .line 272
    invoke-static {}, Lcom/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    .line 274
    :cond_30
    return-void
.end method

.method constructor <init>(Lcom/facebook/AccessToken;Ljava/net/URL;)V
    .registers 4
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "overriddenURL"    # Ljava/net/URL;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->skipClientToken:Z

    .line 277
    iput-object p1, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    .line 278
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    .line 280
    sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/GraphRequest;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    .line 282
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    .line 283
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "x0"    # Ljava/lang/Object;

    .line 74
    invoke-static {p0}, Lcom/facebook/GraphRequest;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Object;

    .line 74
    invoke-static {p0}, Lcom/facebook/GraphRequest;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 74
    sget-object v0, Lcom/facebook/GraphRequest;->MIME_BOUNDARY:Ljava/lang/String;

    return-object v0
.end method

.method private addCommonParameters()V
    .registers 6

    .line 1433
    iget-object v0, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    const-string v1, "access_token"

    if-eqz v0, :cond_1d

    .line 1434
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 1435
    iget-object v0, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1436
    .local v0, "token":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    .line 1437
    iget-object v2, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    .end local v0    # "token":Ljava/lang/String;
    goto :goto_61

    .line 1439
    :cond_1d
    iget-boolean v0, p0, Lcom/facebook/GraphRequest;->skipClientToken:Z

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 1440
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 1441
    .local v0, "appID":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getClientToken()Ljava/lang/String;

    move-result-object v2

    .line 1442
    .local v2, "clientToken":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5a

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 1443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1444
    .local v3, "accessToken":Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    .end local v3    # "accessToken":Ljava/lang/String;
    goto :goto_61

    .line 1446
    :cond_5a
    sget-object v1, Lcom/facebook/GraphRequest;->TAG:Ljava/lang/String;

    const-string v3, "Warning: Request without access token missing application ID or client token."

    invoke-static {v1, v3}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    .end local v0    # "appID":Ljava/lang/String;
    .end local v2    # "clientToken":Ljava/lang/String;
    :cond_61
    :goto_61
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "sdk"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    sget-object v0, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    const-string v1, "debug"

    if-eqz v0, :cond_85

    .line 1454
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v2, "info"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_94

    .line 1455
    :cond_85
    sget-object v0, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 1456
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v2, "warning"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    :cond_94
    :goto_94
    return-void
.end method

.method private appendParametersToBaseUrl(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 12
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "isBatch"    # Ljava/lang/Boolean;

    .line 1461
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    sget-object v1, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-ne v0, v1, :cond_d

    .line 1462
    return-object p1

    .line 1465
    :cond_d
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1467
    .local v0, "uriBuilder":Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1468
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1469
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1471
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_35

    .line 1472
    const-string v4, ""

    .line 1475
    :cond_35
    invoke-static {v4}, Lcom/facebook/GraphRequest;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 1476
    invoke-static {v4}, Lcom/facebook/GraphRequest;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1488
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1489
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_1f

    .line 1478
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_47
    iget-object v5, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    sget-object v6, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    if-eq v5, v6, :cond_4e

    goto :goto_1f

    .line 1479
    :cond_4e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1483
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1480
    const-string v7, "Unsupported parameter type for GET request: %s"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1491
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_6a
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 4
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1422
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1424
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-static {}, Lcom/facebook/GraphRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1428
    return-object v0
.end method

.method public static executeAndWait(Lcom/facebook/GraphRequest;)Lcom/facebook/GraphResponse;
    .registers 5
    .param p0, "request"    # Lcom/facebook/GraphRequest;

    .line 1105
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/facebook/GraphRequest;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/facebook/GraphRequest;->executeBatchAndWait([Lcom/facebook/GraphRequest;)Ljava/util/List;

    move-result-object v1

    .line 1107
    .local v1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    if-eqz v1, :cond_19

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v0, :cond_19

    .line 1111
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphResponse;

    return-object v0

    .line 1108
    :cond_19
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v2, "invalid state: expected a single response"

    invoke-direct {v0, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static executeBatchAndWait(Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .registers 6
    .param p0, "requests"    # Lcom/facebook/GraphRequestBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 1165
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1167
    const/4 v0, 0x0

    .line 1170
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :try_start_6
    invoke-static {p0}, Lcom/facebook/GraphRequest;->toHttpConnection(Lcom/facebook/GraphRequestBatch;)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_17
    .catchall {:try_start_6 .. :try_end_a} :catchall_15

    move-object v0, v1

    .line 1178
    nop

    .line 1180
    :try_start_c
    invoke-static {v0, p0}, Lcom/facebook/GraphRequest;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_15

    .line 1182
    .local v1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    nop

    .line 1184
    invoke-static {v0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 1182
    return-object v1

    .line 1184
    .end local v1    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    :catchall_15
    move-exception v1

    goto :goto_2f

    .line 1171
    :catch_17
    move-exception v1

    .line 1172
    .local v1, "ex":Ljava/lang/Exception;
    nop

    .line 1173
    :try_start_19
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getRequests()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/facebook/FacebookException;

    invoke-direct {v4, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    .line 1172
    invoke-static {v2, v3, v4}, Lcom/facebook/GraphResponse;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object v2

    .line 1176
    .local v2, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    invoke-static {p0, v2}, Lcom/facebook/GraphRequest;->runCallbacks(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_15

    .line 1177
    nop

    .line 1184
    invoke-static {v0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 1177
    return-object v2

    .line 1184
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    :goto_2f
    invoke-static {v0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 1185
    throw v1
.end method

.method public static executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 1146
    .local p0, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/GraphRequest;>;"
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAndWait(Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs executeBatchAndWait([Lcom/facebook/GraphRequest;)Ljava/util/List;
    .registers 2
    .param p0, "requests"    # [Lcom/facebook/GraphRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/GraphRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 1128
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1130
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static executeBatchAsync(Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;
    .registers 4
    .param p0, "requests"    # Lcom/facebook/GraphRequestBatch;

    .line 1238
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1240
    new-instance v0, Lcom/facebook/GraphRequestAsyncTask;

    invoke-direct {v0, p0}, Lcom/facebook/GraphRequestAsyncTask;-><init>(Lcom/facebook/GraphRequestBatch;)V

    .line 1241
    .local v0, "asyncTask":Lcom/facebook/GraphRequestAsyncTask;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/GraphRequestAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1242
    return-object v0
.end method

.method public static executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/GraphRequestAsyncTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Lcom/facebook/GraphRequestAsyncTask;"
        }
    .end annotation

    .line 1220
    .local p0, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/GraphRequest;>;"
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAsync(Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static varargs executeBatchAsync([Lcom/facebook/GraphRequest;)Lcom/facebook/GraphRequestAsyncTask;
    .registers 2
    .param p0, "requests"    # [Lcom/facebook/GraphRequest;

    .line 1201
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1203
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .registers 9
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "requests"    # Lcom/facebook/GraphRequestBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 1282
    invoke-static {p0, p1}, Lcom/facebook/GraphResponse;->fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    .line 1284
    .local v0, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    invoke-static {p0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 1286
    invoke-virtual {p1}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v1

    .line 1287
    .local v1, "numRequests":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_1c

    .line 1295
    invoke-static {p1, v0}, Lcom/facebook/GraphRequest;->runCallbacks(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V

    .line 1298
    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessTokenManager;->extendAccessTokenIfNeeded()V

    .line 1300
    return-object v0

    .line 1288
    :cond_1c
    new-instance v2, Lcom/facebook/FacebookException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1291
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 1292
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1289
    const-string v5, "Received %d responses while expecting %d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 1262
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/GraphRequest;>;"
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p1}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/facebook/GraphRequest;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;
    .registers 6
    .param p0, "callbackHandler"    # Landroid/os/Handler;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # Lcom/facebook/GraphRequestBatch;

    .line 1346
    const-string v0, "connection"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1348
    new-instance v0, Lcom/facebook/GraphRequestAsyncTask;

    invoke-direct {v0, p1, p2}, Lcom/facebook/GraphRequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)V

    .line 1349
    .local v0, "asyncTask":Lcom/facebook/GraphRequestAsyncTask;
    invoke-virtual {p2, p0}, Lcom/facebook/GraphRequestBatch;->setCallbackHandler(Landroid/os/Handler;)V

    .line 1350
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/GraphRequestAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1351
    return-object v0
.end method

.method public static executeConnectionAsync(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;
    .registers 3
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "requests"    # Lcom/facebook/GraphRequestBatch;

    .line 1321
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/facebook/GraphRequest;->executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private static getBatchAppId(Lcom/facebook/GraphRequestBatch;)Ljava/lang/String;
    .registers 5
    .param p0, "batch"    # Lcom/facebook/GraphRequestBatch;

    .line 1983
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1984
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1987
    :cond_f
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequest;

    .line 1988
    .local v1, "request":Lcom/facebook/GraphRequest;
    iget-object v2, v1, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    .line 1989
    .local v2, "accessToken":Lcom/facebook/AccessToken;
    if-eqz v2, :cond_2a

    .line 1990
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    .line 1991
    .local v3, "applicationId":Ljava/lang/String;
    if-eqz v3, :cond_2a

    .line 1992
    return-object v3

    .line 1995
    .end local v1    # "request":Lcom/facebook/GraphRequest;
    .end local v2    # "accessToken":Lcom/facebook/AccessToken;
    .end local v3    # "applicationId":Ljava/lang/String;
    :cond_2a
    goto :goto_13

    .line 1996
    :cond_2b
    sget-object v0, Lcom/facebook/GraphRequest;->defaultBatchApplicationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1997
    sget-object v0, Lcom/facebook/GraphRequest;->defaultBatchApplicationId:Ljava/lang/String;

    return-object v0

    .line 1999
    :cond_36
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getDefaultBatchApplicationId()Ljava/lang/String;
    .registers 1

    .line 888
    sget-object v0, Lcom/facebook/GraphRequest;->defaultBatchApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method private static getDefaultPhotoPathIfNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "graphPath"    # Ljava/lang/String;

    .line 1417
    if-nez p0, :cond_5

    const-string v0, "me/photos"

    goto :goto_6

    :cond_5
    move-object v0, p0

    :goto_6
    return-object v0
.end method

.method private getGraphPathWithVersion()Ljava/lang/String;
    .registers 5

    .line 1527
    sget-object v0, Lcom/facebook/GraphRequest;->versionPattern:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1528
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1529
    iget-object v1, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    return-object v1

    .line 1531
    :cond_11
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "%s/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getMimeContentType()Ljava/lang/String;
    .registers 3

    .line 1959
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/facebook/GraphRequest;->MIME_BOUNDARY:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "multipart/form-data; boundary=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserAgent()Ljava/lang/String;
    .registers 6

    .line 1965
    sget-object v0, Lcom/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_35

    .line 1966
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FBAndroidSDK"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "4.42.0"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%s.%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    .line 1969
    invoke-static {}, Lcom/facebook/internal/InternalSettings;->getCustomUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 1970
    .local v1, "customUserAgent":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 1971
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v5, Lcom/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    aput-object v5, v0, v3

    aput-object v1, v0, v4

    const-string v3, "%s/%s"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    .line 1979
    .end local v1    # "customUserAgent":Ljava/lang/String;
    :cond_35
    sget-object v0, Lcom/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method private static hasOnProgressCallbacks(Lcom/facebook/GraphRequestBatch;)Z
    .registers 5
    .param p0, "requests"    # Lcom/facebook/GraphRequestBatch;

    .line 1619
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequestBatch$Callback;

    .line 1620
    .local v1, "callback":Lcom/facebook/GraphRequestBatch$Callback;
    instance-of v3, v1, Lcom/facebook/GraphRequestBatch$OnProgressCallback;

    if-eqz v3, :cond_1a

    .line 1621
    return v2

    .line 1623
    .end local v1    # "callback":Lcom/facebook/GraphRequestBatch$Callback;
    :cond_1a
    goto :goto_8

    .line 1625
    :cond_1b
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequest;

    .line 1626
    .local v1, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getCallback()Lcom/facebook/GraphRequest$Callback;

    move-result-object v3

    instance-of v3, v3, Lcom/facebook/GraphRequest$OnProgressCallback;

    if-eqz v3, :cond_34

    .line 1627
    return v2

    .line 1629
    .end local v1    # "request":Lcom/facebook/GraphRequest;
    :cond_34
    goto :goto_1f

    .line 1631
    :cond_35
    const/4 v0, 0x0

    return v0
.end method

.method private static isGzipCompressible(Lcom/facebook/GraphRequestBatch;)Z
    .registers 7
    .param p0, "requests"    # Lcom/facebook/GraphRequestBatch;

    .line 1646
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequest;

    .line 1647
    .local v1, "request":Lcom/facebook/GraphRequest;
    iget-object v2, v1, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1648
    .local v3, "key":Ljava/lang/String;
    iget-object v4, v1, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1649
    .local v4, "value":Ljava/lang/Object;
    invoke-static {v4}, Lcom/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1650
    const/4 v0, 0x0

    return v0

    .line 1652
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_34
    goto :goto_1a

    .line 1653
    .end local v1    # "request":Lcom/facebook/GraphRequest;
    :cond_35
    goto :goto_4

    .line 1654
    :cond_36
    const/4 v0, 0x1

    return v0
.end method

.method private static isMeRequest(Ljava/lang/String;)Z
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 1809
    sget-object v0, Lcom/facebook/GraphRequest;->versionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1810
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    .line 1812
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 1814
    :cond_11
    const-string v1, "me/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "/me/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_24

    .line 1817
    :cond_22
    const/4 v1, 0x0

    return v1

    .line 1815
    :cond_24
    :goto_24
    return v2
.end method

.method private static isSupportedAttachmentType(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 2003
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_17

    instance-of v0, p0, [B

    if-nez v0, :cond_17

    instance-of v0, p0, Landroid/net/Uri;

    if-nez v0, :cond_17

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_17

    instance-of v0, p0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method private static isSupportedParameterType(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 2011
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_13

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_13

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_13

    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public static newCustomAudienceThirdPartyIdRequest(Lcom/facebook/AccessToken;Landroid/content/Context;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 4
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .line 685
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/facebook/GraphRequest;->newCustomAudienceThirdPartyIdRequest(Lcom/facebook/AccessToken;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    return-object v0
.end method

.method public static newCustomAudienceThirdPartyIdRequest(Lcom/facebook/AccessToken;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 14
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .line 605
    if-nez p2, :cond_8

    if-eqz p0, :cond_8

    .line 606
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object p2

    .line 609
    :cond_8
    if-nez p2, :cond_e

    .line 610
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 613
    :cond_e
    if-eqz p2, :cond_78

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/custom_audience_third_party_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "endpoint":Ljava/lang/String;
    nop

    .line 619
    invoke-static {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v7

    .line 620
    .local v7, "attributionIdentifiers":Lcom/facebook/internal/AttributionIdentifiers;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v8, v1

    .line 622
    .local v8, "parameters":Landroid/os/Bundle;
    if-nez p0, :cond_56

    .line 623
    if-eqz v7, :cond_4e

    .line 631
    invoke-virtual {v7}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 632
    invoke-virtual {v7}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v1

    goto :goto_41

    .line 633
    :cond_3d
    invoke-virtual {v7}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v1

    :goto_41
    nop

    .line 634
    .local v1, "udid":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 635
    const-string v2, "udid"

    invoke-virtual {v8, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    .line 624
    .end local v1    # "udid":Ljava/lang/String;
    :cond_4e
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "There is no access token and attribution identifiers could not be retrieved"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 641
    :cond_56
    :goto_56
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_64

    if-eqz v7, :cond_6b

    .line 642
    invoke-virtual {v7}, Lcom/facebook/internal/AttributionIdentifiers;->isTrackingLimited()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 643
    :cond_64
    const-string v1, "limit_event_usage"

    const-string v2, "1"

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_6b
    new-instance v9, Lcom/facebook/GraphRequest;

    sget-object v5, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-object v4, v8

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v9

    .line 614
    .end local v0    # "endpoint":Ljava/lang/String;
    .end local v7    # "attributionIdentifiers":Lcom/facebook/internal/AttributionIdentifiers;
    .end local v8    # "parameters":Landroid/os/Bundle;
    :cond_78
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Facebook App ID cannot be determined"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newDeleteObjectRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 10
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .line 298
    new-instance v6, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v6
.end method

.method public static newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 10
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .line 386
    new-instance v6, Lcom/facebook/GraphRequest;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v6
.end method

.method public static newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;
    .registers 9
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "callback"    # Lcom/facebook/GraphRequest$GraphJSONObjectCallback;

    .line 312
    new-instance v5, Lcom/facebook/GraphRequest$1;

    invoke-direct {v5, p1}, Lcom/facebook/GraphRequest$1;-><init>(Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)V

    .line 320
    .local v5, "wrapper":Lcom/facebook/GraphRequest$Callback;
    new-instance v6, Lcom/facebook/GraphRequest;

    const-string v2, "me"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v6
.end method

.method public static newMyFriendsRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)Lcom/facebook/GraphRequest;
    .registers 9
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "callback"    # Lcom/facebook/GraphRequest$GraphJSONArrayCallback;

    .line 360
    new-instance v5, Lcom/facebook/GraphRequest$2;

    invoke-direct {v5, p1}, Lcom/facebook/GraphRequest$2;-><init>(Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)V

    .line 370
    .local v5, "wrapper":Lcom/facebook/GraphRequest$Callback;
    new-instance v6, Lcom/facebook/GraphRequest;

    const-string v2, "me/friends"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v6
.end method

.method public static newPlacesSearchRequest(Lcom/facebook/AccessToken;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)Lcom/facebook/GraphRequest;
    .registers 14
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "radiusInMeters"    # I
    .param p3, "resultsLimit"    # I
    .param p4, "searchText"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/facebook/GraphRequest$GraphJSONArrayCallback;

    .line 412
    if-nez p1, :cond_11

    invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    .line 413
    :cond_9
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Either location or searchText must be specified."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_11
    :goto_11
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 417
    .local v0, "parameters":Landroid/os/Bundle;
    const-string v1, "type"

    const-string v2, "place"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v1, "limit"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 419
    if-eqz p1, :cond_50

    .line 420
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 424
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 425
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    .line 421
    const-string v3, "%f,%f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 420
    const-string v2, "center"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v1, "distance"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 428
    :cond_50
    invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 429
    const-string v1, "q"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_5b
    new-instance v7, Lcom/facebook/GraphRequest$3;

    invoke-direct {v7, p5}, Lcom/facebook/GraphRequest$3;-><init>(Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)V

    .line 443
    .local v7, "wrapper":Lcom/facebook/GraphRequest$Callback;
    new-instance v1, Lcom/facebook/GraphRequest;

    sget-object v6, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    const-string v4, "search"

    move-object v2, v1

    move-object v3, p0

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v1
.end method

.method public static newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 11
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "graphObject"    # Lorg/json/JSONObject;
    .param p3, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .line 339
    new-instance v6, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 345
    .local v0, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v0, p2}, Lcom/facebook/GraphRequest;->setGraphObject(Lorg/json/JSONObject;)V

    .line 346
    return-object v0
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 14
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/graphics/Bitmap;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .line 466
    invoke-static {p1}, Lcom/facebook/GraphRequest;->getDefaultPhotoPathIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 467
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    .line 468
    .local v6, "parameters":Landroid/os/Bundle;
    if-eqz p4, :cond_f

    .line 469
    invoke-virtual {v6, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 471
    :cond_f
    const-string v0, "picture"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 472
    if-eqz p3, :cond_21

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 473
    const-string v0, "caption"

    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_21
    new-instance v7, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, v6

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v7
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 14
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "callback"    # Lcom/facebook/GraphRequest$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 538
    invoke-static {p1}, Lcom/facebook/GraphRequest;->getDefaultPhotoPathIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 539
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isFileUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 540
    new-instance v2, Ljava/io/File;

    .line 543
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 540
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/facebook/GraphRequest;->newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    return-object v0

    .line 547
    :cond_1d
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isContentUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 551
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    .line 552
    .local v6, "parameters":Landroid/os/Bundle;
    if-eqz p4, :cond_2e

    .line 553
    invoke-virtual {v6, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 555
    :cond_2e
    const-string v0, "picture"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 557
    if-eqz p3, :cond_40

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 558
    const-string v0, "caption"

    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_40
    new-instance v7, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, v6

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v7

    .line 548
    .end local v6    # "parameters":Landroid/os/Bundle;
    :cond_4d
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "The photo Uri must be either a file:// or content:// Uri"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 15
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "callback"    # Lcom/facebook/GraphRequest$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 501
    invoke-static {p1}, Lcom/facebook/GraphRequest;->getDefaultPhotoPathIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 502
    nop

    .line 503
    const/high16 v0, 0x10000000

    invoke-static {p2, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 504
    .local v6, "descriptor":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 505
    .local v7, "parameters":Landroid/os/Bundle;
    if-eqz p4, :cond_16

    .line 506
    invoke-virtual {v7, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 508
    :cond_16
    const-string v0, "picture"

    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 509
    if-eqz p3, :cond_28

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 510
    const-string v0, "caption"

    invoke-virtual {v7, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_28
    new-instance v8, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v8
.end method

.method private static parameterToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 2016
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2017
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2018
    :cond_8
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_2b

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_11

    goto :goto_2b

    .line 2020
    :cond_11
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_23

    .line 2021
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2023
    .local v0, "iso8601DateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2025
    .end local v0    # "iso8601DateFormat":Ljava/text/SimpleDateFormat;
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported parameter type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2019
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static processGraphObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$KeyValueSerializer;)V
    .registers 10
    .param p0, "graphObject"    # Lorg/json/JSONObject;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "serializer"    # Lcom/facebook/GraphRequest$KeyValueSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1831
    const/4 v0, 0x0

    .line 1832
    .local v0, "isOGAction":Z
    invoke-static {p1}, Lcom/facebook/GraphRequest;->isMeRequest(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_21

    .line 1833
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1834
    .local v1, "colonLocation":I
    const-string v4, "?"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1835
    .local v4, "questionMarkLocation":I
    const/4 v5, 0x3

    if-le v1, v5, :cond_1f

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1d

    if-ge v1, v4, :cond_1f

    :cond_1d
    const/4 v5, 0x1

    goto :goto_20

    :cond_1f
    const/4 v5, 0x0

    :goto_20
    move v0, v5

    .line 1839
    .end local v1    # "colonLocation":I
    .end local v4    # "questionMarkLocation":I
    :cond_21
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1840
    .local v1, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 1841
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1842
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1843
    .local v5, "value":Ljava/lang/Object;
    if-eqz v0, :cond_41

    const-string v6, "image"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    const/4 v6, 0x1

    goto :goto_42

    :cond_41
    const/4 v6, 0x0

    .line 1844
    .local v6, "passByValue":Z
    :goto_42
    invoke-static {v4, v5, p2, v6}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    .line 1845
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "passByValue":Z
    goto :goto_25

    .line 1846
    :cond_46
    return-void
.end method

.method private static processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V
    .registers 14
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "serializer"    # Lcom/facebook/GraphRequest$KeyValueSerializer;
    .param p3, "passByValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1854
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1856
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_6c

    .line 1857
    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    .line 1858
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz p3, :cond_3a

    .line 1861
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 1862
    .local v5, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 1863
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1864
    .local v6, "propertyName":Ljava/lang/String;
    new-array v7, v3, [Ljava/lang/Object;

    aput-object p0, v7, v2

    aput-object v6, v7, v4

    const-string v8, "%s[%s]"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1865
    .local v7, "subKey":Ljava/lang/String;
    nop

    .line 1867
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 1865
    invoke-static {v7, v8, p2, p3}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    .line 1870
    .end local v6    # "propertyName":Ljava/lang/String;
    .end local v7    # "subKey":Ljava/lang/String;
    goto :goto_18

    .line 1871
    .end local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_39
    goto :goto_6b

    .line 1874
    :cond_3a
    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1875
    nop

    .line 1877
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1875
    invoke-static {p0, v2, p2, p3}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto :goto_6b

    .line 1880
    :cond_4b
    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 1881
    nop

    .line 1883
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1881
    invoke-static {p0, v2, p2, p3}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto :goto_6b

    .line 1886
    :cond_5c
    const-string v2, "fbsdk:create_object"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1887
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2, p3}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    .line 1890
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_6b
    :goto_6b
    goto :goto_d7

    :cond_6c
    const-class v1, Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 1891
    move-object v1, p1

    check-cast v1, Lorg/json/JSONArray;

    .line 1892
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 1893
    .local v5, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7c
    if-ge v6, v5, :cond_9a

    .line 1894
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v8, v3, [Ljava/lang/Object;

    aput-object p0, v8, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "%s[%d]"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1895
    .restart local v7    # "subKey":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v8

    :try_start_94
    invoke-static {v7, v8, p2, p3}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_d8

    .line 1893
    .end local v7    # "subKey":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_7c

    .line 1897
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "length":I
    .end local v6    # "i":I
    :cond_9a
    goto :goto_d7

    :cond_9b
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_d0

    const-class v1, Ljava/lang/Number;

    .line 1898
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_d0

    const-class v1, Ljava/lang/Boolean;

    .line 1899
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b4

    goto :goto_d0

    .line 1901
    :cond_b4
    const-class v1, Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 1902
    move-object v1, p1

    check-cast v1, Ljava/util/Date;

    .line 1909
    .local v1, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1912
    .local v2, "iso8601DateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p0, v3}, Lcom/facebook/GraphRequest$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7

    .line 1900
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "iso8601DateFormat":Ljava/text/SimpleDateFormat;
    :cond_d0
    :goto_d0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p0, v1}, Lcom/facebook/GraphRequest$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    :cond_d7
    :goto_d7
    return-void

    .line 1895
    .end local v0    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p0    # "key":Ljava/lang/String;
    .end local p1    # "value":Ljava/lang/Object;
    .end local p2    # "serializer":Lcom/facebook/GraphRequest$KeyValueSerializer;
    .end local p3    # "passByValue":Z
    :catchall_d8
    move-exception p0

    goto :goto_db

    :goto_da
    throw p0

    :goto_db
    goto :goto_da
.end method

.method private static processRequest(Lcom/facebook/GraphRequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    .registers 14
    .param p0, "requests"    # Lcom/facebook/GraphRequestBatch;
    .param p1, "logger"    # Lcom/facebook/internal/Logger;
    .param p2, "numRequests"    # I
    .param p3, "url"    # Ljava/net/URL;
    .param p4, "outputStream"    # Ljava/io/OutputStream;
    .param p5, "shouldUseGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1761
    new-instance v0, Lcom/facebook/GraphRequest$Serializer;

    invoke-direct {v0, p4, p1, p5}, Lcom/facebook/GraphRequest$Serializer;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/Logger;Z)V

    .line 1763
    .local v0, "serializer":Lcom/facebook/GraphRequest$Serializer;
    const-string v1, "  Attachments:\n"

    const/4 v2, 0x1

    if-ne p2, v2, :cond_5f

    .line 1764
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 1766
    .local v2, "request":Lcom/facebook/GraphRequest;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1767
    .local v3, "attachments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/GraphRequest$Attachment;>;"
    iget-object v4, v2, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1768
    .local v5, "key":Ljava/lang/String;
    iget-object v6, v2, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1769
    .local v6, "value":Ljava/lang/Object;
    invoke-static {v6}, Lcom/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 1770
    new-instance v7, Lcom/facebook/GraphRequest$Attachment;

    invoke-direct {v7, v2, v6}, Lcom/facebook/GraphRequest$Attachment;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_3e
    goto :goto_1e

    .line 1774
    :cond_3f
    if-eqz p1, :cond_46

    .line 1775
    const-string v4, "  Parameters:\n"

    invoke-virtual {p1, v4}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1777
    :cond_46
    iget-object v4, v2, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-static {v4, v0, v2}, Lcom/facebook/GraphRequest;->serializeParameters(Landroid/os/Bundle;Lcom/facebook/GraphRequest$Serializer;Lcom/facebook/GraphRequest;)V

    .line 1779
    if-eqz p1, :cond_50

    .line 1780
    invoke-virtual {p1, v1}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1782
    :cond_50
    invoke-static {v3, v0}, Lcom/facebook/GraphRequest;->serializeAttachments(Ljava/util/Map;Lcom/facebook/GraphRequest$Serializer;)V

    .line 1784
    iget-object v1, v2, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    if-eqz v1, :cond_5e

    .line 1785
    invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcom/facebook/GraphRequest;->processGraphObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$KeyValueSerializer;)V

    .line 1787
    .end local v2    # "request":Lcom/facebook/GraphRequest;
    .end local v3    # "attachments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/GraphRequest$Attachment;>;"
    :cond_5e
    goto :goto_7e

    .line 1788
    :cond_5f
    invoke-static {p0}, Lcom/facebook/GraphRequest;->getBatchAppId(Lcom/facebook/GraphRequestBatch;)Ljava/lang/String;

    move-result-object v2

    .line 1789
    .local v2, "batchAppID":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7f

    .line 1794
    const-string v3, "batch_app_id"

    invoke-virtual {v0, v3, v2}, Lcom/facebook/GraphRequest$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1799
    .restart local v3    # "attachments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/GraphRequest$Attachment;>;"
    invoke-static {v0, p0, v3}, Lcom/facebook/GraphRequest;->serializeRequestsAsJSON(Lcom/facebook/GraphRequest$Serializer;Ljava/util/Collection;Ljava/util/Map;)V

    .line 1801
    if-eqz p1, :cond_7b

    .line 1802
    invoke-virtual {p1, v1}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1804
    :cond_7b
    invoke-static {v3, v0}, Lcom/facebook/GraphRequest;->serializeAttachments(Ljava/util/Map;Lcom/facebook/GraphRequest$Serializer;)V

    .line 1806
    .end local v2    # "batchAppID":Ljava/lang/String;
    .end local v3    # "attachments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/GraphRequest$Attachment;>;"
    :goto_7e
    return-void

    .line 1790
    .restart local v2    # "batchAppID":Ljava/lang/String;
    :cond_7f
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v3, "App ID was not specified at the request or Settings."

    invoke-direct {v1, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    goto :goto_88

    :goto_87
    throw v1

    :goto_88
    goto :goto_87
.end method

.method static runCallbacks(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V
    .registers 9
    .param p0, "requests"    # Lcom/facebook/GraphRequestBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphRequestBatch;",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;)V"
        }
    .end annotation

    .line 1378
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v0

    .line 1382
    .local v0, "numRequests":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1383
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/facebook/GraphRequest$Callback;Lcom/facebook/GraphResponse;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_25

    .line 1384
    invoke-virtual {p0, v2}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 1385
    .local v3, "request":Lcom/facebook/GraphRequest;
    iget-object v4, v3, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    if-eqz v4, :cond_22

    .line 1386
    new-instance v4, Landroid/util/Pair;

    iget-object v5, v3, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    .line 1387
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1386
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    .end local v3    # "request":Lcom/facebook/GraphRequest;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1391
    .end local v2    # "i":I
    :cond_25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3d

    .line 1392
    new-instance v2, Lcom/facebook/GraphRequest$5;

    invoke-direct {v2, v1, p0}, Lcom/facebook/GraphRequest$5;-><init>(Ljava/util/ArrayList;Lcom/facebook/GraphRequestBatch;)V

    .line 1405
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1406
    .local v3, "callbackHandler":Landroid/os/Handler;
    if-nez v3, :cond_3a

    .line 1408
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_3d

    .line 1411
    :cond_3a
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1414
    .end local v2    # "runnable":Ljava/lang/Runnable;
    .end local v3    # "callbackHandler":Landroid/os/Handler;
    :cond_3d
    :goto_3d
    return-void
.end method

.method private static serializeAttachments(Ljava/util/Map;Lcom/facebook/GraphRequest$Serializer;)V
    .registers 8
    .param p1, "serializer"    # Lcom/facebook/GraphRequest$Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$Attachment;",
            ">;",
            "Lcom/facebook/GraphRequest$Serializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1935
    .local p0, "attachments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/GraphRequest$Attachment;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1937
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1938
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/GraphRequest$Attachment;

    .line 1939
    .local v3, "attachment":Lcom/facebook/GraphRequest$Attachment;
    invoke-virtual {v3}, Lcom/facebook/GraphRequest$Attachment;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1940
    invoke-virtual {v3}, Lcom/facebook/GraphRequest$Attachment;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lcom/facebook/GraphRequest$Attachment;->getRequest()Lcom/facebook/GraphRequest;

    move-result-object v5

    invoke-virtual {p1, v2, v4, v5}, Lcom/facebook/GraphRequest$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    .line 1942
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "attachment":Lcom/facebook/GraphRequest$Attachment;
    :cond_2f
    goto :goto_8

    .line 1943
    :cond_30
    return-void
.end method

.method private static serializeParameters(Landroid/os/Bundle;Lcom/facebook/GraphRequest$Serializer;Lcom/facebook/GraphRequest;)V
    .registers 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "serializer"    # Lcom/facebook/GraphRequest$Serializer;
    .param p2, "request"    # Lcom/facebook/GraphRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1921
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1923
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1924
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1925
    .local v3, "value":Ljava/lang/Object;
    invoke-static {v3}, Lcom/facebook/GraphRequest;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1926
    invoke-virtual {p1, v2, v3, p2}, Lcom/facebook/GraphRequest$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    .line 1928
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_21
    goto :goto_8

    .line 1929
    :cond_22
    return-void
.end method

.method private static serializeRequestsAsJSON(Lcom/facebook/GraphRequest$Serializer;Ljava/util/Collection;Ljava/util/Map;)V
    .registers 6
    .param p0, "serializer"    # Lcom/facebook/GraphRequest$Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphRequest$Serializer;",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$Attachment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1950
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/GraphRequest;>;"
    .local p2, "attachments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/GraphRequest$Attachment;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1951
    .local v0, "batch":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/GraphRequest;

    .line 1952
    .local v2, "request":Lcom/facebook/GraphRequest;
    invoke-direct {v2, v0, p2}, Lcom/facebook/GraphRequest;->serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V

    .line 1953
    .end local v2    # "request":Lcom/facebook/GraphRequest;
    goto :goto_9

    .line 1955
    :cond_19
    const-string v1, "batch"

    invoke-virtual {p0, v1, v0, p1}, Lcom/facebook/GraphRequest$Serializer;->writeRequestsAsJson(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V

    .line 1956
    return-void
.end method

.method private serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V
    .registers 14
    .param p1, "batch"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$Attachment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1556
    .local p2, "attachments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/GraphRequest$Attachment;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1558
    .local v0, "batchEntry":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/facebook/GraphRequest;->batchEntryName:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 1559
    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1560
    iget-boolean v1, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    const-string v2, "omit_response_on_success"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1564
    :cond_15
    iget-object v1, p0, Lcom/facebook/GraphRequest;->batchEntryDependsOn:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 1565
    const-string v2, "depends_on"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1568
    :cond_1e
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->getRelativeUrlForBatchedRequest()Ljava/lang/String;

    move-result-object v1

    .line 1569
    .local v1, "relativeURL":Ljava/lang/String;
    const-string v2, "relative_url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1570
    iget-object v2, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    const-string v3, "method"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1571
    iget-object v2, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    if-eqz v2, :cond_39

    .line 1572
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 1573
    .local v2, "token":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    .line 1577
    .end local v2    # "token":Ljava/lang/String;
    :cond_39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1578
    .local v2, "attachmentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1579
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1580
    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1581
    .local v6, "value":Ljava/lang/Object;
    invoke-static {v6}, Lcom/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_86

    .line 1583
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "file"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 1587
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1583
    const-string v9, "%s%d"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1588
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1589
    new-instance v8, Lcom/facebook/GraphRequest$Attachment;

    invoke-direct {v8, p0, v6}, Lcom/facebook/GraphRequest$Attachment;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-interface {p2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "name":Ljava/lang/String;
    :cond_86
    goto :goto_48

    .line 1593
    :cond_87
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_98

    .line 1594
    const-string v4, ","

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 1595
    .local v4, "attachmentNamesString":Ljava/lang/String;
    const-string v5, "attached_files"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1598
    .end local v4    # "attachmentNamesString":Ljava/lang/String;
    :cond_98
    iget-object v4, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    if-eqz v4, :cond_b6

    .line 1600
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1601
    .local v4, "keysAndValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    new-instance v6, Lcom/facebook/GraphRequest$6;

    invoke-direct {v6, p0, v4}, Lcom/facebook/GraphRequest$6;-><init>(Lcom/facebook/GraphRequest;Ljava/util/ArrayList;)V

    invoke-static {v5, v1, v6}, Lcom/facebook/GraphRequest;->processGraphObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$KeyValueSerializer;)V

    .line 1611
    const-string v5, "&"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 1612
    .local v5, "bodyValue":Ljava/lang/String;
    const-string v6, "body"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1615
    .end local v4    # "keysAndValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "bodyValue":Ljava/lang/String;
    :cond_b6
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1616
    return-void
.end method

.method static final serializeToUrlConnection(Lcom/facebook/GraphRequestBatch;Ljava/net/HttpURLConnection;)V
    .registers 24
    .param p0, "requests"    # Lcom/facebook/GraphRequestBatch;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1699
    move-object/from16 v1, p1

    new-instance v0, Lcom/facebook/internal/Logger;

    sget-object v2, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v3, "Request"

    invoke-direct {v0, v2, v3}, Lcom/facebook/internal/Logger;-><init>(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V

    move-object v2, v0

    .line 1701
    .local v2, "logger":Lcom/facebook/internal/Logger;
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v10

    .line 1702
    .local v10, "numRequests":I
    invoke-static/range {p0 .. p0}, Lcom/facebook/GraphRequest;->isGzipCompressible(Lcom/facebook/GraphRequestBatch;)Z

    move-result v11

    .line 1704
    .local v11, "shouldUseGzip":Z
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-ne v10, v3, :cond_21

    .line 1705
    move-object/from16 v9, p0

    invoke-virtual {v9, v0}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    goto :goto_25

    :cond_21
    move-object/from16 v9, p0

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    :goto_25
    move-object v14, v4

    .line 1706
    .local v14, "connectionHttpMethod":Lcom/facebook/HttpMethod;
    invoke-virtual {v14}, Lcom/facebook/HttpMethod;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1707
    invoke-static {v1, v11}, Lcom/facebook/GraphRequest;->setConnectionContentType(Ljava/net/HttpURLConnection;Z)V

    .line 1709
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v13

    .line 1710
    .local v13, "url":Ljava/net/URL;
    const-string v4, "Request:\n"

    invoke-virtual {v2, v4}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1711
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/GraphRequestBatch;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Id"

    invoke-virtual {v2, v5, v4}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1712
    const-string v4, "URL"

    invoke-virtual {v2, v4, v13}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1713
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Method"

    invoke-virtual {v2, v5, v4}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1714
    const-string v4, "User-Agent"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1715
    const-string v4, "Content-Type"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1717
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/GraphRequestBatch;->getTimeout()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1718
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/GraphRequestBatch;->getTimeout()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1722
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-ne v14, v4, :cond_75

    const/4 v0, 0x1

    :cond_75
    move/from16 v18, v0

    .line 1723
    .local v18, "isPost":Z
    if-nez v18, :cond_7d

    .line 1724
    invoke-virtual {v2}, Lcom/facebook/internal/Logger;->log()V

    .line 1725
    return-void

    .line 1728
    :cond_7d
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1730
    const/4 v3, 0x0

    .line 1732
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_81
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8a
    .catchall {:try_start_81 .. :try_end_8a} :catchall_f8

    move-object v3, v0

    .line 1733
    if-eqz v11, :cond_9c

    .line 1734
    :try_start_8d
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_95

    move-object/from16 v19, v0

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .local v0, "outputStream":Ljava/io/OutputStream;
    goto :goto_9e

    .line 1750
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catchall_95
    move-exception v0

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    goto/16 :goto_fd

    .line 1733
    :cond_9c
    move-object/from16 v19, v3

    .line 1737
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .local v19, "outputStream":Ljava/io/OutputStream;
    :goto_9e
    :try_start_9e
    invoke-static/range {p0 .. p0}, Lcom/facebook/GraphRequest;->hasOnProgressCallbacks(Lcom/facebook/GraphRequestBatch;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 1738
    const/4 v0, 0x0

    .line 1739
    .local v0, "countingStream":Lcom/facebook/ProgressNoopOutputStream;
    new-instance v7, Lcom/facebook/ProgressNoopOutputStream;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/GraphRequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/facebook/ProgressNoopOutputStream;-><init>(Landroid/os/Handler;)V

    .line 1740
    .end local v0    # "countingStream":Lcom/facebook/ProgressNoopOutputStream;
    .local v7, "countingStream":Lcom/facebook/ProgressNoopOutputStream;
    const/4 v4, 0x0

    move-object/from16 v3, p0

    move v5, v10

    move-object v6, v13

    move v8, v11

    invoke-static/range {v3 .. v8}, Lcom/facebook/GraphRequest;->processRequest(Lcom/facebook/GraphRequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V

    .line 1742
    invoke-virtual {v7}, Lcom/facebook/ProgressNoopOutputStream;->getMaxProgress()I

    move-result v0

    .line 1743
    .local v0, "max":I
    invoke-virtual {v7}, Lcom/facebook/ProgressNoopOutputStream;->getProgressMap()Ljava/util/Map;

    move-result-object v15

    .line 1745
    .local v15, "progressMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/GraphRequest;Lcom/facebook/RequestProgress;>;"
    new-instance v3, Lcom/facebook/ProgressOutputStream;
    :try_end_c1
    .catchall {:try_start_9e .. :try_end_c1} :catchall_f0

    int-to-long v4, v0

    move-object v12, v3

    move-object/from16 v20, v13

    .end local v13    # "url":Ljava/net/URL;
    .local v20, "url":Ljava/net/URL;
    move-object/from16 v13, v19

    move-object/from16 v21, v14

    .end local v14    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    .local v21, "connectionHttpMethod":Lcom/facebook/HttpMethod;
    move-object/from16 v14, p0

    move-wide/from16 v16, v4

    :try_start_cd
    invoke-direct/range {v12 .. v17}, Lcom/facebook/ProgressOutputStream;-><init>(Ljava/io/OutputStream;Lcom/facebook/GraphRequestBatch;Ljava/util/Map;J)V
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_d1

    .end local v19    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_db

    .line 1750
    .end local v0    # "max":I
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .end local v7    # "countingStream":Lcom/facebook/ProgressNoopOutputStream;
    .end local v15    # "progressMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/GraphRequest;Lcom/facebook/RequestProgress;>;"
    .restart local v19    # "outputStream":Ljava/io/OutputStream;
    :catchall_d1
    move-exception v0

    move-object/from16 v3, v19

    goto :goto_fd

    .line 1737
    .end local v20    # "url":Ljava/net/URL;
    .end local v21    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    .restart local v13    # "url":Ljava/net/URL;
    .restart local v14    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    :cond_d5
    move-object/from16 v20, v13

    move-object/from16 v21, v14

    .end local v13    # "url":Ljava/net/URL;
    .end local v14    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    .restart local v20    # "url":Ljava/net/URL;
    .restart local v21    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    move-object/from16 v3, v19

    .line 1748
    .end local v19    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :goto_db
    move-object/from16 v4, p0

    move-object v5, v2

    move v6, v10

    move-object/from16 v7, v20

    move-object v8, v3

    move v9, v11

    :try_start_e3
    invoke-static/range {v4 .. v9}, Lcom/facebook/GraphRequest;->processRequest(Lcom/facebook/GraphRequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_ee

    .line 1750
    nop

    .line 1751
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1755
    invoke-virtual {v2}, Lcom/facebook/internal/Logger;->log()V

    .line 1756
    return-void

    .line 1750
    :catchall_ee
    move-exception v0

    goto :goto_fd

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .end local v20    # "url":Ljava/net/URL;
    .end local v21    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    .restart local v13    # "url":Ljava/net/URL;
    .restart local v14    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    .restart local v19    # "outputStream":Ljava/io/OutputStream;
    :catchall_f0
    move-exception v0

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v3, v19

    .end local v13    # "url":Ljava/net/URL;
    .end local v14    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    .restart local v20    # "url":Ljava/net/URL;
    .restart local v21    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    goto :goto_fd

    .end local v19    # "outputStream":Ljava/io/OutputStream;
    .end local v20    # "url":Ljava/net/URL;
    .end local v21    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v13    # "url":Ljava/net/URL;
    .restart local v14    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    :catchall_f8
    move-exception v0

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    .end local v13    # "url":Ljava/net/URL;
    .end local v14    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    .restart local v20    # "url":Ljava/net/URL;
    .restart local v21    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    :goto_fd
    if-eqz v3, :cond_102

    .line 1751
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1753
    :cond_102
    throw v0
.end method

.method private static setConnectionContentType(Ljava/net/HttpURLConnection;Z)V
    .registers 4
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "shouldUseGzip"    # Z

    .line 1637
    const-string v0, "Content-Type"

    if-eqz p1, :cond_11

    .line 1638
    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 1641
    :cond_11
    invoke-static {}, Lcom/facebook/GraphRequest;->getMimeContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    :goto_18
    return-void
.end method

.method public static final setDefaultBatchApplicationId(Ljava/lang/String;)V
    .registers 1
    .param p0, "applicationId"    # Ljava/lang/String;

    .line 901
    sput-object p0, Lcom/facebook/GraphRequest;->defaultBatchApplicationId:Ljava/lang/String;

    .line 902
    return-void
.end method

.method static final shouldWarnOnMissingFieldsParam(Lcom/facebook/GraphRequest;)Z
    .registers 7
    .param p0, "request"    # Lcom/facebook/GraphRequest;

    .line 1658
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 1659
    .local v0, "version":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 1661
    return v2

    .line 1663
    :cond_c
    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1664
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1666
    :cond_18
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1668
    .local v1, "versionParts":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-lt v3, v5, :cond_2b

    aget-object v3, v1, v4

    .line 1669
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v5, :cond_3c

    :cond_2b
    aget-object v3, v1, v4

    .line 1670
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v5, :cond_3d

    aget-object v3, v1, v2

    .line 1671
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x4

    if-lt v3, v5, :cond_3d

    :cond_3c
    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    .line 1668
    :goto_3e
    return v2
.end method

.method public static toHttpConnection(Lcom/facebook/GraphRequestBatch;)Ljava/net/HttpURLConnection;
    .registers 6
    .param p0, "requests"    # Lcom/facebook/GraphRequestBatch;

    .line 1061
    invoke-static {p0}, Lcom/facebook/GraphRequest;->validateFieldsParamForGetRequests(Lcom/facebook/GraphRequestBatch;)V

    .line 1065
    :try_start_3
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 1067
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 1070
    .local v0, "request":Lcom/facebook/GraphRequest;
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 1071
    .local v0, "url":Ljava/net/URL;
    goto :goto_23

    .line 1074
    .end local v0    # "url":Ljava/net/URL;
    :cond_1a
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_23} :catch_3d

    .line 1078
    .restart local v0    # "url":Ljava/net/URL;
    :goto_23
    nop

    .line 1080
    const/4 v1, 0x0

    .line 1082
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_25
    invoke-static {v0}, Lcom/facebook/GraphRequest;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2

    move-object v1, v2

    .line 1084
    invoke-static {p0, v1}, Lcom/facebook/GraphRequest;->serializeToUrlConnection(Lcom/facebook/GraphRequestBatch;Ljava/net/HttpURLConnection;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2d} :catch_31
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2d} :catch_2f

    .line 1089
    nop

    .line 1091
    return-object v1

    .line 1085
    :catch_2f
    move-exception v2

    goto :goto_32

    :catch_31
    move-exception v2

    .line 1086
    .local v2, "e":Ljava/lang/Exception;
    :goto_32
    invoke-static {v1}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 1088
    new-instance v3, Lcom/facebook/FacebookException;

    const-string v4, "could not construct request body"

    invoke-direct {v3, v4, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1076
    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3d
    move-exception v0

    .line 1077
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "could not construct URL for request"

    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .line 1044
    .local p0, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/GraphRequest;>;"
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1046
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->toHttpConnection(Lcom/facebook/GraphRequestBatch;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toHttpConnection([Lcom/facebook/GraphRequest;)Ljava/net/HttpURLConnection;
    .registers 2
    .param p0, "requests"    # [Lcom/facebook/GraphRequest;

    .line 1029
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/GraphRequest;->toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method static final validateFieldsParamForGetRequests(Lcom/facebook/GraphRequestBatch;)V
    .registers 9
    .param p0, "requests"    # Lcom/facebook/GraphRequestBatch;

    .line 1676
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequest;

    .line 1677
    .local v1, "request":Lcom/facebook/GraphRequest;
    sget-object v2, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getHttpMethod()Lcom/facebook/HttpMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1678
    invoke-static {v1}, Lcom/facebook/GraphRequest;->shouldWarnOnMissingFieldsParam(Lcom/facebook/GraphRequest;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1679
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v2

    .line 1680
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "fields"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1681
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1682
    :cond_38
    sget-object v3, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const/4 v4, 0x5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1688
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getGraphPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1682
    const-string v6, "Request"

    const-string v7, "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter."

    invoke-static {v3, v4, v6, v7, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1692
    .end local v1    # "request":Lcom/facebook/GraphRequest;
    .end local v2    # "params":Landroid/os/Bundle;
    :cond_4c
    goto :goto_4

    .line 1693
    :cond_4d
    return-void
.end method


# virtual methods
.method public final executeAndWait()Lcom/facebook/GraphResponse;
    .registers 2

    .line 999
    invoke-static {p0}, Lcom/facebook/GraphRequest;->executeAndWait(Lcom/facebook/GraphRequest;)Lcom/facebook/GraphResponse;

    move-result-object v0

    return-object v0
.end method

.method public final executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    .registers 3

    .line 1014
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAsync([Lcom/facebook/GraphRequest;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final getAccessToken()Lcom/facebook/AccessToken;
    .registers 2

    .line 797
    iget-object v0, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method public final getBatchEntryDependsOn()Ljava/lang/String;
    .registers 2

    .line 839
    iget-object v0, p0, Lcom/facebook/GraphRequest;->batchEntryDependsOn:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchEntryName()Ljava/lang/String;
    .registers 2

    .line 815
    iget-object v0, p0, Lcom/facebook/GraphRequest;->batchEntryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchEntryOmitResultOnSuccess()Z
    .registers 2

    .line 864
    iget-boolean v0, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    return v0
.end method

.method public final getCallback()Lcom/facebook/GraphRequest$Callback;
    .registers 2

    .line 910
    iget-object v0, p0, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    return-object v0
.end method

.method public final getGraphObject()Lorg/json/JSONObject;
    .registers 2

    .line 694
    iget-object v0, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getGraphPath()Ljava/lang/String;
    .registers 2

    .line 713
    iget-object v0, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpMethod()Lcom/facebook/HttpMethod;
    .registers 2

    .line 731
    iget-object v0, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    return-object v0
.end method

.method public final getParameters()Landroid/os/Bundle;
    .registers 2

    .line 779
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method final getRelativeUrlForBatchedRequest()Ljava/lang/String;
    .registers 8

    .line 1495
    iget-object v0, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    if-nez v0, :cond_3f

    .line 1499
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 1500
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/facebook/GraphRequest;->getGraphPathWithVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%s/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1501
    .local v1, "baseUrl":Ljava/lang/String;
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->addCommonParameters()V

    .line 1502
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/facebook/GraphRequest;->appendParametersToBaseUrl(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    .line 1503
    .local v2, "fullUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1504
    .local v5, "uri":Landroid/net/Uri;
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    invoke-virtual {v5}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    const-string v3, "%s?%s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1496
    .end local v1    # "baseUrl":Ljava/lang/String;
    .end local v2    # "fullUrl":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3f
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Can\'t override URL for a batch request"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getTag()Ljava/lang/Object;
    .registers 2

    .line 985
    iget-object v0, p0, Lcom/facebook/GraphRequest;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method final getUrlForSingleRequest()Ljava/lang/String;
    .registers 6

    .line 1508
    iget-object v0, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1509
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1513
    :cond_9
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->getHttpMethod()Lcom/facebook/HttpMethod;

    move-result-object v0

    sget-object v1, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 1515
    const-string v1, "/videos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1516
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphVideoUrlBase()Ljava/lang/String;

    move-result-object v0

    .local v0, "graphBaseUrlBase":Ljava/lang/String;
    goto :goto_26

    .line 1518
    .end local v0    # "graphBaseUrlBase":Ljava/lang/String;
    :cond_22
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v0

    .line 1520
    .restart local v0    # "graphBaseUrlBase":Ljava/lang/String;
    :goto_26
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/facebook/GraphRequest;->getGraphPathWithVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "%s/%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1522
    .local v1, "baseUrl":Ljava/lang/String;
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->addCommonParameters()V

    .line 1523
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/facebook/GraphRequest;->appendParametersToBaseUrl(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final getVersion()Ljava/lang/String;
    .registers 2

    .line 753
    iget-object v0, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccessToken(Lcom/facebook/AccessToken;)V
    .registers 2
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;

    .line 806
    iput-object p1, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    .line 807
    return-void
.end method

.method public final setBatchEntryDependsOn(Ljava/lang/String;)V
    .registers 2
    .param p1, "batchEntryDependsOn"    # Ljava/lang/String;

    .line 853
    iput-object p1, p0, Lcom/facebook/GraphRequest;->batchEntryDependsOn:Ljava/lang/String;

    .line 854
    return-void
.end method

.method public final setBatchEntryName(Ljava/lang/String;)V
    .registers 2
    .param p1, "batchEntryName"    # Ljava/lang/String;

    .line 829
    iput-object p1, p0, Lcom/facebook/GraphRequest;->batchEntryName:Ljava/lang/String;

    .line 830
    return-void
.end method

.method public final setBatchEntryOmitResultOnSuccess(Z)V
    .registers 2
    .param p1, "batchEntryOmitResultOnSuccess"    # Z

    .line 877
    iput-boolean p1, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    .line 878
    return-void
.end method

.method public final setCallback(Lcom/facebook/GraphRequest$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .line 920
    sget-object v0, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    .line 921
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_14

    .line 961
    :cond_11
    iput-object p1, p0, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    goto :goto_1c

    .line 922
    :cond_14
    :goto_14
    new-instance v0, Lcom/facebook/GraphRequest$4;

    invoke-direct {v0, p0, p1}, Lcom/facebook/GraphRequest$4;-><init>(Lcom/facebook/GraphRequest;Lcom/facebook/GraphRequest$Callback;)V

    .line 959
    .local v0, "wrapper":Lcom/facebook/GraphRequest$Callback;
    iput-object v0, p0, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    .line 960
    .end local v0    # "wrapper":Lcom/facebook/GraphRequest$Callback;
    nop

    .line 964
    :goto_1c
    return-void
.end method

.method public final setGraphObject(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "graphObject"    # Lorg/json/JSONObject;

    .line 704
    iput-object p1, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    .line 705
    return-void
.end method

.method public final setGraphPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "graphPath"    # Ljava/lang/String;

    .line 722
    iput-object p1, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    .line 723
    return-void
.end method

.method public final setHttpMethod(Lcom/facebook/HttpMethod;)V
    .registers 4
    .param p1, "httpMethod"    # Lcom/facebook/HttpMethod;

    .line 740
    iget-object v0, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 741
    :cond_9
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Can\'t change HTTP method on request with overridden URL."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_11
    :goto_11
    if-eqz p1, :cond_15

    move-object v0, p1

    goto :goto_17

    :cond_15
    sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    :goto_17
    iput-object v0, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    .line 744
    return-void
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "parameters"    # Landroid/os/Bundle;

    .line 788
    iput-object p1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    .line 789
    return-void
.end method

.method public final setSkipClientToken(Z)V
    .registers 2
    .param p1, "skipClientToken"    # Z

    .line 770
    iput-boolean p1, p0, Lcom/facebook/GraphRequest;->skipClientToken:Z

    .line 771
    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;

    .line 974
    iput-object p1, p0, Lcom/facebook/GraphRequest;->tag:Ljava/lang/Object;

    .line 975
    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "version"    # Ljava/lang/String;

    .line 763
    iput-object p1, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    .line 764
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1362
    const-string v1, "{Request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1363
    const-string v1, " accessToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    if-nez v1, :cond_17

    const-string v1, "null"

    .line 1364
    :cond_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1365
    const-string v1, ", graphPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    .line 1366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1367
    const-string v1, ", graphObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    .line 1368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1369
    const-string v1, ", httpMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    .line 1370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1371
    const-string v1, ", parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    .line 1372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1373
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1374
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1361
    return-object v0
.end method
