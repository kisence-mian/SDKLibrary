.class public Lcom/facebook/appevents/UserDataStore;
.super Ljava/lang/Object;
.source "UserDataStore.java"


# static fields
.field public static final CITY:Ljava/lang/String; = "ct"

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field public static final DATE_OF_BIRTH:Ljava/lang/String; = "db"

.field public static final EMAIL:Ljava/lang/String; = "em"

.field public static final FIRST_NAME:Ljava/lang/String; = "fn"

.field public static final GENDER:Ljava/lang/String; = "ge"

.field public static final LAST_NAME:Ljava/lang/String; = "ln"

.field public static final PHONE:Ljava/lang/String; = "ph"

.field public static final STATE:Ljava/lang/String; = "st"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_DATA_KEY:Ljava/lang/String; = "com.facebook.appevents.UserDataStore.userData"

.field public static final ZIP:Ljava/lang/String; = "zp"

.field private static hashedUserData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    const-class v0, Lcom/facebook/appevents/UserDataStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/UserDataStore;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static JsonStrToMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 264
    :cond_c
    :try_start_c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 266
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 267
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 268
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 269
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_2d} :catch_30

    .line 270
    nop

    .end local v3    # "key":Ljava/lang/String;
    goto :goto_1a

    .line 271
    :cond_2f
    return-object v0

    .line 272
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_30
    move-exception v0

    .line 273
    .local v0, "_e":Lorg/json/JSONException;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    return-object v1
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 43
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 43
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()V
    .registers 0

    .line 43
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->initAndWait()V

    return-void
.end method

.method static synthetic access$300(Landroid/os/Bundle;)V
    .registers 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .line 43
    invoke-static {p0}, Lcom/facebook/appevents/UserDataStore;->updateHashUserData(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 43
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->hashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500(Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/util/Map;

    .line 43
    invoke-static {p0}, Lcom/facebook/appevents/UserDataStore;->mapToJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Landroid/content/SharedPreferences;
    .registers 1

    .line 43
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static clear()V
    .registers 2

    .line 136
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getAnalyticsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/UserDataStore$2;

    invoke-direct {v1}, Lcom/facebook/appevents/UserDataStore$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method private static encryptData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_23

    .line 200
    :cond_a
    :try_start_a
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_10} :catch_21

    .line 203
    .local v0, "md":Ljava/security/MessageDigest;
    nop

    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 206
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/appevents/internal/AppEventUtility;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 201
    .end local v0    # "md":Ljava/security/MessageDigest;
    :catch_21
    move-exception v1

    .line 202
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    return-object v0

    .line 195
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_23
    :goto_23
    return-object v0
.end method

.method static getHashedUserData()Ljava/lang/String;
    .registers 2

    .line 150
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_12

    .line 151
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->TAG:Ljava/lang/String;

    const-string v1, "initStore should have been called before calling setUserID"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->initAndWait()V

    .line 155
    :cond_12
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->hashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lcom/facebook/appevents/UserDataStore;->mapToJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized initAndWait()V
    .registers 4

    const-class v0, Lcom/facebook/appevents/UserDataStore;

    monitor-enter v0

    .line 159
    :try_start_3
    sget-object v1, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_32

    if-eqz v1, :cond_d

    .line 160
    monitor-exit v0

    return-void

    .line 164
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 163
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/UserDataStore;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 165
    const-string v2, "com.facebook.appevents.UserDataStore.userData"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "udRaw":Ljava/lang/String;
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Lcom/facebook/appevents/UserDataStore;->JsonStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    sput-object v2, Lcom/facebook/appevents/UserDataStore;->hashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 167
    sget-object v2, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_32

    .line 168
    monitor-exit v0

    return-void

    .line 158
    .end local v1    # "udRaw":Ljava/lang/String;
    :catchall_32
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static initStore()V
    .registers 1

    .line 67
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 68
    return-void

    .line 70
    :cond_9
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->initAndWait()V

    .line 71
    return-void
.end method

.method private static mapToJsonStr(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 243
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    .line 244
    return-object v1

    .line 248
    :cond_9
    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 249
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 250
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    nop

    .end local v3    # "key":Ljava/lang/String;
    goto :goto_16

    .line 252
    :cond_2b
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_2f} :catch_30

    return-object v1

    .line 253
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :catch_30
    move-exception v0

    .line 254
    .local v0, "_e":Lorg/json/JSONException;
    return-object v1
.end method

.method private static maybeSHA256Hashed(Ljava/lang/String;)Z
    .registers 2
    .param p0, "data"    # Ljava/lang/String;

    .line 239
    const-string v0, "[A-Fa-f0-9]{64}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static normalizeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 212
    const-string v0, "em"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_27

    .line 213
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 214
    return-object p1

    .line 216
    :cond_1f
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->TAG:Ljava/lang/String;

    const-string v2, "Setting email failure: this is not a valid email address"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-object v1

    .line 221
    :cond_27
    const-string v0, "ph"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 222
    const-string v0, "[^0-9]"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 225
    :cond_36
    const-string v0, "ge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 226
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4b

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4c

    :cond_4b
    move-object v0, v1

    :goto_4c
    move-object p1, v0

    .line 227
    const-string v0, "f"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string v0, "m"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    goto :goto_66

    .line 230
    :cond_5e
    sget-object v0, Lcom/facebook/appevents/UserDataStore;->TAG:Ljava/lang/String;

    const-string v2, "Setting gender failure: the supported value for gender is f or m"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-object v1

    .line 228
    :cond_66
    :goto_66
    return-object p1

    .line 235
    :cond_67
    return-object p1
.end method

.method static setUserDataAndHash(Landroid/os/Bundle;)V
    .registers 3
    .param p0, "ud"    # Landroid/os/Bundle;

    .line 74
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getAnalyticsExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/UserDataStore$1;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/UserDataStore$1;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method static setUserDataAndHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "firstName"    # Ljava/lang/String;
    .param p2, "lastName"    # Ljava/lang/String;
    .param p3, "phone"    # Ljava/lang/String;
    .param p4, "dateOfBirth"    # Ljava/lang/String;
    .param p5, "gender"    # Ljava/lang/String;
    .param p6, "city"    # Ljava/lang/String;
    .param p7, "state"    # Ljava/lang/String;
    .param p8, "zip"    # Ljava/lang/String;
    .param p9, "country"    # Ljava/lang/String;

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "ud":Landroid/os/Bundle;
    if-eqz p0, :cond_c

    .line 103
    const-string v1, "em"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_c
    if-eqz p1, :cond_13

    .line 106
    const-string v1, "fn"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_13
    if-eqz p2, :cond_1a

    .line 109
    const-string v1, "ln"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_1a
    if-eqz p3, :cond_21

    .line 112
    const-string v1, "ph"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_21
    if-eqz p4, :cond_28

    .line 115
    const-string v1, "db"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_28
    if-eqz p5, :cond_2f

    .line 118
    const-string v1, "ge"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_2f
    if-eqz p6, :cond_36

    .line 121
    const-string v1, "ct"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_36
    if-eqz p7, :cond_3d

    .line 124
    const-string v1, "st"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_3d
    if-eqz p8, :cond_44

    .line 127
    const-string v1, "zp"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_44
    if-eqz p9, :cond_4b

    .line 130
    const-string v1, "country"

    invoke-virtual {v0, v1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_4b
    invoke-static {v0}, Lcom/facebook/appevents/UserDataStore;->setUserDataAndHash(Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method private static updateHashUserData(Landroid/os/Bundle;)V
    .registers 7
    .param p0, "ud"    # Landroid/os/Bundle;

    .line 171
    if-nez p0, :cond_3

    .line 172
    return-void

    .line 175
    :cond_3
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 177
    .local v2, "rawVal":Ljava/lang/Object;
    if-nez v2, :cond_1e

    .line 178
    goto :goto_b

    .line 180
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/appevents/UserDataStore;->maybeSHA256Hashed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 182
    sget-object v4, Lcom/facebook/appevents/UserDataStore;->hashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 184
    :cond_32
    invoke-static {v1, v3}, Lcom/facebook/appevents/UserDataStore;->normalizeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/appevents/UserDataStore;->encryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "encryptedValue":Ljava/lang/String;
    if-eqz v4, :cond_41

    .line 186
    sget-object v5, Lcom/facebook/appevents/UserDataStore;->hashedUserData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "rawVal":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "encryptedValue":Ljava/lang/String;
    :cond_41
    :goto_41
    goto :goto_b

    .line 190
    :cond_42
    return-void
.end method
