.class public Lcom/umeng/analytics/vshelper/PageNameMonitor;
.super Ljava/lang/Object;
.source "PageNameMonitor.java"

# interfaces
.implements Lcom/umeng/analytics/vshelper/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/vshelper/PageNameMonitor$a;
    }
.end annotation


# static fields
.field private static currentActivity:Ljava/lang/String;

.field private static currentCustomPage:Ljava/lang/String;

.field private static lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentActivity:Ljava/lang/String;

    .line 6
    sput-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentCustomPage:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/vshelper/PageNameMonitor$1;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lcom/umeng/analytics/vshelper/PageNameMonitor;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/umeng/analytics/vshelper/PageNameMonitor;
    .registers 1

    .line 18
    invoke-static {}, Lcom/umeng/analytics/vshelper/PageNameMonitor$a;->a()Lcom/umeng/analytics/vshelper/PageNameMonitor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public activityPause(Ljava/lang/String;)V
    .registers 3

    .line 30
    sget-object p1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 31
    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentActivity:Ljava/lang/String;

    .line 32
    monitor-exit p1

    .line 33
    return-void

    .line 32
    :catchall_8
    move-exception v0

    monitor-exit p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public activityResume(Ljava/lang/String;)V
    .registers 3

    .line 23
    sget-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_3
    sput-object p1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentActivity:Ljava/lang/String;

    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 25
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public customPageBegin(Ljava/lang/String;)V
    .registers 3

    .line 37
    sget-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_3
    sput-object p1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentCustomPage:Ljava/lang/String;

    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 39
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public customPageEnd(Ljava/lang/String;)V
    .registers 3

    .line 44
    sget-object p1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 45
    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentCustomPage:Ljava/lang/String;

    .line 46
    monitor-exit p1

    .line 47
    return-void

    .line 46
    :catchall_8
    move-exception v0

    monitor-exit p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public getCurrenPageName()Ljava/lang/String;
    .registers 3

    .line 57
    sget-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_3
    sget-object v1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentCustomPage:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 59
    monitor-exit v0

    return-object v1

    .line 60
    :cond_9
    sget-object v1, Lcom/umeng/analytics/vshelper/PageNameMonitor;->currentActivity:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 61
    monitor-exit v0

    return-object v1

    .line 63
    :cond_f
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 64
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
