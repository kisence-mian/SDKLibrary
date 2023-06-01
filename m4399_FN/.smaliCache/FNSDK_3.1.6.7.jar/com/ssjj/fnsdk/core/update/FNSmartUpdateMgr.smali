.class public Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$PatchListener;,
        Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;
    }
.end annotation


# static fields
.field public static final PATCH_SAVE_FOLDER:Ljava/lang/String; = "FNSU"

.field private static a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;


# instance fields
.field private b:Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;)Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->b:Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/util/ApkUtil;->getSrcApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_16

    :cond_14
    const-wide/16 v0, -0x1

    :goto_16
    const-string v2, "_FNSUMGR_"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "fn_md5"

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->c:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "fn_md5r"

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->d:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "fn_file_sava_time"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->b:Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;

    return-void
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/util/List;ZLcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$PatchListener;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/update/PatchInfo;",
            ">;Z",
            "Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$PatchListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;-><init>(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;Landroid/content/Context;Ljava/util/List;ZLcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$PatchListener;)V

    const-string p1, "FNSU-patchThread"

    invoke-direct {v0, v7, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public checkAndDeleteSaveFile(Landroid/content/Context;)V
    .registers 11

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->getInstance()Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->getSaveDir(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->getInstance()Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->getSaveDir(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_21

    :cond_1d
    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    :goto_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    array-length v0, p1

    const/4 v4, 0x0

    :goto_27
    if-lt v4, v0, :cond_2a

    return-void

    :cond_2a
    aget-object v5, p1, v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_3e

    goto :goto_5e

    :cond_3e
    new-instance v5, Lcom/ssjj/fnsdk/core/update/p;

    invoke-direct {v5, p0, v2, v3}, Lcom/ssjj/fnsdk/core/update/p;-><init>(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;J)V

    invoke-virtual {v6, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_5e

    array-length v6, v5

    if-lez v6, :cond_5e

    const-string v6, "Delete useless update file"

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    array-length v6, v5

    const/4 v7, 0x0

    :goto_53
    if-lt v7, v6, :cond_56

    goto :goto_5e

    :cond_56
    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    :cond_5e
    :goto_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_27
.end method

.method public clearMd5(Landroid/content/Context;)V
    .registers 3

    const-string v0, ""

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->a(Landroid/content/Context;)V

    return-void
.end method

.method public fillSmartUpdateParams(Landroid/content/Context;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V
    .registers 11

    const-string v0, "_FNSUMGR_"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_17
    const-string v2, "fn_md5"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->c:Ljava/lang/String;

    const-string v2, "fn_md5r"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->d:Ljava/lang/String;

    :cond_28
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/util/ApkUtil;->getSrcApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_34

    const-string p1, "Get src apk file fail"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    return-void

    :cond_34
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_45

    const-string p1, "Src apk file is not exist"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    return-void

    :cond_45
    const-string v4, "fn_file_sava_time"

    const-wide/16 v5, -0x1

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    :cond_65
    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/match/MatchFactory;->createMatch(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->b:Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;

    invoke-static {v3, v1}, Lcom/ssjj/fnsdk/core/update/util/Md5Utils;->md5(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->b:Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;

    invoke-interface {v1, v2, v0}, Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;->getSrcApkMd5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->a(Landroid/content/Context;)V

    :cond_7c
    const-string p1, "md5"

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->c:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "md5r"

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->d:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getYdChannel()Ljava/lang/String;

    move-result-object p1

    const-string v0, "channelyd"

    invoke-virtual {p2, v0, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getOldYdChannel()Ljava/lang/String;

    move-result-object p1

    const-string v0, "channelydOld"

    invoke-virtual {p2, v0, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getMatch()Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->b:Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;

    return-object v0
.end method

.method public getRawApkMd5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveDir(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 4

    if-nez p2, :cond_d

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/UpdateUtil;->checkSD(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    goto :goto_11

    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    :goto_11
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "FNSU"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    :cond_57
    return-object p1
.end method

.method public getSrcApkMd5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->c:Ljava/lang/String;

    return-object v0
.end method
