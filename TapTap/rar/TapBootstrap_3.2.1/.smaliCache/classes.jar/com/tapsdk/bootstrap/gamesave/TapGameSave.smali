.class public Lcom/tapsdk/bootstrap/gamesave/TapGameSave;
.super Lcn/leancloud/LCObject;
.source "TapGameSave.java"


# annotations
.annotation runtime Lcn/leancloud/annotation/LCClassName;
    value = "_GameSave"
.end annotation


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "_GameSave"

.field public static final GAME_SAVE_COVER:Ljava/lang/String; = "cover"

.field public static final GAME_SAVE_FILE_PREFIX:Ljava/lang/String; = "gamesaves"

.field public static final GAME_SAVE_GAME_FILE:Ljava/lang/String; = "gameFile"

.field public static final GAME_SAVE_MODIFIED_AT:Ljava/lang/String; = "modifiedAt"

.field public static final GAME_SAVE_NAME:Ljava/lang/String; = "name"

.field public static final GAME_SAVE_PLAYED_TIME:Ljava/lang/String; = "playedTime"

.field public static final GAME_SAVE_PROGRESS_VALUE:Ljava/lang/String; = "progressValue"

.field public static final GAME_SAVE_SUMMARY:Ljava/lang/String; = "summary"

.field public static final GAME_SAVE_USER:Ljava/lang/String; = "user"

.field private static final SUMMARY_LIMIT_LENGTH:I = 0x3e8

.field private static final supportImageMimeType:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    const-string v0, "image/png"

    const-string v1, "image/jpeg"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->supportImageMimeType:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 39
    const-string v0, "_GameSave"

    invoke-direct {p0, v0}, Lcn/leancloud/LCObject;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static getCurrentUserGameSaves()Lio/reactivex/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/tapsdk/bootstrap/gamesave/TapGameSave;",
            ">;>;"
        }
    .end annotation

    .line 200
    invoke-static {}, Lcn/leancloud/LCUser;->getCurrentUser()Lcn/leancloud/LCUser;

    move-result-object v0

    .line 201
    .local v0, "user":Lcn/leancloud/LCUser;
    if-nez v0, :cond_10

    .line 202
    new-instance v1, Ljava/lang/IllegalAccessException;

    invoke-direct {v1}, Ljava/lang/IllegalAccessException;-><init>()V

    invoke-static {v1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v1

    return-object v1

    .line 204
    :cond_10
    invoke-static {}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getQueryWithUser()Lcn/leancloud/LCQuery;

    move-result-object v1

    invoke-virtual {v1}, Lcn/leancloud/LCQuery;->findInBackground()Lio/reactivex/Observable;

    move-result-object v1

    return-object v1
.end method

.method public static getQuery()Lcn/leancloud/LCQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/leancloud/LCQuery<",
            "Lcom/tapsdk/bootstrap/gamesave/TapGameSave;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Lcn/leancloud/LCQuery;

    const-string v1, "_GameSave"

    invoke-direct {v0, v1}, Lcn/leancloud/LCQuery;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getQueryWithUser()Lcn/leancloud/LCQuery;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/leancloud/LCQuery<",
            "Lcom/tapsdk/bootstrap/gamesave/TapGameSave;",
            ">;"
        }
    .end annotation

    .line 222
    invoke-static {}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getQuery()Lcn/leancloud/LCQuery;

    move-result-object v0

    .line 223
    .local v0, "query":Lcn/leancloud/LCQuery;, "Lcn/leancloud/LCQuery<Lcom/tapsdk/bootstrap/gamesave/TapGameSave;>;"
    const-string v1, "cover"

    invoke-virtual {v0, v1}, Lcn/leancloud/LCQuery;->include(Ljava/lang/String;)Lcn/leancloud/LCQuery;

    .line 224
    const-string v1, "gameFile"

    invoke-virtual {v0, v1}, Lcn/leancloud/LCQuery;->include(Ljava/lang/String;)Lcn/leancloud/LCQuery;

    .line 225
    invoke-static {}, Lcn/leancloud/LCUser;->getCurrentUser()Lcn/leancloud/LCUser;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Lcn/leancloud/LCQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcn/leancloud/LCQuery;

    .line 226
    return-object v0
.end method

.method private setCover(Lcn/leancloud/LCFile;)V
    .registers 3
    .param p1, "file"    # Lcn/leancloud/LCFile;

    .line 122
    const-string v0, "gamesaves"

    invoke-virtual {p1, v0}, Lcn/leancloud/LCFile;->setPathPrefix(Ljava/lang/String;)V

    .line 123
    const-string v0, "cover"

    invoke-virtual {p0, v0, p1}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method private setGameFile(Lcn/leancloud/LCFile;)V
    .registers 3
    .param p1, "file"    # Lcn/leancloud/LCFile;

    .line 141
    const-string v0, "gamesaves"

    invoke-virtual {p1, v0}, Lcn/leancloud/LCFile;->setPathPrefix(Ljava/lang/String;)V

    .line 142
    const-string v0, "gameFile"

    invoke-virtual {p0, v0, p1}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    return-void
.end method


# virtual methods
.method public getCover()Lcn/leancloud/LCFile;
    .registers 2

    .line 127
    const-string v0, "cover"

    invoke-virtual {p0, v0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getLCFile(Ljava/lang/String;)Lcn/leancloud/LCFile;

    move-result-object v0

    return-object v0
.end method

.method public getGameFile()Lcn/leancloud/LCFile;
    .registers 2

    .line 146
    const-string v0, "gameFile"

    invoke-virtual {p0, v0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getLCFile(Ljava/lang/String;)Lcn/leancloud/LCFile;

    move-result-object v0

    return-object v0
.end method

.method public getModifiedAt()Ljava/util/Date;
    .registers 2

    .line 83
    const-string v0, "modifiedAt"

    invoke-virtual {p0, v0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getModifiedAtString()Ljava/lang/String;
    .registers 2

    .line 87
    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getModifiedAt()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcn/leancloud/utils/StringUtil;->stringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 57
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayedTime()D
    .registers 3

    .line 95
    const-string v0, "playedTime"

    invoke-virtual {p0, v0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getProgressValue()I
    .registers 2

    .line 99
    const-string v0, "progressValue"

    invoke-virtual {p0, v0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .registers 2

    .line 75
    const-string v0, "summary"

    invoke-virtual {p0, v0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveInBackground()Lio/reactivex/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/tapsdk/bootstrap/gamesave/TapGameSave;",
            ">;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/leancloud/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing Name parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 160
    :cond_16
    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/leancloud/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing Summary parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 163
    :cond_2c
    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_44

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Summary parameter exceeded limit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 166
    :cond_44
    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getGameFile()Lcn/leancloud/LCFile;

    move-result-object v0

    if-nez v0, :cond_56

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing GameFile parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 169
    :cond_56
    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getCover()Lcn/leancloud/LCFile;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8d

    .line 170
    sget-object v0, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->supportImageMimeType:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getCover()Lcn/leancloud/LCFile;

    move-result-object v3

    invoke-virtual {v3}, Lcn/leancloud/LCFile;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    aget-object v0, v0, v1

    .line 171
    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getCover()Lcn/leancloud/LCFile;

    move-result-object v3

    invoke-virtual {v3}, Lcn/leancloud/LCFile;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    if-eqz v0, :cond_8d

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cover File must be png or jpg."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 175
    :cond_8d
    invoke-static {}, Lcn/leancloud/LCUser;->getCurrentUser()Lcn/leancloud/LCUser;

    move-result-object v0

    .line 176
    .local v0, "user":Lcn/leancloud/LCUser;
    if-nez v0, :cond_9d

    .line 177
    new-instance v1, Ljava/lang/IllegalAccessException;

    invoke-direct {v1}, Ljava/lang/IllegalAccessException;-><init>()V

    invoke-static {v1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v1

    return-object v1

    .line 180
    :cond_9d
    const-string v2, "user"

    invoke-virtual {p0, v2, v0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    new-instance v2, Lcn/leancloud/LCACL;

    invoke-direct {v2}, Lcn/leancloud/LCACL;-><init>()V

    .line 182
    .local v2, "acl":Lcn/leancloud/LCACL;
    invoke-virtual {v2, v0, v1}, Lcn/leancloud/LCACL;->setReadAccess(Lcn/leancloud/LCUser;Z)V

    .line 183
    invoke-virtual {v2, v0, v1}, Lcn/leancloud/LCACL;->setWriteAccess(Lcn/leancloud/LCUser;Z)V

    .line 184
    invoke-virtual {p0, v2}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->setACL(Lcn/leancloud/LCACL;)V

    .line 185
    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getGameFile()Lcn/leancloud/LCFile;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/leancloud/LCFile;->setACL(Lcn/leancloud/LCACL;)V

    .line 186
    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getGameFile()Lcn/leancloud/LCFile;

    move-result-object v1

    const-string v3, "gamesaves"

    invoke-virtual {v1, v3}, Lcn/leancloud/LCFile;->setPathPrefix(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getCover()Lcn/leancloud/LCFile;

    move-result-object v1

    if-eqz v1, :cond_d4

    .line 188
    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getCover()Lcn/leancloud/LCFile;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/leancloud/LCFile;->setACL(Lcn/leancloud/LCACL;)V

    .line 189
    invoke-virtual {p0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->getCover()Lcn/leancloud/LCFile;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcn/leancloud/LCFile;->setPathPrefix(Ljava/lang/String;)V

    .line 191
    :cond_d4
    invoke-super {p0}, Lcn/leancloud/LCObject;->saveInBackground()Lio/reactivex/Observable;

    move-result-object v1

    return-object v1
.end method

.method public setCover(Ljava/lang/String;)V
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "file":Ljava/io/File;
    new-instance v1, Lcn/leancloud/LCFile;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcn/leancloud/LCFile;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, v1}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->setCover(Lcn/leancloud/LCFile;)V

    .line 119
    return-void
.end method

.method public setGameFile(Ljava/lang/String;)V
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "file":Ljava/io/File;
    new-instance v1, Lcn/leancloud/LCFile;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcn/leancloud/LCFile;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, v1}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->setGameFile(Lcn/leancloud/LCFile;)V

    .line 138
    return-void
.end method

.method public setModifiedAt(Ljava/util/Date;)V
    .registers 3
    .param p1, "date"    # Ljava/util/Date;

    .line 79
    const-string v0, "modifiedAt"

    invoke-virtual {p0, v0, p1}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 48
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public setPlayedTime(D)V
    .registers 5
    .param p1, "playedTime"    # D

    .line 91
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "playedTime"

    invoke-virtual {p0, v1, v0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public setProgressValue(I)V
    .registers 4
    .param p1, "progressValue"    # I

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "progressValue"

    invoke-virtual {p0, v1, v0}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/String;

    .line 66
    const-string v0, "summary"

    invoke-virtual {p0, v0, p1}, Lcom/tapsdk/bootstrap/gamesave/TapGameSave;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    return-void
.end method
