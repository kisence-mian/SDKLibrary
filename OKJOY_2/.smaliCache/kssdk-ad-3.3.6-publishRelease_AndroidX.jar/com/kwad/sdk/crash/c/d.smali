.class public Lcom/kwad/sdk/crash/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private volatile a:Z

.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/crash/c/d;->a:Z

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/crash/c/d;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p1, p0, Lcom/kwad/sdk/crash/c/d;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    :try_start_0
    iget-boolean v0, p0, Lcom/kwad/sdk/crash/c/d;->a:Z
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_64

    const-string v1, "ExceptionCollector"

    if-eqz v0, :cond_26

    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK\u6355\u83b7 uncaughtException \u6b63\u5728\u5904\u7406 ex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_64

    iget-object v0, p0, Lcom/kwad/sdk/crash/c/d;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_26
    const/4 v0, 0x1

    :try_start_27
    iput-boolean v0, p0, Lcom/kwad/sdk/crash/c/d;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_65

    invoke-static {p2}, Lcom/kwad/sdk/crash/b/a;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-static {}, Lcom/kwad/sdk/crash/c/c;->d()Lcom/kwad/sdk/crash/c/c;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/crash/model/message/JavaExceptionMessage;

    invoke-direct {v1}, Lcom/kwad/sdk/crash/model/message/JavaExceptionMessage;-><init>()V

    iget-object v2, p0, Lcom/kwad/sdk/crash/c/d;->c:Landroid/content/Context;

    invoke-virtual {v0, p2, v1, v2}, Lcom/kwad/sdk/crash/c/c;->a(Ljava/lang/Throwable;Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Landroid/content/Context;)V
    :try_end_63
    .catchall {:try_start_27 .. :try_end_63} :catchall_64

    goto :goto_65

    :catchall_64
    move-exception v0

    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/kwad/sdk/crash/c/d;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
