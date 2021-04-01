.class public Lcom/kwad/sdk/c/c/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:Z = true

.field private static c:Z

.field private static d:Z


# direct methods
.method private static a()Ljava/lang/String;
    .registers 5

    const/4 v4, 0x3

    sget-boolean v0, Lcom/kwad/sdk/c/c/b;->d:Z

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_7
    return-object v0

    :cond_8
    const/4 v1, -0x1

    const-string v0, "unknown"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    if-le v3, v4, :cond_23

    aget-object v0, v2, v4

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    aget-object v1, v2, v4

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZLjava/io/File;)V
    .registers 6

    sput-object p1, Lcom/kwad/sdk/c/c/b;->a:Ljava/lang/String;

    sput-boolean p2, Lcom/kwad/sdk/c/c/b;->b:Z

    sput-boolean p3, Lcom/kwad/sdk/c/c/b;->c:Z

    sget-boolean v0, Lcom/kwad/sdk/c/c/b;->c:Z

    invoke-static {p0, v0, p4}, Lcom/kwad/sdk/c/c/a;->a(Landroid/content/Context;ZLjava/io/File;)V

    return-void
.end method

.method public static a(Ljava/lang/Exception;)V
    .registers 2

    sget-boolean v0, Lcom/kwad/sdk/c/c/b;->b:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/kwad/sdk/c/c/b;->c:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/kwad/sdk/c/c/b;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/kwad/sdk/c/c/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    sget-boolean v0, Lcom/kwad/sdk/c/c/b;->b:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    sget-boolean v0, Lcom/kwad/sdk/c/c/b;->c:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/kwad/sdk/c/c/b;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/kwad/sdk/c/c/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/kwad/sdk/c/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    return-void
.end method

.method private static b()Ljava/lang/String;
    .registers 5

    const/4 v4, 0x3

    sget-boolean v0, Lcom/kwad/sdk/c/c/b;->d:Z

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_7
    return-object v0

    :cond_8
    const/4 v1, -0x1

    const-string v0, "unknown"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    if-le v3, v4, :cond_23

    aget-object v0, v2, v4

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    aget-object v1, v2, v4

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/kwad/sdk/c/c/b;->b:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/kwad/sdk/c/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/kwad/sdk/c/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    sget-boolean v0, Lcom/kwad/sdk/c/c/b;->c:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/kwad/sdk/c/c/b;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/kwad/sdk/c/c/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method private static c()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/kwad/sdk/c/c/b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {}, Lcom/kwad/sdk/c/c/b;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string v1, "[%s]%s: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {}, Lcom/kwad/sdk/c/c/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "[%s]: %s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/kwad/sdk/c/c/b;->b:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/kwad/sdk/c/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/kwad/sdk/c/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    sget-boolean v0, Lcom/kwad/sdk/c/c/b;->c:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/kwad/sdk/c/c/b;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/kwad/sdk/c/c/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/kwad/sdk/c/c/b;->b:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/kwad/sdk/c/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/kwad/sdk/c/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    sget-boolean v0, Lcom/kwad/sdk/c/c/b;->c:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/kwad/sdk/c/c/b;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/kwad/sdk/c/c/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method
