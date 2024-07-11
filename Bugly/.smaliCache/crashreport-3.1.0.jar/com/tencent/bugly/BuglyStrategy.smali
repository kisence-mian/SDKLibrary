.class public Lcom/tencent/bugly/BuglyStrategy;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/BuglyStrategy$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/tencent/bugly/BuglyStrategy$a;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/BuglyStrategy;->g:Z

    .line 21
    iput-boolean v0, p0, Lcom/tencent/bugly/BuglyStrategy;->h:Z

    .line 26
    iput-boolean v0, p0, Lcom/tencent/bugly/BuglyStrategy;->i:Z

    .line 27
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/BuglyStrategy;->j:Ljava/lang/Class;

    .line 28
    iput-boolean v0, p0, Lcom/tencent/bugly/BuglyStrategy;->k:Z

    .line 29
    iput-boolean v0, p0, Lcom/tencent/bugly/BuglyStrategy;->l:Z

    .line 30
    iput-boolean v0, p0, Lcom/tencent/bugly/BuglyStrategy;->m:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/BuglyStrategy;->n:Z

    .line 300
    return-void
.end method


# virtual methods
.method public declared-synchronized getAppChannel()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 127
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/BuglyStrategy;->b:Ljava/lang/String;

    if-nez v0, :cond_b

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-object v0

    .line 127
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppPackageName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 147
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/BuglyStrategy;->c:Ljava/lang/String;

    if-nez v0, :cond_b

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-object v0

    .line 147
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppReportDelay()J
    .registers 3

    monitor-enter p0

    .line 163
    :try_start_1
    iget-wide v0, p0, Lcom/tencent/bugly/BuglyStrategy;->d:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    .line 163
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppVersion()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/BuglyStrategy;->a:Ljava/lang/String;

    if-nez v0, :cond_b

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-object v0

    .line 87
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCrashHandleCallback()Lcom/tencent/bugly/BuglyStrategy$a;
    .registers 2

    monitor-enter p0

    .line 280
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/BuglyStrategy;->o:Lcom/tencent/bugly/BuglyStrategy$a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 280
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeviceID()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 203
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/BuglyStrategy;->f:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 203
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLibBuglySOFilePath()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 183
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/BuglyStrategy;->e:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 183
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserInfoActivity()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 118
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/BuglyStrategy;->j:Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 118
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBuglyLogUpload()Z
    .registers 2

    monitor-enter p0

    .line 66
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/BuglyStrategy;->k:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 66
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnableANRCrashMonitor()Z
    .registers 2

    monitor-enter p0

    .line 263
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/BuglyStrategy;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 263
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnableNativeCrashMonitor()Z
    .registers 2

    monitor-enter p0

    .line 223
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/BuglyStrategy;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 223
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnableUserInfo()Z
    .registers 2

    monitor-enter p0

    .line 254
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/BuglyStrategy;->i:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 254
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isReplaceOldChannel()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Lcom/tencent/bugly/BuglyStrategy;->l:Z

    return v0
.end method

.method public declared-synchronized isUploadProcess()Z
    .registers 2

    monitor-enter p0

    .line 62
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/BuglyStrategy;->m:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 62
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recordUserInfoOnceADay()Z
    .registers 2

    monitor-enter p0

    .line 70
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/BuglyStrategy;->n:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 70
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppChannel(Ljava/lang/String;)Lcom/tencent/bugly/BuglyStrategy;
    .registers 2

    monitor-enter p0

    .line 137
    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/BuglyStrategy;->b:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 138
    monitor-exit p0

    return-object p0

    .line 136
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAppPackageName(Ljava/lang/String;)Lcom/tencent/bugly/BuglyStrategy;
    .registers 2

    monitor-enter p0

    .line 157
    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/BuglyStrategy;->c:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 158
    monitor-exit p0

    return-object p0

    .line 156
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAppReportDelay(J)Lcom/tencent/bugly/BuglyStrategy;
    .registers 3

    monitor-enter p0

    .line 173
    :try_start_1
    iput-wide p1, p0, Lcom/tencent/bugly/BuglyStrategy;->d:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 174
    monitor-exit p0

    return-object p0

    .line 172
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAppVersion(Ljava/lang/String;)Lcom/tencent/bugly/BuglyStrategy;
    .registers 2

    monitor-enter p0

    .line 97
    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/BuglyStrategy;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 98
    monitor-exit p0

    return-object p0

    .line 96
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBuglyLogUpload(Z)Lcom/tencent/bugly/BuglyStrategy;
    .registers 2

    monitor-enter p0

    .line 41
    :try_start_1
    iput-boolean p1, p0, Lcom/tencent/bugly/BuglyStrategy;->k:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 42
    monitor-exit p0

    return-object p0

    .line 40
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCrashHandleCallback(Lcom/tencent/bugly/BuglyStrategy$a;)Lcom/tencent/bugly/BuglyStrategy;
    .registers 2

    monitor-enter p0

    .line 290
    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/BuglyStrategy;->o:Lcom/tencent/bugly/BuglyStrategy$a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 291
    monitor-exit p0

    return-object p0

    .line 289
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDeviceID(Ljava/lang/String;)Lcom/tencent/bugly/BuglyStrategy;
    .registers 2

    monitor-enter p0

    .line 213
    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/BuglyStrategy;->f:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 214
    monitor-exit p0

    return-object p0

    .line 212
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEnableANRCrashMonitor(Z)Lcom/tencent/bugly/BuglyStrategy;
    .registers 2

    monitor-enter p0

    .line 270
    :try_start_1
    iput-boolean p1, p0, Lcom/tencent/bugly/BuglyStrategy;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 271
    monitor-exit p0

    return-object p0

    .line 269
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEnableNativeCrashMonitor(Z)Lcom/tencent/bugly/BuglyStrategy;
    .registers 2

    monitor-enter p0

    .line 233
    :try_start_1
    iput-boolean p1, p0, Lcom/tencent/bugly/BuglyStrategy;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 234
    monitor-exit p0

    return-object p0

    .line 232
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEnableUserInfo(Z)Lcom/tencent/bugly/BuglyStrategy;
    .registers 2

    monitor-enter p0

    .line 244
    :try_start_1
    iput-boolean p1, p0, Lcom/tencent/bugly/BuglyStrategy;->i:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 245
    monitor-exit p0

    return-object p0

    .line 243
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLibBuglySOFilePath(Ljava/lang/String;)Lcom/tencent/bugly/BuglyStrategy;
    .registers 2

    monitor-enter p0

    .line 193
    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/BuglyStrategy;->e:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 194
    monitor-exit p0

    return-object p0

    .line 192
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRecordUserInfoOnceADay(Z)Lcom/tencent/bugly/BuglyStrategy;
    .registers 2

    monitor-enter p0

    .line 52
    :try_start_1
    iput-boolean p1, p0, Lcom/tencent/bugly/BuglyStrategy;->n:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 53
    monitor-exit p0

    return-object p0

    .line 51
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setReplaceOldChannel(Z)V
    .registers 2

    .line 78
    iput-boolean p1, p0, Lcom/tencent/bugly/BuglyStrategy;->l:Z

    .line 79
    return-void
.end method

.method public declared-synchronized setUploadProcess(Z)Lcom/tencent/bugly/BuglyStrategy;
    .registers 2

    monitor-enter p0

    .line 57
    :try_start_1
    iput-boolean p1, p0, Lcom/tencent/bugly/BuglyStrategy;->m:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 58
    monitor-exit p0

    return-object p0

    .line 56
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserInfoActivity(Ljava/lang/Class;)Lcom/tencent/bugly/BuglyStrategy;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/tencent/bugly/BuglyStrategy;"
        }
    .end annotation

    monitor-enter p0

    .line 108
    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/BuglyStrategy;->j:Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 109
    monitor-exit p0

    return-object p0

    .line 107
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
