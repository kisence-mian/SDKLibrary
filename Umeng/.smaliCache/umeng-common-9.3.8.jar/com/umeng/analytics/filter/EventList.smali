.class public Lcom/umeng/analytics/filter/EventList;
.super Lcom/umeng/analytics/filter/c;
.source "EventList.java"

# interfaces
.implements Lcom/umeng/commonsdk/utils/FileLockCallback;


# static fields
.field private static final DELETE_LIST_DATA:I = 0x2

.field private static final LOAD_LIST_DATA:I = 0x1

.field private static final SAVE_LIST_DATA:I


# instance fields
.field private mAppContext:Landroid/content/Context;

.field protected mEventList:Ljava/lang/String;

.field protected mEventListKey:Ljava/lang/String;

.field protected mEventListName:Ljava/lang/String;

.field protected mEventListVersionKey:Ljava/lang/String;

.field private mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcom/umeng/analytics/filter/c;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/umeng/analytics/filter/EventList;->mEventListName:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/umeng/analytics/filter/EventList;->mEventListKey:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mEventListVersionKey:Ljava/lang/String;

    .line 49
    new-instance p1, Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-direct {p1}, Lcom/umeng/commonsdk/utils/FileLockUtil;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/filter/EventList;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    .line 50
    return-void
.end method

.method private deleteDataFile(Ljava/io/File;)V
    .registers 4

    .line 138
    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    .line 139
    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    monitor-enter v0

    .line 140
    :try_start_7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 143
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p1

    .line 145
    :cond_15
    :goto_15
    return-void
.end method

.method private loadEventListFromFile(Landroid/content/Context;Ljava/io/File;)Z
    .registers 11

    .line 77
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 78
    const/4 v0, 0x0

    .line 81
    :try_start_10
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 82
    new-instance p2, Ljava/io/BufferedReader;

    invoke-direct {p2, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_b2

    .line 83
    :try_start_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    nop

    .line 85
    :goto_20
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 88
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ab

    .line 91
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    iget-object v3, p0, Lcom/umeng/analytics/filter/EventList;->mEventListVersionKey:Ljava/lang/String;

    const-string v4, ""

    invoke-static {p1, v3, v4}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    iput-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/umeng/analytics/filter/EventList;->eventListChange()V

    .line 95
    const-string v4, "MobclickRT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> loadEventListFromFile: mEventList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_8a

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 101
    iput-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    .line 102
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/filter/EventList;->setMD5ClearFlag(Z)V
    :try_end_71
    .catchall {:try_start_1a .. :try_end_71} :catchall_b0

    .line 103
    nop

    .line 124
    nop

    .line 126
    :try_start_73
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    .line 129
    goto :goto_7b

    .line 127
    :catchall_77
    move-exception p2

    .line 128
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 129
    :goto_7b
    return v5

    .line 107
    :cond_7c
    :try_start_7c
    invoke-virtual {p0, v5}, Lcom/umeng/analytics/filter/EventList;->setMD5ClearFlag(Z)V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_b0

    .line 108
    nop

    .line 124
    nop

    .line 126
    :try_start_81
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_85

    .line 129
    goto :goto_89

    .line 127
    :catchall_85
    move-exception p2

    .line 128
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 129
    :goto_89
    return v1

    .line 112
    :cond_8a
    :try_start_8a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 113
    iput-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/umeng/analytics/filter/EventList;->eventListChange()V
    :try_end_95
    .catchall {:try_start_8a .. :try_end_95} :catchall_b0

    .line 115
    nop

    .line 124
    nop

    .line 126
    :try_start_97
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9b

    .line 129
    goto :goto_9f

    .line 127
    :catchall_9b
    move-exception p2

    .line 128
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 129
    :goto_9f
    return v5

    .line 117
    :cond_a0
    nop

    .line 124
    nop

    .line 126
    :try_start_a2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a6

    .line 129
    goto :goto_aa

    .line 127
    :catchall_a6
    move-exception p2

    .line 128
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 129
    :goto_aa
    return v1

    .line 124
    :cond_ab
    nop

    .line 126
    :try_start_ac
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_bf

    goto :goto_be

    .line 121
    :catchall_b0
    move-exception v0

    goto :goto_b6

    :catchall_b2
    move-exception p2

    move-object v7, v0

    move-object v0, p2

    move-object p2, v7

    .line 122
    :goto_b6
    :try_start_b6
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_c4

    .line 124
    if-eqz p2, :cond_d0

    .line 126
    :try_start_bb
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_bf

    .line 129
    :goto_be
    goto :goto_d0

    .line 127
    :catchall_bf
    move-exception p2

    .line 128
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_be

    .line 124
    :catchall_c4
    move-exception v0

    if-eqz p2, :cond_cf

    .line 126
    :try_start_c7
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_cb

    .line 129
    goto :goto_cf

    .line 127
    :catchall_cb
    move-exception p2

    .line 128
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 129
    :cond_cf
    :goto_cf
    throw v0

    .line 134
    :cond_d0
    :goto_d0
    return v1
.end method

.method private saveEventListToFile(Landroid/content/Context;Ljava/io/File;)V
    .registers 4

    .line 151
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 152
    iget-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 153
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 156
    goto :goto_16

    .line 154
    :catchall_12
    move-exception p2

    .line 155
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 157
    :goto_16
    return-void
.end method


# virtual methods
.method public enabled()Z
    .registers 2

    .line 57
    monitor-enter p0

    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 59
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 61
    :cond_8
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 63
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method protected eventListChange()V
    .registers 1

    .line 72
    return-void
.end method

.method public matchHit(Ljava/lang/String;)Z
    .registers 2

    .line 188
    const/4 p1, 0x0

    return p1
.end method

.method public onFileLock(Ljava/io/File;I)Z
    .registers 5

    .line 274
    const/4 v0, 0x1

    if-nez p2, :cond_e

    .line 275
    monitor-enter p0

    .line 276
    :try_start_4
    iget-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, p2, p1}, Lcom/umeng/analytics/filter/EventList;->saveEventListToFile(Landroid/content/Context;Ljava/io/File;)V

    .line 277
    monitor-exit p0

    goto :goto_3c

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw p1

    .line 278
    :cond_e
    if-ne p2, v0, :cond_2d

    .line 279
    monitor-enter p0

    .line 280
    :try_start_11
    iget-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, p2, p1}, Lcom/umeng/analytics/filter/EventList;->loadEventListFromFile(Landroid/content/Context;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 281
    const-string p1, "MobclickRT"

    const-string p2, "--->>> find event list data file, load it."

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 283
    :cond_21
    const-string p1, "MobclickRT"

    const-string p2, "--->>> can\'t find event list file."

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :goto_28
    monitor-exit p0

    goto :goto_3c

    :catchall_2a
    move-exception p1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_2a

    throw p1

    .line 286
    :cond_2d
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3c

    .line 287
    monitor-enter p0

    .line 288
    const/4 p2, 0x0

    :try_start_32
    iput-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    .line 289
    invoke-direct {p0, p1}, Lcom/umeng/analytics/filter/EventList;->deleteDataFile(Ljava/io/File;)V

    .line 290
    monitor-exit p0

    goto :goto_3c

    :catchall_39
    move-exception p1

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_39

    throw p1

    .line 292
    :cond_3c
    :goto_3c
    return v0
.end method

.method public onFileLock(Ljava/lang/String;)Z
    .registers 2

    .line 262
    const/4 p1, 0x0

    return p1
.end method

.method public onFileLock(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 267
    const/4 p1, 0x0

    return p1
.end method

.method public onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 193
    const-string v0, "ekv_bl_ver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "MobclickRT"

    if-eqz v0, :cond_24

    if-nez p2, :cond_24

    .line 195
    const-string v0, "--->>> disable black list for ekv."

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/analytics/filter/EventList;->mEventListName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    iget-object v3, p0, Lcom/umeng/analytics/filter/EventList;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-virtual {v3, v0, p0, v1}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;I)V

    .line 199
    :cond_24
    const-string v0, "ekv_wl_ver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    if-nez p2, :cond_45

    .line 201
    const-string p1, "--->>> disable white list for ekv."

    invoke-static {v2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventListName:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    iget-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-virtual {p2, p1, p0, v1}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;I)V

    .line 205
    :cond_45
    return-void
.end method

.method public onPreProcessImprintKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_78

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 212
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> onPreProcessImprintKey: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "; len of value="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobclickRT"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> onPreProcessImprintKey: value = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iput-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    .line 216
    invoke-virtual {p0}, Lcom/umeng/analytics/filter/EventList;->eventListChange()V

    .line 217
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventListName:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_6f

    .line 220
    :try_start_60
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    .line 228
    goto :goto_6f

    .line 221
    :catch_64
    move-exception p2

    .line 224
    :try_start_65
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    .line 227
    goto :goto_6f

    .line 225
    :catch_69
    move-exception p2

    .line 226
    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 230
    :cond_6f
    :goto_6f
    iget-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p0, v0}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;I)V

    .line 231
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/filter/EventList;->setMD5ClearFlag(Z)V

    .line 233
    :cond_78
    const/4 p1, 0x1

    return p1
.end method

.method public register(Landroid/content/Context;)V
    .registers 5

    .line 165
    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    .line 168
    :cond_a
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/filter/EventList;->mEventListName:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/analytics/filter/EventList;->mEventListVersionKey:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 172
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    .line 173
    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-virtual {v0, p1, p0, v1}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;I)V

    goto :goto_37

    .line 175
    :cond_34
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/filter/EventList;->setMD5ClearFlag(Z)V

    .line 180
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 181
    iget-object p1, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventListKey:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registPreProcessCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintPreProcessCallback;)V

    .line 182
    iget-object p1, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventListVersionKey:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    .line 184
    :cond_55
    return-void
.end method

.method public setMD5ClearFlag(Z)V
    .registers 2

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventListName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ac

    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventListKey:Ljava/lang/String;

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ac

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventListName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/analytics/filter/EventList;->mEventListName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listKey:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/umeng/analytics/filter/EventList;->mEventListKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v1, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "]"

    if-nez v1, :cond_78

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listKeyValue:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 246
    :cond_78
    const-string v1, "listKeyValue:empty,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :goto_7d
    iget-object v1, p0, Lcom/umeng/analytics/filter/EventList;->mEventListVersionKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listKeyVer:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/umeng/analytics/filter/EventList;->mEventListVersionKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a7

    .line 251
    :cond_a2
    const-string v1, "listKeyVer:empty]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :goto_a7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 256
    :cond_ac
    const-string v0, "Uninitialized EventList."

    return-object v0
.end method
