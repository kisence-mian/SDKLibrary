.class public final Lcom/kwad/sdk/crash/c/a;
.super Ljava/lang/Object;


# direct methods
.method private static a()I
    .registers 1

    const/4 v0, 0x2

    return v0
.end method

.method private static a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExceptionCollector"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0}, Lcom/kwad/sdk/crash/report/request/c;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;)Lcom/kwad/sdk/crash/report/ReportEvent;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/kwad/sdk/crash/report/request/b;

    invoke-direct {p0}, Lcom/kwad/sdk/crash/report/request/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/crash/report/request/b;->a(Ljava/util/List;)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/crash/model/message/CaughtExceptionMessage;

    invoke-direct {v0}, Lcom/kwad/sdk/crash/model/message/CaughtExceptionMessage;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/crash/model/message/CaughtExceptionMessage;->mLogUUID:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/crash/model/message/CaughtExceptionMessage;->mCrashDetail:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/crash/d;->a()Lcom/kwad/sdk/crash/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/crash/d;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/lang/Throwable;Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Landroid/content/Context;)V

    invoke-static {}, Lcom/kwad/sdk/crash/c/a;->a()I

    move-result p0

    invoke-static {v0, p0}, Lcom/kwad/sdk/crash/utils/f;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;I)V

    invoke-static {v0}, Lcom/kwad/sdk/crash/c/a;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;)V

    return-void
.end method
