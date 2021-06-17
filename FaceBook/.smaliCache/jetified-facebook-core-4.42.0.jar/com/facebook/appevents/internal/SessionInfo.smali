.class Lcom/facebook/appevents/internal/SessionInfo;
.super Ljava/lang/Object;
.source "SessionInfo.java"


# static fields
.field private static final INTERRUPTION_COUNT_KEY:Ljava/lang/String; = "com.facebook.appevents.SessionInfo.interruptionCount"

.field private static final LAST_SESSION_INFO_END_KEY:Ljava/lang/String; = "com.facebook.appevents.SessionInfo.sessionEndTime"

.field private static final LAST_SESSION_INFO_START_KEY:Ljava/lang/String; = "com.facebook.appevents.SessionInfo.sessionStartTime"

.field private static final SESSION_ID_KEY:Ljava/lang/String; = "com.facebook.appevents.SessionInfo.sessionId"


# instance fields
.field private diskRestoreTime:Ljava/lang/Long;

.field private interruptionCount:I

.field private sessionId:Ljava/util/UUID;

.field private sessionLastEventTime:Ljava/lang/Long;

.field private sessionStartTime:Ljava/lang/Long;

.field private sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 4
    .param p1, "sessionStartTime"    # Ljava/lang/Long;
    .param p2, "sessionLastEventTime"    # Ljava/lang/Long;

    .line 48
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;)V
    .registers 4
    .param p1, "sessionStartTime"    # Ljava/lang/Long;
    .param p2, "sessionLastEventTime"    # Ljava/lang/Long;
    .param p3, "sessionId"    # Ljava/util/UUID;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionStartTime:Ljava/lang/Long;

    .line 53
    iput-object p2, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionLastEventTime:Ljava/lang/Long;

    .line 54
    iput-object p3, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionId:Ljava/util/UUID;

    .line 55
    return-void
.end method

.method public static clearSavedSessionFromDisk()V
    .registers 3

    .line 85
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 86
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 87
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "com.facebook.appevents.SessionInfo.sessionStartTime"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    const-string v2, "com.facebook.appevents.SessionInfo.sessionEndTime"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string v2, "com.facebook.appevents.SessionInfo.interruptionCount"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string v2, "com.facebook.appevents.SessionInfo.sessionId"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    invoke-static {}, Lcom/facebook/appevents/internal/SourceApplicationInfo;->clearSavedSourceApplicationInfoFromDisk()V

    .line 94
    return-void
.end method

.method public static getStoredSessionInfo()Lcom/facebook/appevents/internal/SessionInfo;
    .registers 10

    .line 64
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "com.facebook.appevents.SessionInfo.sessionStartTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 67
    .local v4, "startTime":J
    const-string v1, "com.facebook.appevents.SessionInfo.sessionEndTime"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 68
    .local v6, "endTime":J
    const-string v1, "com.facebook.appevents.SessionInfo.sessionId"

    const/4 v8, 0x0

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "sessionIDStr":Ljava/lang/String;
    cmp-long v9, v4, v2

    if-eqz v9, :cond_55

    cmp-long v9, v6, v2

    if-eqz v9, :cond_55

    if-nez v1, :cond_28

    goto :goto_55

    .line 74
    :cond_28
    new-instance v2, Lcom/facebook/appevents/internal/SessionInfo;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v2, v3, v8}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 75
    .local v2, "sessionInfo":Lcom/facebook/appevents/internal/SessionInfo;
    const/4 v3, 0x0

    const-string v8, "com.facebook.appevents.SessionInfo.interruptionCount"

    invoke-interface {v0, v8, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/facebook/appevents/internal/SessionInfo;->interruptionCount:I

    .line 76
    invoke-static {}, Lcom/facebook/appevents/internal/SourceApplicationInfo;->getStoredSourceApplicatioInfo()Lcom/facebook/appevents/internal/SourceApplicationInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/appevents/internal/SessionInfo;->sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/appevents/internal/SessionInfo;->diskRestoreTime:Ljava/lang/Long;

    .line 78
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/appevents/internal/SessionInfo;->sessionId:Ljava/util/UUID;

    .line 79
    return-object v2

    .line 71
    .end local v2    # "sessionInfo":Lcom/facebook/appevents/internal/SessionInfo;
    :cond_55
    :goto_55
    return-object v8
.end method


# virtual methods
.method public getDiskRestoreTime()J
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->diskRestoreTime:Ljava/lang/Long;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public getInterruptionCount()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->interruptionCount:I

    return v0
.end method

.method public getSessionId()Ljava/util/UUID;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionId:Ljava/util/UUID;

    return-object v0
.end method

.method public getSessionLastEventTime()Ljava/lang/Long;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionLastEventTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getSessionLength()J
    .registers 5

    .line 125
    iget-object v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionLastEventTime:Ljava/lang/Long;

    if-nez v0, :cond_9

    goto :goto_15

    .line 129
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    .line 126
    :cond_15
    :goto_15
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSessionStartTime()Ljava/lang/Long;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionStartTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getSourceApplicationInfo()Lcom/facebook/appevents/internal/SourceApplicationInfo;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;

    return-object v0
.end method

.method public incrementInterruptionCount()V
    .registers 2

    .line 113
    iget v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->interruptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/appevents/internal/SessionInfo;->interruptionCount:I

    .line 114
    return-void
.end method

.method public setSessionLastEventTime(Ljava/lang/Long;)V
    .registers 2
    .param p1, "sessionLastEventTime"    # Ljava/lang/Long;

    .line 105
    iput-object p1, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionLastEventTime:Ljava/lang/Long;

    .line 106
    return-void
.end method

.method public setSourceApplicationInfo(Lcom/facebook/appevents/internal/SourceApplicationInfo;)V
    .registers 2
    .param p1, "sourceApplicationInfo"    # Lcom/facebook/appevents/internal/SourceApplicationInfo;

    .line 137
    iput-object p1, p0, Lcom/facebook/appevents/internal/SessionInfo;->sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;

    .line 138
    return-void
.end method

.method public writeSessionToDisk()V
    .registers 6

    .line 146
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 148
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "com.facebook.appevents.SessionInfo.sessionStartTime"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 149
    iget-object v2, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionLastEventTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "com.facebook.appevents.SessionInfo.sessionEndTime"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 150
    iget v2, p0, Lcom/facebook/appevents/internal/SessionInfo;->interruptionCount:I

    const-string v3, "com.facebook.appevents.SessionInfo.interruptionCount"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 151
    iget-object v2, p0, Lcom/facebook/appevents/internal/SessionInfo;->sessionId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.facebook.appevents.SessionInfo.sessionId"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    iget-object v2, p0, Lcom/facebook/appevents/internal/SessionInfo;->sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;

    if-eqz v2, :cond_3e

    .line 155
    invoke-virtual {v2}, Lcom/facebook/appevents/internal/SourceApplicationInfo;->writeSourceApplicationInfoToDisk()V

    .line 157
    :cond_3e
    return-void
.end method
