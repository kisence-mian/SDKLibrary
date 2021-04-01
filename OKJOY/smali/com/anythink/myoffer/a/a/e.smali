.class public final Lcom/anythink/myoffer/a/a/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field private static final c:Ljava/lang/String;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_myoffer_resouce"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/myoffer/a/a/e;->c:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/anythink/myoffer/a/a/e;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)Ljava/io/File;
    .registers 5

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
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

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 117
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 119
    :cond_20
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 120
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 121
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 123
    :cond_2d
    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-static {}, Lcom/anythink/myoffer/a/a/e;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    .line 110
    :goto_7
    return-object v2

    .line 81
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_b4

    .line 83
    :try_start_e
    invoke-static {}, Lcom/anythink/myoffer/a/a/e;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_b4

    .line 86
    invoke-static {v0}, Lcom/anythink/myoffer/a/a/e;->a(Ljava/io/File;)Ljava/io/File;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1c} :catch_ab

    move-result-object v1

    .line 88
    if-eqz v1, :cond_ad

    .line 89
    :try_start_1f
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/anythink/myoffer/a/a/e;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_26} :catch_b2

    .line 96
    :goto_26
    if-nez v0, :cond_79

    invoke-static {}, Lcom/anythink/myoffer/a/a/e;->f()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/anythink/myoffer/a/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    invoke-static {}, Lcom/anythink/myoffer/a/a/e;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/anythink/myoffer/a/a/e;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 3127
    invoke-static {}, Lcom/anythink/myoffer/a/a/e;->c()J

    move-result-wide v4

    const-wide/32 v6, 0x1e00000

    cmp-long v1, v4, v6

    if-lez v1, :cond_b0

    const/4 v1, 0x1

    .line 101
    :goto_76
    if-nez v1, :cond_79

    move-object v0, v2

    .line 105
    :cond_79
    if-nez v0, :cond_a5

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/myoffer/a/a/e;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/anythink/myoffer/a/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    :cond_a5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    :catch_ab
    move-exception v0

    move-object v1, v2

    :cond_ad
    :goto_ad
    move-object v0, v1

    goto/16 :goto_26

    .line 3127
    :cond_b0
    const/4 v1, 0x0

    goto :goto_76

    :catch_b2
    move-exception v0

    goto :goto_ad

    :cond_b4
    move-object v0, v2

    goto/16 :goto_26
.end method

.method public static a(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 41
    sget-object v0, Lcom/anythink/myoffer/a/a/e;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public static a(Lcom/anythink/myoffer/c/a;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 56
    if-nez p0, :cond_5

    move v0, v1

    .line 69
    :goto_4
    return v0

    .line 59
    :cond_5
    invoke-virtual {p0}, Lcom/anythink/myoffer/c/a;->C()Ljava/util/List;

    move-result-object v3

    .line 60
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 61
    if-lez v4, :cond_26

    move v2, v1

    .line 62
    :goto_10
    if-ge v2, v4, :cond_24

    .line 63
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v1

    .line 64
    goto :goto_4

    .line 62
    :cond_20
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    .line 67
    :cond_24
    const/4 v0, 0x1

    goto :goto_4

    :cond_26
    move v0, v1

    .line 69
    goto :goto_4
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    sget-object v0, Lcom/anythink/myoffer/a/a/e;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 37
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_10
    if-ne v1, v0, :cond_16

    move v0, v1

    :goto_13
    return v0

    :cond_14
    move v0, v2

    goto :goto_10

    :cond_16
    move v0, v2

    goto :goto_13
.end method

.method private static b()Z
    .registers 4

    .prologue
    .line 127
    invoke-static {}, Lcom/anythink/myoffer/a/a/e;->c()J

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

.method public static b(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 49
    .line 1161
    invoke-static {}, Lcom/anythink/myoffer/a/a/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 1162
    if-eqz v0, :cond_4d

    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2155
    invoke-static {p0}, Lcom/anythink/core/b/g/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v0, 0x1

    :goto_4c
    return v0

    .line 1165
    :cond_4d
    const/4 v0, 0x0

    goto :goto_21

    .line 50
    :cond_4f
    const/4 v0, 0x0

    goto :goto_4c
.end method

.method private static c()J
    .registers 6

    .prologue
    const-wide/16 v0, 0x0

    .line 3179
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 135
    if-eqz v2, :cond_26

    .line 137
    :try_start_e
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 138
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 140
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_23} :catch_27
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_23} :catch_2c

    move-result v0

    int-to-long v0, v0

    .line 141
    mul-long/2addr v0, v4

    .line 148
    :cond_26
    :goto_26
    return-wide v0

    .line 143
    :catch_27
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26

    :catch_2c
    move-exception v2

    goto :goto_26
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    invoke-static {p0}, Lcom/anythink/core/b/g/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d()Landroid/content/Context;
    .registers 1

    .prologue
    .line 171
    :try_start_0
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    .line 175
    :goto_c
    return-object v0

    .line 173
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 161
    invoke-static {}, Lcom/anythink/myoffer/a/a/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_22

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4155
    invoke-static {p0}, Lcom/anythink/core/b/g/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private static e()Z
    .registers 2

    .prologue
    .line 179
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static f()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-static {}, Lcom/anythink/myoffer/a/a/e;->d()Landroid/content/Context;

    move-result-object v1

    .line 185
    if-nez v1, :cond_8

    .line 196
    :cond_7
    :goto_7
    return v0

    .line 189
    :cond_8
    :try_start_8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 190
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 191
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_1a

    move-result v1

    .line 192
    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    .line 194
    :catch_1a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method
