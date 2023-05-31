.class Lcom/tds/achievement/UserDataStore;
.super Lcom/tds/achievement/BaseDataStore;
.source "UserDataStore.java"


# static fields
.field private static final LOCAL_FILE_ACHIEVEMENT_USER:Ljava/lang/String; = "cache_"

.field private static final log:Lcom/tds/common/log/Logger;


# instance fields
.field private isCounting:Z

.field private isUploading:Z

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-string v0, "achievement_log"

    invoke-static {v0}, Lcom/tds/common/log/Logger;->get(Ljava/lang/String;)Lcom/tds/common/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/tds/achievement/UserDataStore;->log:Lcom/tds/common/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/tds/achievement/BaseDataStore;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/achievement/UserDataStore;->isUploading:Z

    .line 41
    iput-boolean v0, p0, Lcom/tds/achievement/UserDataStore;->isCounting:Z

    .line 45
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tds/achievement/UserDataStore;->timer:Ljava/util/Timer;

    .line 46
    return-void
.end method

.method static synthetic access$002(Lcom/tds/achievement/UserDataStore;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/UserDataStore;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcom/tds/achievement/UserDataStore;->isCounting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tds/achievement/UserDataStore;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/UserDataStore;
    .param p1, "x1"    # Z

    .line 34
    invoke-direct {p0, p1}, Lcom/tds/achievement/UserDataStore;->triggerUpload(Z)V

    return-void
.end method

.method static synthetic access$200()Lcom/tds/common/log/Logger;
    .registers 1

    .line 34
    sget-object v0, Lcom/tds/achievement/UserDataStore;->log:Lcom/tds/common/log/Logger;

    return-object v0
.end method

.method static synthetic access$302(Lcom/tds/achievement/UserDataStore;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/UserDataStore;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcom/tds/achievement/UserDataStore;->isUploading:Z

    return p1
.end method

.method static synthetic access$400(Lcom/tds/achievement/UserDataStore;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/UserDataStore;

    .line 34
    iget-object v0, p0, Lcom/tds/achievement/UserDataStore;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method private startTimer()V
    .registers 5

    .line 145
    sget-object v0, Lcom/tds/achievement/UserDataStore;->log:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/achievement/UserDataStore;->TAG:Ljava/lang/String;

    const-string v2, "startTimer"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/achievement/UserDataStore;->isCounting:Z

    .line 147
    iget-object v0, p0, Lcom/tds/achievement/UserDataStore;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/tds/achievement/UserDataStore$4;

    invoke-direct {v1, p0}, Lcom/tds/achievement/UserDataStore$4;-><init>(Lcom/tds/achievement/UserDataStore;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 154
    return-void
.end method

.method private triggerUpload(Z)V
    .registers 4
    .param p1, "needCount"    # Z

    .line 127
    iget-boolean v0, p0, Lcom/tds/achievement/UserDataStore;->isCounting:Z

    if-eqz v0, :cond_5

    .line 128
    return-void

    .line 130
    :cond_5
    if-eqz p1, :cond_a

    .line 131
    invoke-direct {p0}, Lcom/tds/achievement/UserDataStore;->startTimer()V

    .line 133
    :cond_a
    iget-boolean v0, p0, Lcom/tds/achievement/UserDataStore;->isUploading:Z

    if-eqz v0, :cond_f

    .line 134
    return-void

    .line 137
    :cond_f
    invoke-virtual {p0}, Lcom/tds/achievement/UserDataStore;->getNeedUploadData()Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, "uploadBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/UploadBean;>;"
    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_20

    .line 141
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/tds/achievement/UserDataStore;->uploadData(Ljava/util/List;)V

    .line 142
    return-void

    .line 139
    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method public addAchievement(Lcom/tds/achievement/TapAchievementBean;)V
    .registers 3
    .param p1, "achievement"    # Lcom/tds/achievement/TapAchievementBean;

    .line 107
    iget-object v0, p0, Lcom/tds/achievement/UserDataStore;->localList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method getFileName()Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tds/achievement/AchievementImpl;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNeedUploadData()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/achievement/UploadBean;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/tds/achievement/UserDataStore;->localList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/tds/achievement/UserDataStore;->localList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4c

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v0, "uploadBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/UploadBean;>;"
    iget-object v2, p0, Lcom/tds/achievement/UserDataStore;->localList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/achievement/TapAchievementBean;

    .line 160
    .local v3, "item":Lcom/tds/achievement/TapAchievementBean;
    invoke-virtual {v3}, Lcom/tds/achievement/TapAchievementBean;->isChanged()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 161
    new-instance v4, Lcom/tds/achievement/UploadBean;

    invoke-virtual {v3}, Lcom/tds/achievement/TapAchievementBean;->getAchievementId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/tds/achievement/TapAchievementBean;->getDisplayId()Ljava/lang/String;

    move-result-object v7

    .line 162
    invoke-virtual {v3}, Lcom/tds/achievement/TapAchievementBean;->getReachedStep()I

    move-result v8

    invoke-virtual {v3}, Lcom/tds/achievement/TapAchievementBean;->getReachedTime()J

    move-result-wide v9

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/tds/achievement/UploadBean;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 163
    .local v4, "uploadBean":Lcom/tds/achievement/UploadBean;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v3    # "item":Lcom/tds/achievement/TapAchievementBean;
    .end local v4    # "uploadBean":Lcom/tds/achievement/UploadBean;
    :cond_43
    goto :goto_18

    .line 166
    :cond_44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4b

    .line 167
    return-object v0

    .line 169
    :cond_4b
    return-object v1

    .line 172
    .end local v0    # "uploadBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/UploadBean;>;"
    :cond_4c
    return-object v1
.end method

.method loadLocalData()V
    .registers 1

    .line 63
    invoke-super {p0}, Lcom/tds/achievement/BaseDataStore;->loadLocalData()V

    .line 64
    return-void
.end method

.method loadRemoteData()Lcom/tds/common/reactor/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/Observable<",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;>;"
        }
    .end annotation

    .line 50
    invoke-static {}, Lcom/tds/common/net/Skynet;->getInstance()Lcom/tds/common/net/Skynet;

    move-result-object v0

    const-string v1, "TapAchievement"

    invoke-virtual {v0, v1}, Lcom/tds/common/net/Skynet;->getTdsApiClient(Ljava/lang/String;)Lcom/tds/common/net/TdsApiClient;

    move-result-object v0

    .line 51
    .local v0, "client":Lcom/tds/common/net/TdsApiClient;
    new-instance v1, Lcom/tds/achievement/UserDataStore$2;

    invoke-direct {v1, p0}, Lcom/tds/achievement/UserDataStore$2;-><init>(Lcom/tds/achievement/UserDataStore;)V

    .line 52
    invoke-virtual {p0}, Lcom/tds/achievement/UserDataStore;->getMyUrl()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/tds/common/net/TdsApiClient;->getAsync(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;)Lcom/tds/common/reactor/Observable;

    move-result-object v1

    new-instance v2, Lcom/tds/achievement/UserDataStore$1;

    invoke-direct {v2, p0}, Lcom/tds/achievement/UserDataStore$1;-><init>(Lcom/tds/achievement/UserDataStore;)V

    .line 53
    invoke-virtual {v1, v2}, Lcom/tds/common/reactor/Observable;->map(Lcom/tds/common/reactor/functions/Func1;)Lcom/tds/common/reactor/Observable;

    move-result-object v1

    .line 51
    return-object v1
.end method

.method mergeRemoteDataToLocal(Ljava/util/List;Ljava/util/List;)V
    .registers 10
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

    .line 73
    .local p1, "remote":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/TapAchievementBean;>;"
    .local p2, "local":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/TapAchievementBean;>;"
    if-eqz p1, :cond_7e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_7e

    .line 76
    :cond_a
    if-nez p2, :cond_12

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p2, v0

    .line 79
    :cond_12
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 80
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_71

    .line 82
    :cond_1c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/achievement/TapAchievementBean;

    .line 83
    .local v1, "remoteItem":Lcom/tds/achievement/TapAchievementBean;
    const/4 v2, 0x0

    .line 84
    .local v2, "findInLocal":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tds/achievement/TapAchievementBean;

    .line 85
    .local v4, "localItem":Lcom/tds/achievement/TapAchievementBean;
    invoke-virtual {v1}, Lcom/tds/achievement/TapAchievementBean;->getAchievementId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/tds/achievement/TapAchievementBean;->getAchievementId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 86
    const/4 v2, 0x1

    .line 87
    invoke-virtual {v4, v1}, Lcom/tds/achievement/TapAchievementBean;->replaceBase(Lcom/tds/achievement/TapAchievementBean;)V

    .line 88
    invoke-virtual {v1}, Lcom/tds/achievement/TapAchievementBean;->getReachedStep()I

    move-result v5

    invoke-virtual {v4}, Lcom/tds/achievement/TapAchievementBean;->getReachedStep()I

    move-result v6

    if-lt v5, v6, :cond_5d

    .line 89
    invoke-virtual {v4, v1}, Lcom/tds/achievement/TapAchievementBean;->replaceUser(Lcom/tds/achievement/TapAchievementBean;)V

    .line 90
    goto :goto_6b

    .line 91
    :cond_5d
    invoke-virtual {v1}, Lcom/tds/achievement/TapAchievementBean;->getReachedStep()I

    move-result v5

    invoke-virtual {v4}, Lcom/tds/achievement/TapAchievementBean;->getReachedStep()I

    move-result v6

    if-ge v5, v6, :cond_6a

    .line 92
    invoke-virtual {v4}, Lcom/tds/achievement/TapAchievementBean;->setChanged()V

    .line 95
    .end local v4    # "localItem":Lcom/tds/achievement/TapAchievementBean;
    :cond_6a
    goto :goto_31

    .line 96
    :cond_6b
    :goto_6b
    if-nez v2, :cond_70

    .line 97
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v1    # "remoteItem":Lcom/tds/achievement/TapAchievementBean;
    .end local v2    # "findInLocal":Z
    :cond_70
    goto :goto_20

    .line 102
    :cond_71
    :goto_71
    invoke-virtual {p0}, Lcom/tds/achievement/UserDataStore;->saveDataAndUpload()V

    .line 103
    sget-object v0, Lcom/tds/achievement/UserDataStore;->log:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/achievement/UserDataStore;->TAG:Ljava/lang/String;

    const-string v2, "merge done"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void

    .line 74
    :cond_7e
    :goto_7e
    return-void
.end method

.method saveDataAndUpload()V
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/tds/achievement/UserDataStore;->saveLocalData()V

    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tds/achievement/UserDataStore;->triggerUpload(Z)V

    .line 113
    return-void
.end method

.method saveLocalData()V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/tds/achievement/UserDataStore;->localList:Ljava/util/List;

    new-instance v1, Lcom/tds/achievement/UserDataStore$3;

    invoke-direct {v1, p0}, Lcom/tds/achievement/UserDataStore$3;-><init>(Lcom/tds/achievement/UserDataStore;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    invoke-super {p0}, Lcom/tds/achievement/BaseDataStore;->saveLocalData()V

    .line 124
    return-void
.end method

.method uploadData(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/achievement/UploadBean;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p1, "uploadBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/UploadBean;>;"
    sget-object v0, Lcom/tds/achievement/UserDataStore;->log:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/achievement/UserDataStore;->TAG:Ljava/lang/String;

    const-string v2, "start upload"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/achievement/UserDataStore;->isUploading:Z

    .line 179
    invoke-static {}, Lcom/tds/common/net/Skynet;->getInstance()Lcom/tds/common/net/Skynet;

    move-result-object v0

    const-string v1, "TapAchievement"

    invoke-virtual {v0, v1}, Lcom/tds/common/net/Skynet;->getTdsApiClient(Ljava/lang/String;)Lcom/tds/common/net/TdsApiClient;

    move-result-object v0

    .line 180
    .local v0, "client":Lcom/tds/common/net/TdsApiClient;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 182
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_1b
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 183
    .local v2, "array":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tds/achievement/UploadBean;

    .line 184
    .local v4, "bean":Lcom/tds/achievement/UploadBean;
    invoke-virtual {v4}, Lcom/tds/achievement/UploadBean;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    .line 185
    .local v5, "temp":Lorg/json/JSONObject;
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 186
    nop

    .end local v4    # "bean":Lcom/tds/achievement/UploadBean;
    .end local v5    # "temp":Lorg/json/JSONObject;
    goto :goto_24

    .line 187
    :cond_39
    const-string v3, "list"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_3e} :catch_40

    .line 190
    nop

    .end local v2    # "array":Lorg/json/JSONArray;
    goto :goto_48

    .line 188
    :catch_40
    move-exception v2

    .line 189
    .local v2, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/tds/achievement/UserDataStore;->log:Lcom/tds/common/log/Logger;

    sget-object v4, Lcom/tds/achievement/UserDataStore;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_48
    invoke-virtual {v1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_4f

    .line 192
    return-void

    .line 195
    :cond_4f
    new-instance v3, Lcom/tds/achievement/UserDataStore$6;

    invoke-direct {v3, p0}, Lcom/tds/achievement/UserDataStore$6;-><init>(Lcom/tds/achievement/UserDataStore;)V

    .line 196
    invoke-virtual {p0}, Lcom/tds/achievement/UserDataStore;->getUploadUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 195
    move-object v2, v0

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/tds/common/net/TdsApiClient;->postAsync(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/tds/common/reactor/Observable;

    move-result-object v2

    .line 197
    invoke-static {}, Lcom/tds/common/reactor/schedulers/Schedulers;->io()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tds/common/reactor/Observable;->subscribeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v2

    .line 198
    invoke-static {}, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;->mainThread()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tds/common/reactor/Observable;->observeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v2

    new-instance v3, Lcom/tds/achievement/UserDataStore$5;

    invoke-direct {v3, p0, p1}, Lcom/tds/achievement/UserDataStore$5;-><init>(Lcom/tds/achievement/UserDataStore;Ljava/util/List;)V

    .line 199
    invoke-virtual {v2, v3}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    .line 253
    return-void
.end method
