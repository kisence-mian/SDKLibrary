.class public final Landroidx/test/internal/util/ProcSummary;
.super Ljava/lang/Object;
.source "ProcSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/util/ProcSummary$Builder;,
        Landroidx/test/internal/util/ProcSummary$SummaryException;
    }
.end annotation


# instance fields
.field public final cmdline:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final parent:Ljava/lang/String;

.field public final pid:Ljava/lang/String;

.field public final realUid:Ljava/lang/String;

.field public final startTime:J


# direct methods
.method private constructor <init>(Landroidx/test/internal/util/ProcSummary$Builder;)V
    .registers 4
    .param p1, "b"    # Landroidx/test/internal/util/ProcSummary$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    # getter for: Landroidx/test/internal/util/ProcSummary$Builder;->name:Ljava/lang/String;
    invoke-static {p1}, Landroidx/test/internal/util/ProcSummary$Builder;->access$000(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/util/ProcSummary;->name:Ljava/lang/String;

    .line 37
    # getter for: Landroidx/test/internal/util/ProcSummary$Builder;->pid:Ljava/lang/String;
    invoke-static {p1}, Landroidx/test/internal/util/ProcSummary$Builder;->access$100(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/util/ProcSummary;->pid:Ljava/lang/String;

    .line 38
    # getter for: Landroidx/test/internal/util/ProcSummary$Builder;->realUid:Ljava/lang/String;
    invoke-static {p1}, Landroidx/test/internal/util/ProcSummary$Builder;->access$200(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/util/ProcSummary;->realUid:Ljava/lang/String;

    .line 39
    # getter for: Landroidx/test/internal/util/ProcSummary$Builder;->parent:Ljava/lang/String;
    invoke-static {p1}, Landroidx/test/internal/util/ProcSummary$Builder;->access$300(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/util/ProcSummary;->parent:Ljava/lang/String;

    .line 40
    # getter for: Landroidx/test/internal/util/ProcSummary$Builder;->cmdline:Ljava/lang/String;
    invoke-static {p1}, Landroidx/test/internal/util/ProcSummary$Builder;->access$400(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/util/ProcSummary;->cmdline:Ljava/lang/String;

    .line 41
    # getter for: Landroidx/test/internal/util/ProcSummary$Builder;->startTime:J
    invoke-static {p1}, Landroidx/test/internal/util/ProcSummary$Builder;->access$500(Landroidx/test/internal/util/ProcSummary$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/test/internal/util/ProcSummary;->startTime:J

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/internal/util/ProcSummary$Builder;Landroidx/test/internal/util/ProcSummary$1;)V
    .registers 3
    .param p1, "x0"    # Landroidx/test/internal/util/ProcSummary$Builder;
    .param p2, "x1"    # Landroidx/test/internal/util/ProcSummary$1;

    .line 27
    invoke-direct {p0, p1}, Landroidx/test/internal/util/ProcSummary;-><init>(Landroidx/test/internal/util/ProcSummary$Builder;)V

    return-void
.end method

.method static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary;
    .registers 11
    .param p0, "statLine"    # Ljava/lang/String;
    .param p1, "statusContent"    # Ljava/lang/String;
    .param p2, "cmdline"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "statLine",
            "statusContent",
            "cmdline"
        }
    .end annotation

    .line 108
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "stats":[Ljava/lang/String;
    const-string v2, "\nUid:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 111
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 112
    const-string v2, "\\s"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "uids":[Ljava/lang/String;
    new-instance v3, Landroidx/test/internal/util/ProcSummary$Builder;

    invoke-direct {v3}, Landroidx/test/internal/util/ProcSummary$Builder;-><init>()V

    .line 116
    const/16 v6, 0x20

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroidx/test/internal/util/ProcSummary$Builder;->withPid(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;

    move-result-object v3

    .line 117
    const/16 v7, 0x28

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/test/internal/util/ProcSummary$Builder;->withName(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;

    move-result-object v0

    aget-object v3, v1, v4

    .line 118
    invoke-virtual {v0, v3}, Landroidx/test/internal/util/ProcSummary$Builder;->withParent(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;

    move-result-object v0

    aget-object v3, v2, v4

    .line 119
    invoke-virtual {v0, v3}, Landroidx/test/internal/util/ProcSummary$Builder;->withRealUid(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/test/internal/util/ProcSummary$Builder;->withCmdline(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;

    move-result-object v0

    const/16 v3, 0x13

    aget-object v3, v1, v3

    .line 121
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroidx/test/internal/util/ProcSummary$Builder;->withStartTime(J)Landroidx/test/internal/util/ProcSummary$Builder;

    move-result-object v0

    .line 122
    .local v0, "b":Landroidx/test/internal/util/ProcSummary$Builder;
    invoke-virtual {v0}, Landroidx/test/internal/util/ProcSummary$Builder;->build()Landroidx/test/internal/util/ProcSummary;

    move-result-object v3

    return-object v3
.end method

.method private static final readToString(Ljava/io/File;)Ljava/lang/String;
    .registers 9
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 70
    .local v1, "buff":[C
    const/4 v2, 0x0

    .line 72
    .local v2, "isr":Ljava/io/InputStreamReader;
    :try_start_a
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 73
    const/4 v3, 0x0

    .line 75
    .local v3, "read":I
    :goto_16
    array-length v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v4

    move v3, v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_24

    .line 76
    invoke-virtual {v0, v1, v5, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 78
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_28} :catch_59
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_28} :catch_31
    .catchall {:try_start_a .. :try_end_28} :catchall_2f

    .line 84
    nop

    .line 86
    :try_start_29
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 89
    goto :goto_2e

    .line 87
    :catch_2d
    move-exception v5

    .line 78
    :goto_2e
    return-object v4

    .line 84
    .end local v3    # "read":I
    :catchall_2f
    move-exception v3

    goto :goto_81

    .line 81
    :catch_31
    move-exception v3

    .line 82
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_32
    new-instance v4, Landroidx/test/internal/util/ProcSummary$SummaryException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Could not read: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroidx/test/internal/util/ProcSummary$SummaryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "buff":[C
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local p0    # "path":Ljava/io/File;
    throw v4

    .line 79
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "buff":[C
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local p0    # "path":Ljava/io/File;
    :catch_59
    move-exception v3

    .line 80
    .local v3, "re":Ljava/lang/RuntimeException;
    new-instance v4, Landroidx/test/internal/util/ProcSummary$SummaryException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xf

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Error reading: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroidx/test/internal/util/ProcSummary$SummaryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "buff":[C
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local p0    # "path":Ljava/io/File;
    throw v4
    :try_end_81
    .catchall {:try_start_32 .. :try_end_81} :catchall_2f

    .line 84
    .end local v3    # "re":Ljava/lang/RuntimeException;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "buff":[C
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local p0    # "path":Ljava/io/File;
    :goto_81
    if-eqz v2, :cond_88

    .line 86
    :try_start_83
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    .line 89
    goto :goto_88

    .line 87
    :catch_87
    move-exception v4

    .line 89
    :cond_88
    :goto_88
    goto :goto_8a

    :goto_89
    throw v3

    :goto_8a
    goto :goto_89
.end method

.method public static summarize(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary;
    .registers 8
    .param p0, "pid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc"

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "stat"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .local v0, "statFile":Ljava/io/File;
    invoke-static {v0}, Landroidx/test/internal/util/ProcSummary;->readToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "statContent":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "status"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .local v3, "statusFile":Ljava/io/File;
    invoke-static {v3}, Landroidx/test/internal/util/ProcSummary;->readToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "statusContent":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cmdline"

    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v5

    .line 62
    .local v2, "cmdlineFile":Ljava/io/File;
    invoke-static {v2}, Landroidx/test/internal/util/ProcSummary;->readToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "cmdline":Ljava/lang/String;
    invoke-static {v1, v4, v5}, Landroidx/test/internal/util/ProcSummary;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 204
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 205
    return v0

    .line 207
    :cond_4
    instance-of v1, p1, Landroidx/test/internal/util/ProcSummary;

    if-nez v1, :cond_9

    .line 208
    return v0

    .line 210
    :cond_9
    move-object v1, p1

    check-cast v1, Landroidx/test/internal/util/ProcSummary;

    .line 211
    .local v1, "ops":Landroidx/test/internal/util/ProcSummary;
    iget-object v2, v1, Landroidx/test/internal/util/ProcSummary;->name:Ljava/lang/String;

    iget-object v3, p0, Landroidx/test/internal/util/ProcSummary;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, v1, Landroidx/test/internal/util/ProcSummary;->pid:Ljava/lang/String;

    iget-object v3, p0, Landroidx/test/internal/util/ProcSummary;->pid:Ljava/lang/String;

    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, v1, Landroidx/test/internal/util/ProcSummary;->parent:Ljava/lang/String;

    iget-object v3, p0, Landroidx/test/internal/util/ProcSummary;->parent:Ljava/lang/String;

    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, v1, Landroidx/test/internal/util/ProcSummary;->realUid:Ljava/lang/String;

    iget-object v3, p0, Landroidx/test/internal/util/ProcSummary;->realUid:Ljava/lang/String;

    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, v1, Landroidx/test/internal/util/ProcSummary;->cmdline:Ljava/lang/String;

    iget-object v3, p0, Landroidx/test/internal/util/ProcSummary;->cmdline:Ljava/lang/String;

    .line 215
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-wide v2, v1, Landroidx/test/internal/util/ProcSummary;->startTime:J

    iget-wide v4, p0, Landroidx/test/internal/util/ProcSummary;->startTime:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_48

    const/4 v0, 0x1

    goto :goto_49

    :cond_48
    nop

    .line 211
    :goto_49
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 199
    iget-object v0, p0, Landroidx/test/internal/util/ProcSummary;->pid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 186
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroidx/test/internal/util/ProcSummary;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/test/internal/util/ProcSummary;->cmdline:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/test/internal/util/ProcSummary;->pid:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/test/internal/util/ProcSummary;->parent:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/test/internal/util/ProcSummary;->realUid:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroidx/test/internal/util/ProcSummary;->startTime:J

    .line 194
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 186
    const-string v1, "ProcSummary(name: \'%s\', cmdline: \'%s\', pid: \'%s\', parent: \'%s\', realUid: \'%s\', startTime: %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
