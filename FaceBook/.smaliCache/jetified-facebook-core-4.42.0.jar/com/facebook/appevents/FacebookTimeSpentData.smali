.class Lcom/facebook/appevents/FacebookTimeSpentData;
.super Ljava/lang/Object;
.source "FacebookTimeSpentData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV2;,
        Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV1;
    }
.end annotation


# static fields
.field private static final APP_ACTIVATE_SUPPRESSION_PERIOD_IN_MILLISECONDS:J = 0x493e0L

.field private static final FIRST_TIME_LOAD_RESUME_TIME:J = -0x1L

.field private static final INACTIVE_SECONDS_QUANTA:[J

.field private static final INTERRUPTION_THRESHOLD_MILLISECONDS:J = 0x3e8L

.field private static final NUM_MILLISECONDS_IDLE_TO_BE_NEW_SESSION:J = 0xea60L

.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private firstOpenSourceApplication:Ljava/lang/String;

.field private interruptionCount:I

.field private isAppActive:Z

.field private isWarmLaunch:Z

.field private lastActivateEventLoggedTime:J

.field private lastResumeTime:J

.field private lastSuspendTime:J

.field private millisecondsSpentInSession:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lcom/facebook/appevents/FacebookTimeSpentData;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/FacebookTimeSpentData;->TAG:Ljava/lang/String;

    .line 45
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_12

    sput-object v0, Lcom/facebook/appevents/FacebookTimeSpentData;->INACTIVE_SECONDS_QUANTA:[J

    return-void

    :array_12
    .array-data 8
        0x493e0
        0xdbba0
        0x1b7740
        0x36ee80
        0x1499700
        0x2932e00
        0x5265c00
        0xa4cb800
        0xf731400
        0x240c8400
        0x48190800
        0x6c258c00
        0x90321000L
        0x134fd9000L
        0x1cf7c5800L
        0x269fb2000L
        0x30479e800L
        0x39ef8b000L
        0x757b12c00L
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-direct {p0}, Lcom/facebook/appevents/FacebookTimeSpentData;->resetSession()V

    .line 174
    return-void
.end method

.method private constructor <init>(JJJI)V
    .registers 8
    .param p1, "lastResumeTime"    # J
    .param p3, "lastSuspendTime"    # J
    .param p5, "millisecondsSpentInSession"    # J
    .param p7, "interruptionCount"    # I

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-direct {p0}, Lcom/facebook/appevents/FacebookTimeSpentData;->resetSession()V

    .line 126
    iput-wide p1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastResumeTime:J

    .line 127
    iput-wide p3, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastSuspendTime:J

    .line 128
    iput-wide p5, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->millisecondsSpentInSession:J

    .line 129
    iput p7, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->interruptionCount:I

    .line 130
    return-void
.end method

.method synthetic constructor <init>(JJJILcom/facebook/appevents/FacebookTimeSpentData$1;)V
    .registers 9
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # J
    .param p7, "x3"    # I
    .param p8, "x4"    # Lcom/facebook/appevents/FacebookTimeSpentData$1;

    .line 33
    invoke-direct/range {p0 .. p7}, Lcom/facebook/appevents/FacebookTimeSpentData;-><init>(JJJI)V

    return-void
.end method

.method private constructor <init>(JJJILjava/lang/String;)V
    .registers 9
    .param p1, "lastResumeTime"    # J
    .param p3, "lastSuspendTime"    # J
    .param p5, "millisecondsSpentInSession"    # J
    .param p7, "interruptionCount"    # I
    .param p8, "firstOpenSourceApplication"    # Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-direct {p0}, Lcom/facebook/appevents/FacebookTimeSpentData;->resetSession()V

    .line 187
    iput-wide p1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastResumeTime:J

    .line 188
    iput-wide p3, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastSuspendTime:J

    .line 189
    iput-wide p5, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->millisecondsSpentInSession:J

    .line 190
    iput p7, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->interruptionCount:I

    .line 191
    iput-object p8, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->firstOpenSourceApplication:Ljava/lang/String;

    .line 192
    return-void
.end method

.method synthetic constructor <init>(JJJILjava/lang/String;Lcom/facebook/appevents/FacebookTimeSpentData$1;)V
    .registers 10
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # J
    .param p7, "x3"    # I
    .param p8, "x4"    # Ljava/lang/String;
    .param p9, "x5"    # Lcom/facebook/appevents/FacebookTimeSpentData$1;

    .line 33
    invoke-direct/range {p0 .. p8}, Lcom/facebook/appevents/FacebookTimeSpentData;-><init>(JJJILjava/lang/String;)V

    return-void
.end method

.method private static getQuantaIndex(J)I
    .registers 6
    .param p0, "timeBetweenSessions"    # J

    .line 299
    const/4 v0, 0x0

    .line 301
    .local v0, "quantaIndex":I
    :goto_1
    sget-object v1, Lcom/facebook/appevents/FacebookTimeSpentData;->INACTIVE_SECONDS_QUANTA:[J

    array-length v2, v1

    if-ge v0, v2, :cond_f

    aget-wide v2, v1, v0

    cmp-long v1, v2, p0

    if-gez v1, :cond_f

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 308
    :cond_f
    return v0
.end method

.method private isColdLaunch()Z
    .registers 3

    .line 326
    iget-boolean v0, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->isWarmLaunch:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 327
    .local v0, "result":Z
    iput-boolean v1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->isWarmLaunch:Z

    .line 328
    return v0
.end method

.method private logAppDeactivatedEvent(Lcom/facebook/appevents/AppEventsLogger;J)V
    .registers 9
    .param p1, "logger"    # Lcom/facebook/appevents/AppEventsLogger;
    .param p2, "interruptionDurationMillis"    # J

    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v0, "eventParams":Landroid/os/Bundle;
    iget v1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->interruptionCount:I

    const-string v2, "fb_mobile_app_interruptions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 287
    invoke-static {p2, p3}, Lcom/facebook/appevents/FacebookTimeSpentData;->getQuantaIndex(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 284
    const-string v3, "session_quanta_%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 282
    const-string v2, "fb_mobile_time_between_sessions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->firstOpenSourceApplication:Ljava/lang/String;

    const-string v2, "fb_mobile_launch_source"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-wide v1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->millisecondsSpentInSession:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-double v1, v1

    const-string v3, "fb_mobile_deactivate_app"

    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 295
    invoke-direct {p0}, Lcom/facebook/appevents/FacebookTimeSpentData;->resetSession()V

    .line 296
    return-void
.end method

.method private resetSession()V
    .registers 4

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->isAppActive:Z

    .line 313
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastResumeTime:J

    .line 314
    iput-wide v1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastSuspendTime:J

    .line 315
    iput v0, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->interruptionCount:I

    .line 316
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->millisecondsSpentInSession:J

    .line 317
    return-void
.end method

.method private wasSuspendedEver()Z
    .registers 6

    .line 320
    iget-wide v0, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastSuspendTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 11

    .line 195
    new-instance v9, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV2;

    iget-wide v1, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastResumeTime:J

    iget-wide v3, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastSuspendTime:J

    iget-wide v5, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->millisecondsSpentInSession:J

    iget v7, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->interruptionCount:I

    iget-object v8, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->firstOpenSourceApplication:Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV2;-><init>(JJJILjava/lang/String;)V

    return-object v9
.end method


# virtual methods
.method onResume(Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V
    .registers 13
    .param p1, "logger"    # Lcom/facebook/appevents/AppEventsLogger;
    .param p2, "eventTime"    # J
    .param p4, "sourceApplicationInfo"    # Ljava/lang/String;

    .line 222
    move-wide v0, p2

    .line 228
    .local v0, "now":J
    invoke-direct {p0}, Lcom/facebook/appevents/FacebookTimeSpentData;->isColdLaunch()Z

    move-result v2

    if-nez v2, :cond_12

    iget-wide v2, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastActivateEventLoggedTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x493e0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2e

    .line 230
    :cond_12
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v2, "eventParams":Landroid/os/Bundle;
    const-string v3, "fb_mobile_launch_source"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v3, "fb_mobile_activate_app"

    invoke-virtual {p1, v3, v2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 235
    iput-wide v0, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastActivateEventLoggedTime:J

    .line 236
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v3

    sget-object v4, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq v3, v4, :cond_2e

    .line 237
    invoke-virtual {p1}, Lcom/facebook/appevents/AppEventsLogger;->flush()V

    .line 243
    .end local v2    # "eventParams":Landroid/os/Bundle;
    :cond_2e
    iget-boolean v2, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->isAppActive:Z

    if-eqz v2, :cond_3c

    .line 244
    sget-object v2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v3, Lcom/facebook/appevents/FacebookTimeSpentData;->TAG:Ljava/lang/String;

    const-string v4, "Resume for active app"

    invoke-static {v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void

    .line 248
    :cond_3c
    invoke-direct {p0}, Lcom/facebook/appevents/FacebookTimeSpentData;->wasSuspendedEver()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_49

    iget-wide v5, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastSuspendTime:J

    sub-long v5, v0, v5

    goto :goto_4a

    :cond_49
    move-wide v5, v3

    .line 249
    .local v5, "interruptionDurationMillis":J
    :goto_4a
    cmp-long v2, v5, v3

    if-gez v2, :cond_59

    .line 250
    sget-object v2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v3, Lcom/facebook/appevents/FacebookTimeSpentData;->TAG:Ljava/lang/String;

    const-string v4, "Clock skew detected"

    invoke-static {v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-wide/16 v5, 0x0

    .line 256
    :cond_59
    const-wide/32 v2, 0xea60

    const/4 v4, 0x1

    cmp-long v7, v5, v2

    if-lez v7, :cond_65

    .line 257
    invoke-direct {p0, p1, v5, v6}, Lcom/facebook/appevents/FacebookTimeSpentData;->logAppDeactivatedEvent(Lcom/facebook/appevents/AppEventsLogger;J)V

    goto :goto_70

    .line 261
    :cond_65
    const-wide/16 v2, 0x3e8

    cmp-long v7, v5, v2

    if-lez v7, :cond_70

    .line 262
    iget v2, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->interruptionCount:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->interruptionCount:I

    .line 267
    :cond_70
    :goto_70
    iget v2, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->interruptionCount:I

    if-nez v2, :cond_76

    .line 268
    iput-object p4, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->firstOpenSourceApplication:Ljava/lang/String;

    .line 271
    :cond_76
    iput-wide v0, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastResumeTime:J

    .line 272
    iput-boolean v4, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->isAppActive:Z

    .line 273
    return-void
.end method

.method onSuspend(Lcom/facebook/appevents/AppEventsLogger;J)V
    .registers 11
    .param p1, "logger"    # Lcom/facebook/appevents/AppEventsLogger;
    .param p2, "eventTime"    # J

    .line 205
    iget-boolean v0, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->isAppActive:Z

    if-nez v0, :cond_e

    .line 206
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v1, Lcom/facebook/appevents/FacebookTimeSpentData;->TAG:Ljava/lang/String;

    const-string v2, "Suspend for inactive app"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void

    .line 210
    :cond_e
    move-wide v0, p2

    .line 211
    .local v0, "now":J
    iget-wide v2, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastResumeTime:J

    sub-long v2, v0, v2

    .line 212
    .local v2, "delta":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_24

    .line 213
    sget-object v4, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v5, Lcom/facebook/appevents/FacebookTimeSpentData;->TAG:Ljava/lang/String;

    const-string v6, "Clock skew detected"

    invoke-static {v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-wide/16 v2, 0x0

    .line 216
    :cond_24
    iget-wide v4, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->millisecondsSpentInSession:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->millisecondsSpentInSession:J

    .line 217
    iput-wide v0, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->lastSuspendTime:J

    .line 218
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/facebook/appevents/FacebookTimeSpentData;->isAppActive:Z

    .line 219
    return-void
.end method
