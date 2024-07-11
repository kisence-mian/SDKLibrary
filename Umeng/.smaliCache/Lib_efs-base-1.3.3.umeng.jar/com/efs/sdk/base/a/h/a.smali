.class public Lcom/efs/sdk/base/a/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-string v0, "efs"

    sput-object v0, Lcom/efs/sdk/base/a/h/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 60
    sget-object v0, Lcom/efs/sdk/base/a/h/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    .line 63
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 65
    :cond_10
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 86
    invoke-static {p0, p1}, Lcom/efs/sdk/base/a/h/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 87
    new-instance p1, Ljava/io/File;

    const-string v0, "efs_cst"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    .line 50
    sput-object p0, Lcom/efs/sdk/base/a/h/a;->a:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 98
    invoke-static {p0, p1}, Lcom/efs/sdk/base/a/h/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 99
    new-instance p1, Ljava/io/File;

    const-string v0, "efs_config"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 124
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/efs/sdk/base/a/h/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string p1, "efs_flow"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 133
    invoke-static {p0, p1}, Lcom/efs/sdk/base/a/h/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 134
    new-instance p1, Ljava/io/File;

    const-string v0, "ready"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_14

    .line 137
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 139
    :cond_14
    return-object p1
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 150
    invoke-static {p0, p1}, Lcom/efs/sdk/base/a/h/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 151
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/efs/sdk/base/a/h/g;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1a

    .line 154
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 156
    :cond_1a
    return-object p1
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 186
    invoke-static {p0, p1}, Lcom/efs/sdk/base/a/h/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 187
    new-instance p1, Ljava/io/File;

    const-string v0, "upload"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_14

    .line 191
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 193
    :cond_14
    return-object p1
.end method

.method private static g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 69
    sget-object v0, Lcom/efs/sdk/base/a/h/a;->b:Ljava/io/File;

    if-nez v0, :cond_16

    .line 70
    const-class v0, Lcom/efs/sdk/base/a/h/a;

    monitor-enter v0

    .line 71
    :try_start_7
    sget-object v1, Lcom/efs/sdk/base/a/h/a;->b:Ljava/io/File;

    if-nez v1, :cond_11

    .line 72
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/efs/sdk/base/a/h/a;->b:Ljava/io/File;

    .line 74
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0

    .line 76
    :cond_16
    :goto_16
    sget-object p0, Lcom/efs/sdk/base/a/h/a;->b:Ljava/io/File;

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_26

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 82
    :cond_26
    return-object v0
.end method
