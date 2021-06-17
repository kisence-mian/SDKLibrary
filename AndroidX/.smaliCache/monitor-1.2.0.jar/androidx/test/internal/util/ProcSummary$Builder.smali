.class Landroidx/test/internal/util/ProcSummary$Builder;
.super Ljava/lang/Object;
.source "ProcSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/util/ProcSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private cmdline:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private parent:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private realUid:Ljava/lang/String;

.field private startTime:J


# direct methods
.method constructor <init>()V
    .registers 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/util/ProcSummary$Builder;

    .line 126
    iget-object v0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/util/ProcSummary$Builder;

    .line 126
    iget-object v0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->pid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/util/ProcSummary$Builder;

    .line 126
    iget-object v0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->realUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/util/ProcSummary$Builder;

    .line 126
    iget-object v0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->parent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/util/ProcSummary$Builder;

    .line 126
    iget-object v0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->cmdline:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/test/internal/util/ProcSummary$Builder;)J
    .registers 3
    .param p0, "x0"    # Landroidx/test/internal/util/ProcSummary$Builder;

    .line 126
    iget-wide v0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->startTime:J

    return-wide v0
.end method


# virtual methods
.method build()Landroidx/test/internal/util/ProcSummary;
    .registers 3

    .line 180
    new-instance v0, Landroidx/test/internal/util/ProcSummary;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/internal/util/ProcSummary;-><init>(Landroidx/test/internal/util/ProcSummary$Builder;Landroidx/test/internal/util/ProcSummary$1;)V

    return-object v0
.end method

.method withCmdline(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .registers 2
    .param p1, "cmdline"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmdline"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->cmdline:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method withName(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->name:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method withParent(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .registers 7
    .param p1, "ppid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ppid"
        }
    .end annotation

    .line 136
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_7

    .line 139
    nop

    .line 140
    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->parent:Ljava/lang/String;

    .line 141
    return-object p0

    .line 137
    :catch_7
    move-exception v0

    .line 138
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not a pid: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_1b
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_21
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method withPid(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .registers 7
    .param p1, "pid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 156
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_7

    .line 159
    nop

    .line 160
    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->pid:Ljava/lang/String;

    .line 161
    return-object p0

    .line 157
    :catch_7
    move-exception v0

    .line 158
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not a pid: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_1b
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_21
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method withRealUid(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .registers 7
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 166
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_7

    .line 169
    nop

    .line 170
    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->realUid:Ljava/lang/String;

    .line 171
    return-object p0

    .line 167
    :catch_7
    move-exception v0

    .line 168
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not a uid: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_1b
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_21
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method withStartTime(J)Landroidx/test/internal/util/ProcSummary$Builder;
    .registers 3
    .param p1, "startTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startTime"
        }
    .end annotation

    .line 175
    iput-wide p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->startTime:J

    .line 176
    return-object p0
.end method
