.class abstract Lcom/tds/achievement/BaseDataStore;
.super Ljava/lang/Object;
.source "BaseDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final TDS_CACHE:Ljava/lang/String; = "tdscache"

.field private static final log:Lcom/tds/common/log/Logger;


# instance fields
.field private cryptoUtils:Lcom/tds/achievement/CryptoUtils;

.field localFile:Ljava/io/File;

.field localList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/tds/achievement/BaseDataStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tds/achievement/BaseDataStore;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "achievement_log"

    invoke-static {v0}, Lcom/tds/common/log/Logger;->get(Ljava/lang/String;)Lcom/tds/common/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/tds/achievement/BaseDataStore;->log:Lcom/tds/common/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tds/achievement/BaseDataStore;->localList:Ljava/util/List;

    .line 41
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/achievement/AchievementImpl;->getWeakActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/achievement/CryptoUtils;->getInstance(Landroid/content/Context;)Lcom/tds/achievement/CryptoUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/achievement/BaseDataStore;->cryptoUtils:Lcom/tds/achievement/CryptoUtils;

    .line 42
    return-void
.end method

.method static synthetic access$000()Lcom/tds/common/log/Logger;
    .registers 1

    .line 26
    sget-object v0, Lcom/tds/achievement/BaseDataStore;->log:Lcom/tds/common/log/Logger;

    return-object v0
.end method

.method private parseListToJsonString(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 188
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/TapAchievementBean;>;"
    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_34

    .line 191
    :cond_9
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 192
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/achievement/TapAchievementBean;

    .line 194
    .local v2, "item":Lcom/tds/achievement/TapAchievementBean;
    :try_start_1e
    invoke-virtual {v2}, Lcom/tds/achievement/TapAchievementBean;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_25} :catch_26

    .line 197
    goto :goto_2e

    .line 195
    :catch_26
    move-exception v3

    .line 196
    .local v3, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/tds/achievement/BaseDataStore;->log:Lcom/tds/common/log/Logger;

    sget-object v5, Lcom/tds/achievement/BaseDataStore;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    .end local v2    # "item":Lcom/tds/achievement/TapAchievementBean;
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_2e
    goto :goto_12

    .line 200
    :cond_2f
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 189
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    :cond_34
    :goto_34
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public getAchievementByDisplayId(Ljava/lang/String;)Lcom/tds/achievement/TapAchievementBean;
    .registers 5
    .param p1, "displayId"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/tds/achievement/BaseDataStore;->localList:Ljava/util/List;

    if-eqz v0, :cond_20

    .line 176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/achievement/TapAchievementBean;

    .line 177
    .local v1, "item":Lcom/tds/achievement/TapAchievementBean;
    invoke-virtual {v1}, Lcom/tds/achievement/TapAchievementBean;->getDisplayId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 178
    return-object v1

    .line 180
    .end local v1    # "item":Lcom/tds/achievement/TapAchievementBean;
    :cond_1f
    goto :goto_8

    .line 182
    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAchievementById(Ljava/lang/String;)Lcom/tds/achievement/TapAchievementBean;
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/tds/achievement/BaseDataStore;->localList:Ljava/util/List;

    if-eqz v0, :cond_20

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/achievement/TapAchievementBean;

    .line 166
    .local v1, "item":Lcom/tds/achievement/TapAchievementBean;
    invoke-virtual {v1}, Lcom/tds/achievement/TapAchievementBean;->getAchievementId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 167
    return-object v1

    .line 169
    .end local v1    # "item":Lcom/tds/achievement/TapAchievementBean;
    :cond_1f
    goto :goto_8

    .line 171
    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllUrl()Ljava/lang/String;
    .registers 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "achievements/languages/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tds/common/localize/LocalizeManager;->getPreferredLanguageString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract getFileName()Ljava/lang/String;
.end method

.method getLocalFile()Ljava/io/File;
    .registers 6

    .line 122
    iget-object v0, p0, Lcom/tds/achievement/BaseDataStore;->localFile:Ljava/io/File;

    if-nez v0, :cond_4b

    .line 124
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/achievement/AchievementImpl;->getWeakActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 125
    .local v0, "fileDir":Ljava/io/File;
    if-eqz v0, :cond_42

    .line 127
    new-instance v1, Ljava/io/File;

    const-string v2, "tdscache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    .local v1, "localDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_22

    .line 129
    invoke-static {v1}, Lcom/tds/common/io/IoUtil;->mkdirs(Ljava/io/File;)Z

    .line 132
    :cond_22
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/tds/achievement/BaseDataStore;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tds/achievement/BaseDataStore;->localFile:Ljava/io/File;

    .line 134
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_41

    .line 136
    :try_start_33
    iget-object v2, p0, Lcom/tds/achievement/BaseDataStore;->localFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_39

    .line 139
    goto :goto_41

    .line 137
    :catch_39
    move-exception v2

    .line 138
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/tds/achievement/BaseDataStore;->log:Lcom/tds/common/log/Logger;

    sget-object v4, Lcom/tds/achievement/BaseDataStore;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .end local v1    # "localDir":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_41
    :goto_41
    goto :goto_4b

    .line 142
    :cond_42
    sget-object v1, Lcom/tds/achievement/BaseDataStore;->log:Lcom/tds/common/log/Logger;

    sget-object v2, Lcom/tds/achievement/BaseDataStore;->TAG:Ljava/lang/String;

    const-string v3, "fileDir = null"

    invoke-virtual {v1, v2, v3}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v0    # "fileDir":Ljava/io/File;
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/tds/achievement/BaseDataStore;->localFile:Ljava/io/File;

    return-object v0
.end method

.method getMergedData(Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;

    .line 57
    invoke-virtual {p0}, Lcom/tds/achievement/BaseDataStore;->loadRemoteData()Lcom/tds/common/reactor/Observable;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/tds/common/reactor/schedulers/Schedulers;->io()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Observable;->subscribeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    .line 59
    invoke-static {}, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;->mainThread()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Observable;->observeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    new-instance v1, Lcom/tds/achievement/BaseDataStore$1;

    invoke-direct {v1, p0, p1}, Lcom/tds/achievement/BaseDataStore$1;-><init>(Lcom/tds/achievement/BaseDataStore;Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    .line 89
    return-void
.end method

.method public getMyUrl()Ljava/lang/String;
    .registers 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tds/achievement/AchievementImpl;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/achievements/languages/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tds/common/localize/LocalizeManager;->getPreferredLanguageString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploadUrl()Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tds/achievement/AchievementImpl;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/achievements"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method loadLocalData()V
    .registers 9

    .line 92
    iget-object v0, p0, Lcom/tds/achievement/BaseDataStore;->localList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tds/achievement/BaseDataStore;->localList:Ljava/util/List;

    .line 95
    :cond_b
    iget-object v0, p0, Lcom/tds/achievement/BaseDataStore;->localList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5d

    .line 96
    invoke-virtual {p0}, Lcom/tds/achievement/BaseDataStore;->getLocalFile()Ljava/io/File;

    .line 98
    iget-object v0, p0, Lcom/tds/achievement/BaseDataStore;->localFile:Ljava/io/File;

    if-eqz v0, :cond_5d

    .line 99
    invoke-static {v0}, Lcom/tds/common/io/IoUtil;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 101
    new-instance v1, Lcom/tds/achievement/CryptoUtils$EncryptData;

    const-string v2, "tdscache"

    invoke-direct {v1, v2, v0}, Lcom/tds/achievement/CryptoUtils$EncryptData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v1, "encryptData":Lcom/tds/achievement/CryptoUtils$EncryptData;
    iget-object v2, p0, Lcom/tds/achievement/BaseDataStore;->cryptoUtils:Lcom/tds/achievement/CryptoUtils;

    invoke-virtual {v2, v1}, Lcom/tds/achievement/CryptoUtils;->aesDecrypt(Lcom/tds/achievement/CryptoUtils$EncryptData;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "cacheStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 107
    :try_start_37
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 108
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_54

    .line 109
    iget-object v5, p0, Lcom/tds/achievement/BaseDataStore;->localList:Ljava/util/List;

    new-instance v6, Lcom/tds/achievement/TapAchievementBean;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/tds/achievement/TapAchievementBean;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_51} :catch_55

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 113
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_54
    goto :goto_5d

    .line 111
    :catch_55
    move-exception v3

    .line 112
    .local v3, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/tds/achievement/BaseDataStore;->log:Lcom/tds/common/log/Logger;

    sget-object v5, Lcom/tds/achievement/BaseDataStore;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "encryptData":Lcom/tds/achievement/CryptoUtils$EncryptData;
    .end local v2    # "cacheStr":Ljava/lang/String;
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_5d
    :goto_5d
    return-void
.end method

.method abstract loadRemoteData()Lcom/tds/common/reactor/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/Observable<",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;>;"
        }
    .end annotation
.end method

.method abstract mergeRemoteDataToLocal(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public resetMemory()V
    .registers 2

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/achievement/BaseDataStore;->localFile:Ljava/io/File;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tds/achievement/BaseDataStore;->localList:Ljava/util/List;

    .line 215
    return-void
.end method

.method saveLocalData()V
    .registers 5

    .line 151
    iget-object v0, p0, Lcom/tds/achievement/BaseDataStore;->localList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/tds/achievement/BaseDataStore;->parseListToJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "listString":Ljava/lang/String;
    iget-object v1, p0, Lcom/tds/achievement/BaseDataStore;->cryptoUtils:Lcom/tds/achievement/CryptoUtils;

    const-string v2, "tdscache"

    invoke-virtual {v1, v2, v0}, Lcom/tds/achievement/CryptoUtils;->aesEncrypt(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/achievement/CryptoUtils$EncryptData;

    move-result-object v1

    .line 153
    .local v1, "data":Lcom/tds/achievement/CryptoUtils$EncryptData;
    if-nez v1, :cond_11

    .line 154
    return-void

    .line 156
    :cond_11
    iget-object v2, p0, Lcom/tds/achievement/BaseDataStore;->localFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 157
    invoke-virtual {p0}, Lcom/tds/achievement/BaseDataStore;->getLocalFile()Ljava/io/File;

    .line 159
    :cond_1c
    invoke-virtual {v1}, Lcom/tds/achievement/CryptoUtils$EncryptData;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "dataToStore":Ljava/lang/String;
    iget-object v3, p0, Lcom/tds/achievement/BaseDataStore;->localFile:Ljava/io/File;

    invoke-static {v3, v2}, Lcom/tds/common/io/IoUtil;->writeString(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    return-void
.end method
