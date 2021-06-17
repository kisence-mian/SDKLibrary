.class public Lcom/umeng/analytics/pro/o;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Lcom/umeng/analytics/pro/s;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-ne v0, p0, :cond_a

    .line 21
    return-void

    .line 24
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 25
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 26
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 3

    .line 42
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    if-eqz v0, :cond_a

    .line 43
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/s;

    invoke-interface {v0, p1}, Lcom/umeng/analytics/pro/s;->a(Ljava/lang/Throwable;)V

    goto :goto_10

    .line 45
    :cond_a
    iget-object p1, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/s;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/umeng/analytics/pro/s;->a(Ljava/lang/Throwable;)V

    .line 47
    :goto_10
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/pro/s;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/s;

    .line 30
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    .line 34
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/Throwable;)V

    .line 36
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_12

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eq v0, v1, :cond_12

    .line 37
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 39
    :cond_12
    return-void
.end method
