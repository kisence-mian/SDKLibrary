.class public final enum Lcom/tapsdk/moment/utils/GUIDHelper;
.super Ljava/lang/Enum;
.source "GUIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapsdk/moment/utils/GUIDHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tapsdk/moment/utils/GUIDHelper;

.field private static final GUID_KEY:Ljava/lang/String; = "GUID"

.field public static final enum INSTANCE:Lcom/tapsdk/moment/utils/GUIDHelper;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCacheFile:Ljava/io/File;

.field private mSp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 21
    new-instance v0, Lcom/tapsdk/moment/utils/GUIDHelper;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tapsdk/moment/utils/GUIDHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapsdk/moment/utils/GUIDHelper;->INSTANCE:Lcom/tapsdk/moment/utils/GUIDHelper;

    .line 20
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/tapsdk/moment/utils/GUIDHelper;

    aput-object v0, v1, v2

    sput-object v1, Lcom/tapsdk/moment/utils/GUIDHelper;->$VALUES:[Lcom/tapsdk/moment/utils/GUIDHelper;

    .line 23
    const-class v0, Lcom/tapsdk/moment/utils/GUIDHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapsdk/moment/utils/GUIDHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private checkWriteReadPermission(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 57
    return v0

    .line 59
    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_26

    .line 60
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    nop

    .line 59
    :goto_27
    return v0
.end method

.method private readGUIDFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .line 81
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_1e

    .line 82
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 83
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_1e

    .line 82
    return-object v1

    .line 81
    :catchall_12
    move-exception v1

    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local p0    # "this":Lcom/tapsdk/moment/utils/GUIDHelper;
    .end local p1    # "path":Ljava/lang/String;
    :try_start_13
    throw v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_14

    .line 83
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "this":Lcom/tapsdk/moment/utils/GUIDHelper;
    .restart local p1    # "path":Ljava/lang/String;
    :catchall_14
    move-exception v2

    :try_start_15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v3

    :try_start_1a
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/tapsdk/moment/utils/GUIDHelper;
    .end local p1    # "path":Ljava/lang/String;
    :goto_1d
    throw v2
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_1e

    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "this":Lcom/tapsdk/moment/utils/GUIDHelper;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_1e
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private saveGUIDToSP(Ljava/lang/String;)V
    .registers 4
    .param p1, "uid"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/tapsdk/moment/utils/GUIDHelper;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_11

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GUID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    :cond_11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapsdk/moment/utils/GUIDHelper;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/tapsdk/moment/utils/GUIDHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapsdk/moment/utils/GUIDHelper;

    return-object v0
.end method

.method public static values()[Lcom/tapsdk/moment/utils/GUIDHelper;
    .registers 1

    .line 20
    sget-object v0, Lcom/tapsdk/moment/utils/GUIDHelper;->$VALUES:[Lcom/tapsdk/moment/utils/GUIDHelper;

    invoke-virtual {v0}, [Lcom/tapsdk/moment/utils/GUIDHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapsdk/moment/utils/GUIDHelper;

    return-object v0
.end method

.method private writeGUIDToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .line 90
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_18

    .line 91
    .local v0, "writer":Ljava/io/Writer;
    :try_start_5
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 92
    :try_start_8
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_18

    .line 94
    .end local v0    # "writer":Ljava/io/Writer;
    goto :goto_1c

    .line 90
    .restart local v0    # "writer":Ljava/io/Writer;
    :catchall_c
    move-exception v1

    .end local v0    # "writer":Ljava/io/Writer;
    .end local p0    # "this":Lcom/tapsdk/moment/utils/GUIDHelper;
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "uid":Ljava/lang/String;
    :try_start_d
    throw v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_e

    .line 92
    .restart local v0    # "writer":Ljava/io/Writer;
    .restart local p0    # "this":Lcom/tapsdk/moment/utils/GUIDHelper;
    .restart local p1    # "path":Ljava/lang/String;
    .restart local p2    # "uid":Ljava/lang/String;
    :catchall_e
    move-exception v2

    :try_start_f
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception v3

    :try_start_14
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/tapsdk/moment/utils/GUIDHelper;
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "uid":Ljava/lang/String;
    :goto_17
    throw v2
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_18

    .end local v0    # "writer":Ljava/io/Writer;
    .restart local p0    # "this":Lcom/tapsdk/moment/utils/GUIDHelper;
    .restart local p1    # "path":Ljava/lang/String;
    .restart local p2    # "uid":Ljava/lang/String;
    :catch_18
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 95
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1c
    return-void
.end method


# virtual methods
.method public getUID()Ljava/lang/String;
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/tapsdk/moment/utils/GUIDHelper;->mSp:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/tapsdk/moment/utils/GUIDHelper;->mCacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tapsdk/moment/utils/GUIDHelper;->readGUIDFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GUID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "guid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 66
    return-object v0

    .line 68
    :cond_19
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "constructorUID":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/tapsdk/moment/utils/GUIDHelper;->saveGUIDToSP(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/tapsdk/moment/utils/GUIDHelper;->mCacheFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/tapsdk/moment/utils/GUIDHelper;->writeGUIDToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-object v1
.end method

.method public init(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    const-string v0, "GUID"

    iget-object v1, p0, Lcom/tapsdk/moment/utils/GUIDHelper;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/tapsdk/moment/utils/GUIDHelper;->mCacheFile:Ljava/io/File;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 33
    return-void

    .line 36
    :cond_11
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/utils/GUIDHelper;->checkWriteReadPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapsdk/moment/utils/GUIDHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_52

    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapsdk/moment/utils/GUIDHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_52
    nop

    .line 40
    .local v1, "fileDir":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/tapsdk/moment/utils/GUIDHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/tapsdk/moment/utils/GUIDHelper;->mSp:Landroid/content/SharedPreferences;

    .line 41
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, "dirFile":Ljava/io/File;
    :try_start_65
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_71

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c5

    .line 44
    :cond_71
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/tapsdk/moment/utils/GUIDHelper;->mCacheFile:Ljava/io/File;

    .line 46
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_ab

    iget-object v3, p0, Lcom/tapsdk/moment/utils/GUIDHelper;->mCacheFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 47
    :cond_ab
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GUID File Create Success:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tapsdk/moment/utils/GUIDHelper;->getUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_c5} :catch_c6

    .line 52
    :cond_c5
    goto :goto_ca

    .line 50
    :catch_c6
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    .end local v0    # "e":Ljava/io/IOException;
    :goto_ca
    return-void
.end method
