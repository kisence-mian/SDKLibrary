.class public final Lcom/facebook/internal/FacebookRequestErrorClassification;
.super Ljava/lang/Object;
.source "FacebookRequestErrorClassification.java"


# static fields
.field public static final EC_APP_NOT_INSTALLED:I = 0x19c

.field public static final EC_APP_TOO_MANY_CALLS:I = 0x4

.field public static final EC_INVALID_SESSION:I = 0x66

.field public static final EC_INVALID_TOKEN:I = 0xbe

.field public static final EC_RATE:I = 0x9

.field public static final EC_SERVICE_UNAVAILABLE:I = 0x2

.field public static final EC_TOO_MANY_USER_ACTION_CALLS:I = 0x155

.field public static final EC_USER_TOO_MANY_CALLS:I = 0x11

.field public static final ESC_APP_INACTIVE:I = 0x1ed

.field public static final ESC_APP_NOT_INSTALLED:I = 0x1ca

.field public static final KEY_LOGIN_RECOVERABLE:Ljava/lang/String; = "login_recoverable"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_OTHER:Ljava/lang/String; = "other"

.field public static final KEY_RECOVERY_MESSAGE:Ljava/lang/String; = "recovery_message"

.field public static final KEY_TRANSIENT:Ljava/lang/String; = "transient"

.field private static defaultInstance:Lcom/facebook/internal/FacebookRequestErrorClassification;


# instance fields
.field private final loginRecoverableErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final loginRecoverableRecoveryMessage:Ljava/lang/String;

.field private final otherErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final otherRecoveryMessage:Ljava/lang/String;

.field private final transientErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final transientRecoveryMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p4, "otherRecoveryMessage"    # Ljava/lang/String;
    .param p5, "transientRecoveryMessage"    # Ljava/lang/String;
    .param p6, "loginRecoverableRecoveryMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 72
    .local p1, "otherErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .local p2, "transientErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .local p3, "loginRecoverableErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherErrors:Ljava/util/Map;

    .line 74
    iput-object p2, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientErrors:Ljava/util/Map;

    .line 75
    iput-object p3, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableErrors:Ljava/util/Map;

    .line 76
    iput-object p4, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherRecoveryMessage:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientRecoveryMessage:Ljava/lang/String;

    .line 78
    iput-object p6, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableRecoveryMessage:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONArray;)Lcom/facebook/internal/FacebookRequestErrorClassification;
    .registers 16
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .line 201
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 202
    return-object v0

    .line 204
    :cond_4
    const/4 v1, 0x0

    .line 205
    .local v1, "otherErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    const/4 v2, 0x0

    .line 206
    .local v2, "transientErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    const/4 v3, 0x0

    .line 207
    .local v3, "loginRecoverableErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    const/4 v4, 0x0

    .line 208
    .local v4, "otherRecoveryMessage":Ljava/lang/String;
    const/4 v5, 0x0

    .line 209
    .local v5, "transientRecoveryMessage":Ljava/lang/String;
    const/4 v6, 0x0

    .line 211
    .local v6, "loginRecoverableRecoveryMessage":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_b
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_58

    .line 212
    invoke-virtual {p0, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 213
    .local v8, "definition":Lorg/json/JSONObject;
    if-nez v8, :cond_18

    .line 214
    goto :goto_55

    .line 216
    :cond_18
    const-string v9, "name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 217
    .local v9, "name":Ljava/lang/String;
    if-nez v9, :cond_21

    .line 218
    goto :goto_55

    .line 220
    :cond_21
    const-string v10, "other"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "recovery_message"

    if-eqz v10, :cond_34

    .line 221
    invoke-virtual {v8, v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-static {v8}, Lcom/facebook/internal/FacebookRequestErrorClassification;->parseJSONDefinition(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    goto :goto_55

    .line 223
    :cond_34
    const-string v10, "transient"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_45

    .line 224
    invoke-virtual {v8, v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 225
    invoke-static {v8}, Lcom/facebook/internal/FacebookRequestErrorClassification;->parseJSONDefinition(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    goto :goto_55

    .line 226
    :cond_45
    const-string v10, "login_recoverable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_55

    .line 227
    invoke-virtual {v8, v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-static {v8}, Lcom/facebook/internal/FacebookRequestErrorClassification;->parseJSONDefinition(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 211
    .end local v8    # "definition":Lorg/json/JSONObject;
    .end local v9    # "name":Ljava/lang/String;
    :cond_55
    :goto_55
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 231
    .end local v7    # "i":I
    :cond_58
    new-instance v0, Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-direct/range {v8 .. v14}, Lcom/facebook/internal/FacebookRequestErrorClassification;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized getDefaultErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;
    .registers 2

    const-class v0, Lcom/facebook/internal/FacebookRequestErrorClassification;

    monitor-enter v0

    .line 138
    :try_start_3
    sget-object v1, Lcom/facebook/internal/FacebookRequestErrorClassification;->defaultInstance:Lcom/facebook/internal/FacebookRequestErrorClassification;

    if-nez v1, :cond_d

    .line 139
    invoke-static {}, Lcom/facebook/internal/FacebookRequestErrorClassification;->getDefaultErrorClassificationImpl()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v1

    sput-object v1, Lcom/facebook/internal/FacebookRequestErrorClassification;->defaultInstance:Lcom/facebook/internal/FacebookRequestErrorClassification;

    .line 141
    :cond_d
    sget-object v1, Lcom/facebook/internal/FacebookRequestErrorClassification;->defaultInstance:Lcom/facebook/internal/FacebookRequestErrorClassification;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-object v1

    .line 137
    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getDefaultErrorClassificationImpl()Lcom/facebook/internal/FacebookRequestErrorClassification;
    .registers 8

    .line 145
    new-instance v2, Lcom/facebook/internal/FacebookRequestErrorClassification$1;

    invoke-direct {v2}, Lcom/facebook/internal/FacebookRequestErrorClassification$1;-><init>()V

    .line 153
    .local v2, "transientErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v3, Lcom/facebook/internal/FacebookRequestErrorClassification$2;

    invoke-direct {v3}, Lcom/facebook/internal/FacebookRequestErrorClassification$2;-><init>()V

    .line 159
    .local v3, "loginRecoverableErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v7, Lcom/facebook/internal/FacebookRequestErrorClassification;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/facebook/internal/FacebookRequestErrorClassification;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method private static parseJSONDefinition(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 11
    .param p0, "definition"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 169
    const-string v0, "items"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 170
    .local v0, "itemsArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_e

    .line 171
    const/4 v1, 0x0

    return-object v1

    .line 174
    :cond_e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v1, "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_60

    .line 176
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 177
    .local v3, "item":Lorg/json/JSONObject;
    if-nez v3, :cond_21

    .line 178
    goto :goto_5d

    .line 180
    :cond_21
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 181
    .local v4, "code":I
    if-nez v4, :cond_2a

    .line 182
    goto :goto_5d

    .line 184
    :cond_2a
    const/4 v5, 0x0

    .line 185
    .local v5, "subcodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string v6, "subcodes"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 186
    .local v6, "subcodesArray":Lorg/json/JSONArray;
    if-eqz v6, :cond_56

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_56

    .line 187
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move-object v5, v7

    .line 188
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_40
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_56

    .line 189
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optInt(I)I

    move-result v8

    .line 190
    .local v8, "subCode":I
    if-eqz v8, :cond_53

    .line 191
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v8    # "subCode":I
    :cond_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    .line 195
    .end local v7    # "j":I
    :cond_56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v4    # "code":I
    .end local v5    # "subcodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v6    # "subcodesArray":Lorg/json/JSONArray;
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 197
    .end local v2    # "i":I
    :cond_60
    return-object v1
.end method


# virtual methods
.method public classify(IIZ)Lcom/facebook/FacebookRequestError$Category;
    .registers 6
    .param p1, "errorCode"    # I
    .param p2, "errorSubCode"    # I
    .param p3, "isTransient"    # Z

    .line 110
    if-eqz p3, :cond_5

    .line 111
    sget-object v0, Lcom/facebook/FacebookRequestError$Category;->TRANSIENT:Lcom/facebook/FacebookRequestError$Category;

    return-object v0

    .line 114
    :cond_5
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherErrors:Ljava/util/Map;

    if-eqz v0, :cond_2e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 115
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherErrors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 116
    .local v0, "subCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2b

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 117
    :cond_2b
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    return-object v1

    .line 121
    .end local v0    # "subCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2e
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableErrors:Ljava/util/Map;

    if-eqz v0, :cond_57

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 122
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableErrors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 123
    .restart local v0    # "subCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_54

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 124
    :cond_54
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->LOGIN_RECOVERABLE:Lcom/facebook/FacebookRequestError$Category;

    return-object v1

    .line 128
    .end local v0    # "subCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_57
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientErrors:Ljava/util/Map;

    if-eqz v0, :cond_80

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 129
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientErrors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 130
    .restart local v0    # "subCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_7d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 131
    :cond_7d
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->TRANSIENT:Lcom/facebook/FacebookRequestError$Category;

    return-object v1

    .line 134
    .end local v0    # "subCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_80
    sget-object v0, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    return-object v0
.end method

.method public getLoginRecoverableErrors()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableErrors:Ljava/util/Map;

    return-object v0
.end method

.method public getOtherErrors()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherErrors:Ljava/util/Map;

    return-object v0
.end method

.method public getRecoveryMessage(Lcom/facebook/FacebookRequestError$Category;)Ljava/lang/String;
    .registers 4
    .param p1, "category"    # Lcom/facebook/FacebookRequestError$Category;

    .line 94
    sget-object v0, Lcom/facebook/internal/FacebookRequestErrorClassification$3;->$SwitchMap$com$facebook$FacebookRequestError$Category:[I

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 100
    :pswitch_d
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientRecoveryMessage:Ljava/lang/String;

    return-object v0

    .line 98
    :pswitch_10
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->loginRecoverableRecoveryMessage:Ljava/lang/String;

    return-object v0

    .line 96
    :pswitch_13
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->otherRecoveryMessage:Ljava/lang/String;

    return-object v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public getTransientErrors()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/facebook/internal/FacebookRequestErrorClassification;->transientErrors:Ljava/util/Map;

    return-object v0
.end method
