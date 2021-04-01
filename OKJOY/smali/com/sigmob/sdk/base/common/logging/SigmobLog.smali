.class public Lcom/sigmob/sdk/base/common/logging/SigmobLog;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "com.sigmob"

.field private static final b:Ljava/lang/String; = "sigmob"

.field private static final c:Ljava/util/logging/Logger;

.field private static final d:Lcom/sigmob/sdk/base/common/logging/SigmobLog$SigmobLogHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "com.sigmob"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->c:Ljava/util/logging/Logger;

    new-instance v0, Lcom/sigmob/sdk/base/common/logging/SigmobLog$SigmobLogHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog$SigmobLogHandler;-><init>(Lcom/sigmob/sdk/base/common/logging/SigmobLog$1;)V

    sput-object v0, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d:Lcom/sigmob/sdk/base/common/logging/SigmobLog$SigmobLogHandler;

    sget-object v0, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->c:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    sget-object v0, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d:Lcom/sigmob/sdk/base/common/logging/SigmobLog$SigmobLogHandler;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog$SigmobLogHandler;->setLevel(Ljava/util/logging/Level;)V

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->c:Ljava/util/logging/Logger;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    sget-object v0, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->c:Ljava/util/logging/Logger;

    sget-object v1, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d:Lcom/sigmob/sdk/base/common/logging/SigmobLog$SigmobLogHandler;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->a(Ljava/util/logging/Logger;Ljava/util/logging/Handler;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Ljava/util/logging/Logger;Ljava/util/logging/Handler;)V
    .registers 6

    invoke-virtual {p0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_14

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :goto_10
    return-void

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_14
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    goto :goto_10
.end method

.method public static addHandler(Ljava/util/logging/Handler;)V
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->c:Ljava/util/logging/Logger;

    invoke-static {v0, p0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->a(Ljava/util/logging/Logger;Ljava/util/logging/Handler;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "message is null"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setSdkHandlerLevel(Ljava/util/logging/Level;)V
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d:Lcom/sigmob/sdk/base/common/logging/SigmobLog$SigmobLogHandler;

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog$SigmobLogHandler;->setLevel(Ljava/util/logging/Level;)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
