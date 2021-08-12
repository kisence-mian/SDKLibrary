.class public Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;
.super Lcom/tencent/bugly/BuglyStrategy;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/crashreport/CrashReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserStrategy"
.end annotation


# instance fields
.field private a:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1231
    invoke-direct {p0}, Lcom/tencent/bugly/BuglyStrategy;-><init>()V

    .line 1232
    return-void
.end method


# virtual methods
.method public bridge synthetic getCrashHandleCallback()Lcom/tencent/bugly/BuglyStrategy$a;
    .registers 2

    .line 1227
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCrashHandleCallback()Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;
    .registers 2

    monitor-enter p0

    .line 1241
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->a:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 1241
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCrashHandleCallback(Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)V
    .registers 2

    monitor-enter p0

    .line 1251
    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->a:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1252
    monitor-exit p0

    return-void

    .line 1250
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
