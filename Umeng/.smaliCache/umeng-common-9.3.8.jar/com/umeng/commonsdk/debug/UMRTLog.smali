.class public Lcom/umeng/commonsdk/debug/UMRTLog;
.super Ljava/lang/Object;
.source "UMRTLog.java"


# static fields
.field private static final RTLOG_ENABLE:Ljava/lang/String; = "1"

.field private static final RTLOG_PROP:Ljava/lang/String; = "debug.umeng.rtlog"

.field public static final RTLOG_TAG:Ljava/lang/String; = "MobclickRT"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 52
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 53
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_e
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 34
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 35
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_e
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 46
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 47
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_e
    return-void
.end method

.method public static sd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 83
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 84
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_e
    return-void
.end method

.method public static se(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 65
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 66
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_e
    return-void
.end method

.method private static shouldOutput()Z
    .registers 2

    .line 27
    const-string v0, "debug.umeng.rtlog"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 28
    const/4 v0, 0x1

    return v0

    .line 30
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static si(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 77
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 78
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_e
    return-void
.end method

.method public static sv(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 89
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 90
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_e
    return-void
.end method

.method public static sw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 71
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 72
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_e
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 58
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 59
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_e
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 40
    invoke-static {}, Lcom/umeng/commonsdk/debug/UMRTLog;->shouldOutput()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 41
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_e
    return-void
.end method

.method private static warpperMsg(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    .line 96
    const-string v0, ":"

    if-nez p1, :cond_5

    .line 97
    return-object p0

    .line 100
    :cond_5
    const/4 p1, 0x0

    .line 102
    :try_start_6
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 103
    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_48

    .line 104
    const/4 p1, 0x2

    aget-object v2, v1, p1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 105
    aget-object v3, v1, p1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 106
    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    .line 107
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    const-string v4, "<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 114
    const-string p1, "> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_47
    .catchall {:try_start_6 .. :try_end_47} :catchall_4e

    move-object p1, v1

    .line 119
    :cond_48
    nop

    .line 121
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 117
    :catchall_4e
    move-exception p1

    .line 118
    return-object p0
.end method
