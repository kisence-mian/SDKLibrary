.class public Lcom/tds/common/log/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static mTagCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tds/common/log/Logger;",
            ">;"
        }
    .end annotation
.end field

.field static sHandlerThread:Lcom/tds/common/log/LogHandlerThread;


# instance fields
.field private logConfig:Lcom/tds/common/log/entities/LogConfig;

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tds/common/log/Logger;->mTagCache:Ljava/util/Map;

    .line 21
    new-instance v0, Lcom/tds/common/log/LogHandlerThread;

    const-string v1, "TDSLog_Thread"

    invoke-direct {v0, v1}, Lcom/tds/common/log/LogHandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tds/common/log/Logger;->sHandlerThread:Lcom/tds/common/log/LogHandlerThread;

    .line 22
    invoke-virtual {v0}, Lcom/tds/common/log/LogHandlerThread;->start()V

    .line 23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDS-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/log/Logger;->tag:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/tds/common/log/Logger;
    .registers 3
    .param p0, "sdkName"    # Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/tds/common/log/entities/LogConfig$Builder;

    invoke-direct {v0}, Lcom/tds/common/log/entities/LogConfig$Builder;-><init>()V

    .line 45
    invoke-virtual {v0, p0}, Lcom/tds/common/log/entities/LogConfig$Builder;->withTopic(Ljava/lang/String;)Lcom/tds/common/log/entities/LogConfig$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tds/common/log/entities/LogConfig$Builder;->build(Landroid/content/Context;)Lcom/tds/common/log/entities/LogConfig;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/tds/common/log/Logger;->getLogger(Lcom/tds/common/log/entities/LogConfig;)Lcom/tds/common/log/Logger;

    move-result-object v0

    return-object v0
.end method

.method private getCombinationTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "customTag"    # Ljava/lang/String;

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tds/common/log/Logger;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 156
    :cond_20
    iget-object v0, p0, Lcom/tds/common/log/Logger;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public static getCommonLogger()Lcom/tds/common/log/Logger;
    .registers 2

    .line 49
    new-instance v0, Lcom/tds/common/log/entities/LogConfig$Builder;

    invoke-direct {v0}, Lcom/tds/common/log/entities/LogConfig$Builder;-><init>()V

    .line 50
    const-string v1, "common_log"

    invoke-virtual {v0, v1}, Lcom/tds/common/log/entities/LogConfig$Builder;->withTopic(Ljava/lang/String;)Lcom/tds/common/log/entities/LogConfig$Builder;

    move-result-object v0

    .line 51
    const v1, 0x1ccd4a9

    invoke-virtual {v0, v1}, Lcom/tds/common/log/entities/LogConfig$Builder;->withSdkVersionCode(I)Lcom/tds/common/log/entities/LogConfig$Builder;

    move-result-object v0

    .line 52
    const-string v1, "3.2.1"

    invoke-virtual {v0, v1}, Lcom/tds/common/log/entities/LogConfig$Builder;->withSdkVersionName(Ljava/lang/String;)Lcom/tds/common/log/entities/LogConfig$Builder;

    move-result-object v0

    .line 53
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tds/common/log/entities/LogConfig$Builder;->build(Landroid/content/Context;)Lcom/tds/common/log/entities/LogConfig;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/tds/common/log/Logger;->getLogger(Lcom/tds/common/log/entities/LogConfig;)Lcom/tds/common/log/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Lcom/tds/common/log/entities/LogConfig;)Lcom/tds/common/log/Logger;
    .registers 5
    .param p0, "logConfig"    # Lcom/tds/common/log/entities/LogConfig;

    .line 31
    iget-object v0, p0, Lcom/tds/common/log/entities/LogConfig;->sdkName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    .line 32
    const-string v0, ""

    .line 33
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/tds/common/log/entities/LogConfig;->sdkName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tds/common/log/entities/LogConfig;->sdkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_25
    sget-object v1, Lcom/tds/common/log/Logger;->mTagCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/tds/common/log/Logger;->mTagCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/log/Logger;

    return-object v1

    .line 37
    :cond_36
    new-instance v1, Lcom/tds/common/log/Logger;

    invoke-direct {v1, v0}, Lcom/tds/common/log/Logger;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, "logger":Lcom/tds/common/log/Logger;
    iput-object p0, v1, Lcom/tds/common/log/Logger;->logConfig:Lcom/tds/common/log/entities/LogConfig;

    .line 39
    sget-object v2, Lcom/tds/common/log/Logger;->mTagCache:Ljava/util/Map;

    iget-object v3, p0, Lcom/tds/common/log/entities/LogConfig;->sdkName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-object v1

    .line 31
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "logger":Lcom/tds/common/log/Logger;
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "topic name empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Lcom/tds/common/log/entities/LogConfig;)V
    .registers 1
    .param p0, "logConfig"    # Lcom/tds/common/log/entities/LogConfig;

    .line 26
    invoke-static {p0}, Lcom/tds/common/log/Logger;->getLogger(Lcom/tds/common/log/entities/LogConfig;)Lcom/tds/common/log/Logger;

    .line 27
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 79
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/tds/common/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "customTag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/tds/common/log/Logger;->getCombinationTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/log/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "customTag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 92
    invoke-direct {p0, p1}, Lcom/tds/common/log/Logger;->getCombinationTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/log/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 88
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/tds/common/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 131
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "customTag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0, p1}, Lcom/tds/common/log/Logger;->getCombinationTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "customTag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 147
    invoke-direct {p0, p1}, Lcom/tds/common/log/Logger;->getCombinationTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 143
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 139
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 97
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "customTag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1}, Lcom/tds/common/log/Logger;->getCombinationTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/log/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "customTag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 110
    invoke-direct {p0, p1}, Lcom/tds/common/log/Logger;->getCombinationTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/log/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 106
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method

.method public logInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "logMessage"    # Ljava/lang/String;

    .line 152
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 61
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/tds/common/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "customTag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Lcom/tds/common/log/Logger;->getCombinationTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/log/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "customTag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 74
    invoke-direct {p0, p1}, Lcom/tds/common/log/Logger;->getCombinationTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/log/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 70
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/tds/common/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 115
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/tds/common/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "customTag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 119
    invoke-direct {p0, p1}, Lcom/tds/common/log/Logger;->getCombinationTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "customTag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 127
    invoke-direct {p0, p1}, Lcom/tds/common/log/Logger;->getCombinationTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    return-void
.end method

.method public w(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 123
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/tds/common/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    return-void
.end method
