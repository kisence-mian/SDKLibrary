.class public final Landroidx/test/internal/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/util/LogUtil$Supplier;
    }
.end annotation


# static fields
.field private static volatile myProcName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const/4 v0, 0x0

    sput-object v0, Landroidx/test/internal/util/LogUtil;->myProcName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isLoggable(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "tag",
            "level"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_f

    .line 81
    const/4 v0, 0x0

    const/16 v1, 0x16

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 83
    :cond_f
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static final synthetic lambda$logDebug$0$LogUtil(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "message"    # Ljava/lang/String;

    .line 36
    return-object p0
.end method

.method static final synthetic lambda$logDebugWithProcess$1$LogUtil(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .line 50
    invoke-static {}, Landroidx/test/internal/util/LogUtil;->procName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs logDebug(Ljava/lang/String;Landroidx/test/internal/util/LogUtil$Supplier;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msgSupplier",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/test/internal/util/LogUtil$Supplier<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 40
    .local p1, "msgSupplier":Landroidx/test/internal/util/LogUtil$Supplier;, "Landroidx/test/internal/util/LogUtil$Supplier<Ljava/lang/String;>;"
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroidx/test/internal/util/LogUtil;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 41
    invoke-interface {p1}, Landroidx/test/internal/util/LogUtil$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_14
    return-void
.end method

.method public static varargs logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "args"
        }
    .end annotation

    .line 36
    new-instance v0, Landroidx/test/internal/util/LogUtil$$Lambda$0;

    invoke-direct {v0, p1}, Landroidx/test/internal/util/LogUtil$$Lambda$0;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Landroidx/test/internal/util/LogUtil;->logDebug(Ljava/lang/String;Landroidx/test/internal/util/LogUtil$Supplier;[Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public static varargs logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "args"
        }
    .end annotation

    .line 50
    new-instance v0, Landroidx/test/internal/util/LogUtil$$Lambda$1;

    invoke-direct {v0, p1}, Landroidx/test/internal/util/LogUtil$$Lambda$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Landroidx/test/internal/util/LogUtil;->logDebug(Ljava/lang/String;Landroidx/test/internal/util/LogUtil$Supplier;[Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method private static final procName()Ljava/lang/String;
    .registers 3

    .line 54
    sget-object v0, Landroidx/test/internal/util/LogUtil;->myProcName:Ljava/lang/String;

    .line 55
    .local v0, "procDesc":Ljava/lang/String;
    if-nez v0, :cond_23

    .line 57
    :try_start_4
    const-string v1, "self"

    invoke-static {v1}, Landroidx/test/internal/util/ProcSummary;->summarize(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary;

    move-result-object v1

    iget-object v1, v1, Landroidx/test/internal/util/ProcSummary;->cmdline:Ljava/lang/String;
    :try_end_c
    .catch Landroidx/test/internal/util/ProcSummary$SummaryException; {:try_start_4 .. :try_end_c} :catch_e

    move-object v0, v1

    .line 60
    goto :goto_11

    .line 58
    :catch_e
    move-exception v1

    .line 59
    .local v1, "se":Landroidx/test/internal/util/ProcSummary$SummaryException;
    const-string v0, "unknown"

    .line 61
    .end local v1    # "se":Landroidx/test/internal/util/ProcSummary$SummaryException;
    :goto_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_23

    const-string v1, "-classpath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 63
    const-string v0, "robolectric"

    .line 66
    :cond_23
    return-object v0
.end method
