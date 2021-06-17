.class public Lcom/efs/sdk/base/a/h/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/efs/sdk/base/a/h/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 33
    sget-object v0, Lcom/efs/sdk/base/a/h/h;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 34
    const-class v0, Lcom/efs/sdk/base/a/h/h;

    monitor-enter v0

    .line 35
    :try_start_b
    sget-object v1, Lcom/efs/sdk/base/a/h/h;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 37
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 38
    sput-object v1, Lcom/efs/sdk/base/a/h/h;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 40
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/efs/sdk/base/a/h/h;->a:Ljava/lang/String;

    .line 43
    :cond_25
    monitor-exit v0

    goto :goto_2a

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_27

    throw p0

    .line 45
    :cond_2a
    :goto_2a
    sget-object p0, Lcom/efs/sdk/base/a/h/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 54
    nop

    .line 56
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 57
    new-instance v1, Ljava/io/File;

    const-string v2, "efsid"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 61
    invoke-static {v1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_19

    move-object v0, p0

    .line 65
    :cond_18
    goto :goto_21

    .line 63
    :catch_19
    move-exception p0

    .line 64
    const-string v1, "efs.base"

    const-string v2, "get uuid error"

    invoke-static {v1, v2, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    :goto_21
    return-object v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 71
    const-string v0, "efsid"

    .line 73
    const-string v1, ""

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1c

    .line 77
    :try_start_8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_18

    if-nez v3, :cond_17

    .line 80
    goto :goto_1c

    .line 83
    :cond_17
    goto :goto_19

    .line 82
    :catchall_18
    move-exception v3

    .line 73
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 85
    :cond_1c
    :goto_1c
    nop

    .line 1094
    nop

    .line 1106
    :try_start_1e
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 1109
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1113
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1116
    :cond_41
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1119
    invoke-static {v2, v1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/File;Ljava/lang/String;)Z

    .line 1122
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_55

    .line 1124
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_55} :catch_56

    .line 1128
    :cond_55
    goto :goto_71

    .line 1126
    :catch_56
    move-exception p0

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "save uuid \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "efs.base"

    invoke-static {v2, v0, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    :goto_71
    return-object v1
.end method
