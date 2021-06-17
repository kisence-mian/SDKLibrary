.class Lcom/facebook/appevents/AppEvent;
.super Ljava/lang/Object;
.source "AppEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/AppEvent$SerializationProxyV2;,
        Lcom/facebook/appevents/AppEvent$SerializationProxyV1;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L

.field private static final validatedIdentifiers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final checksum:Ljava/lang/String;

.field private final inBackground:Z

.field private final isImplicit:Z

.field private final jsonObject:Lorg/json/JSONObject;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;)V
    .registers 9
    .param p1, "contextName"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "valueToSum"    # Ljava/lang/Double;
    .param p4, "parameters"    # Landroid/os/Bundle;
    .param p5, "isImplicitlyLogged"    # Z
    .param p6, "isInBackground"    # Z
    .param p7, "currentSessionId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static/range {p1 .. p7}, Lcom/facebook/appevents/AppEvent;->getJSONObjectForAppEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    .line 76
    iput-boolean p5, p0, Lcom/facebook/appevents/AppEvent;->isImplicit:Z

    .line 77
    iput-boolean p6, p0, Lcom/facebook/appevents/AppEvent;->inBackground:Z

    .line 78
    iput-object p2, p0, Lcom/facebook/appevents/AppEvent;->name:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lcom/facebook/appevents/AppEvent;->calculateChecksum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/AppEvent;->checksum:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZZLjava/lang/String;)V
    .registers 7
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "isImplicit"    # Z
    .param p3, "inBackground"    # Z
    .param p4, "checksum"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    .line 92
    iput-boolean p2, p0, Lcom/facebook/appevents/AppEvent;->isImplicit:Z

    .line 93
    const-string v1, "_eventName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/AppEvent;->name:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/facebook/appevents/AppEvent;->checksum:Ljava/lang/String;

    .line 95
    iput-boolean p3, p0, Lcom/facebook/appevents/AppEvent;->inBackground:Z

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/facebook/appevents/AppEvent$1;)V
    .registers 6
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/facebook/appevents/AppEvent$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/appevents/AppEvent;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method private calculateChecksum()Ljava/lang/String;
    .registers 7

    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_11

    .line 281
    iget-object v0, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEvent;->md5Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 283
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 285
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 287
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2a
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 290
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_36

    .line 292
    :cond_5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/appevents/AppEvent;->md5Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getJSONObjectForAppEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;)Lorg/json/JSONObject;
    .registers 14
    .param p0, "contextName"    # Ljava/lang/String;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "valueToSum"    # Ljava/lang/Double;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "isImplicitlyLogged"    # Z
    .param p5, "isInBackground"    # Z
    .param p6, "currentSessionId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 170
    invoke-static {p1}, Lcom/facebook/appevents/AppEvent;->validateIdentifier(Ljava/lang/String;)V

    .line 172
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 174
    .local v0, "eventObject":Lorg/json/JSONObject;
    const-string v1, "_eventName"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    invoke-static {p1}, Lcom/facebook/appevents/AppEvent;->md5Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_eventName_md5"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-string v3, "_logTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 177
    const-string v1, "_ui"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    if-eqz p6, :cond_2e

    .line 179
    const-string v1, "_session_id"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    :cond_2e
    if-eqz p2, :cond_39

    .line 183
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-string v3, "_valueToSum"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 186
    :cond_39
    const-string v1, "1"

    if-eqz p4, :cond_42

    .line 187
    const-string v2, "_implicitlyLogged"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    :cond_42
    if-eqz p5, :cond_49

    .line 191
    const-string v2, "_inBackground"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    :cond_49
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_8c

    .line 195
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 197
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/appevents/AppEvent;->validateIdentifier(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 200
    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_84

    instance-of v6, v5, Ljava/lang/Number;

    if-eqz v6, :cond_71

    goto :goto_84

    .line 201
    :cond_71
    new-instance v3, Lcom/facebook/FacebookException;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v1

    aput-object v4, v6, v2

    .line 202
    const-string v1, "Parameter value \'%s\' for key \'%s\' should be a string or a numeric type."

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 210
    :cond_84
    :goto_84
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    goto :goto_55

    .line 214
    :cond_8c
    if-nez p4, :cond_9f

    .line 215
    sget-object v3, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    new-array v2, v2, [Ljava/lang/Object;

    .line 216
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 215
    const-string v1, "AppEvents"

    const-string v4, "Created app event \'%s\'"

    invoke-static {v3, v1, v4, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :cond_9f
    return-object v0
.end method

.method private static md5Checksum(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "toHash"    # Ljava/lang/String;

    .line 300
    const-string v0, "Failed to generate checksum: "

    :try_start_2
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 301
    .local v1, "digest":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 302
    .local v2, "bytes":[B
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 303
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    move-object v2, v3

    .line 304
    invoke-static {v2}, Lcom/facebook/appevents/internal/AppEventUtility;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_1c} :catch_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_1c} :catch_1e

    .line 315
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "bytes":[B
    .local v0, "hash":Ljava/lang/String;
    nop

    .line 316
    return-object v0

    .line 311
    .end local v0    # "hash":Ljava/lang/String;
    :catch_1e
    move-exception v1

    .line 313
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 314
    const-string v0, "1"

    return-object v0

    .line 306
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_25
    move-exception v1

    .line 308
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 309
    const-string v0, "0"

    return-object v0
.end method

.method private static validateIdentifier(Ljava/lang/String;)V
    .registers 10
    .param p0, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .line 120
    const-string v0, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    .line 122
    .local v0, "regex":Ljava/lang/String;
    const/16 v1, 0x28

    .line 123
    .local v1, "MAX_IDENTIFIER_LENGTH":I
    const/16 v2, 0x28

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_46

    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_46

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v2, :cond_17

    goto :goto_46

    .line 139
    :cond_17
    sget-object v5, Lcom/facebook/appevents/AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    monitor-enter v5

    .line 140
    :try_start_1a
    invoke-virtual {v5, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 141
    .local v2, "alreadyValidated":Z
    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_43

    .line 143
    if-nez v2, :cond_42

    .line 144
    const-string v6, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    invoke-virtual {p0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 145
    monitor-enter v5

    .line 146
    :try_start_2a
    invoke-virtual {v5, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    monitor-exit v5

    goto :goto_42

    :catchall_2f
    move-exception v3

    monitor-exit v5
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_2f

    throw v3

    .line 149
    :cond_32
    new-instance v5, Lcom/facebook/FacebookException;

    const-string v6, "Skipping event named \'%s\' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    .line 150
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 159
    :cond_42
    :goto_42
    return-void

    .line 141
    .end local v2    # "alreadyValidated":Z
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v5
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v2

    .line 126
    :cond_46
    :goto_46
    if-nez p0, :cond_4a

    .line 127
    const-string p0, "<None Provided>"

    .line 129
    :cond_4a
    new-instance v5, Lcom/facebook/FacebookException;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v7, "Identifier \'%s\' must be less than %d characters"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v4

    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v3

    .line 130
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 8

    .line 264
    new-instance v6, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;

    iget-object v0, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/facebook/appevents/AppEvent;->isImplicit:Z

    iget-boolean v3, p0, Lcom/facebook/appevents/AppEvent;->inBackground:Z

    iget-object v4, p0, Lcom/facebook/appevents/AppEvent;->checksum:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/facebook/appevents/AppEvent$1;)V

    return-object v6
.end method


# virtual methods
.method public getIsImplicit()Z
    .registers 2

    .line 99
    iget-boolean v0, p0, Lcom/facebook/appevents/AppEvent;->isImplicit:Z

    return v0
.end method

.method public getJSONObject()Lorg/json/JSONObject;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/facebook/appevents/AppEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isChecksumValid()Z
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/facebook/appevents/AppEvent;->checksum:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 109
    const/4 v0, 0x1

    return v0

    .line 112
    :cond_6
    invoke-direct {p0}, Lcom/facebook/appevents/AppEvent;->calculateChecksum()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/appevents/AppEvent;->checksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 269
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    .line 271
    const-string v2, "_eventName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/facebook/appevents/AppEvent;->isImplicit:Z

    .line 272
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/facebook/appevents/AppEvent;->jsonObject:Lorg/json/JSONObject;

    .line 273
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 269
    const-string v1, "\"%s\", implicit: %b, json: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
