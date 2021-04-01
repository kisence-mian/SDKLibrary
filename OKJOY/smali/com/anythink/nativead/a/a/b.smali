.class public final Lcom/anythink/nativead/a/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/nativead/a/a/b$a;
    }
.end annotation


# static fields
.field static a:Z

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anythink/nativead/a/a/b;->a:Z

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/anythink/nativead/a/a/b;->b:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/anythink/nativead/a/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)Ljava/io/File;
    .registers 5

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 150
    :cond_20
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 152
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 154
    :cond_2d
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 31
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/a/a/b$1;

    invoke-direct {v1, p0}, Lcom/anythink/nativead/a/a/b$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method private static a()Z
    .registers 2

    .prologue
    .line 61
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private static b()J
    .registers 6

    .prologue
    const-wide/16 v0, 0x0

    .line 1061
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1062
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1063
    const/4 v2, 0x0

    .line 76
    :goto_f
    if-eqz v2, :cond_29

    .line 78
    :try_start_11
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 79
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 81
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_26} :catch_2c
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_26} :catch_31

    move-result v0

    int-to-long v0, v0

    .line 82
    mul-long/2addr v0, v4

    .line 89
    :cond_29
    :goto_29
    return-wide v0

    .line 1065
    :cond_2a
    const/4 v2, 0x1

    goto :goto_f

    .line 84
    :catch_2c
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29

    :catch_31
    move-exception v2

    goto :goto_29
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 116
    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_81

    .line 120
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_81

    .line 122
    invoke-static {v0}, Lcom/anythink/nativead/a/a/b;->a(Ljava/io/File;)Ljava/io/File;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_11} :catch_80

    move-result-object v0

    .line 128
    :goto_12
    sget-boolean v2, Lcom/anythink/nativead/a/a/b;->a:Z

    if-eqz v2, :cond_6b

    .line 129
    if-nez v0, :cond_5c

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Android"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/anythink/nativead/a/a/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1159
    :cond_5c
    invoke-static {}, Lcom/anythink/nativead/a/a/b;->b()J

    move-result-wide v2

    const-wide/32 v4, 0x1e00000

    cmp-long v2, v2, v4

    if-lez v2, :cond_83

    const/4 v2, 0x1

    .line 133
    :goto_68
    if-nez v2, :cond_6b

    move-object v0, v1

    .line 138
    :cond_6b
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7b

    .line 139
    :cond_73
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 141
    :cond_7b
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_80
    move-exception v0

    :cond_81
    move-object v0, v1

    goto :goto_12

    .line 1159
    :cond_83
    const/4 v2, 0x0

    goto :goto_68
.end method

.method private static c()Z
    .registers 4

    .prologue
    .line 159
    invoke-static {}, Lcom/anythink/nativead/a/a/b;->b()J

    move-result-wide v0

    const-wide/32 v2, 0x1e00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
