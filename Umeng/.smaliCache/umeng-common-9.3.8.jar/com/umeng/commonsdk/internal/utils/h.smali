.class public Lcom/umeng/commonsdk/internal/utils/h;
.super Ljava/lang/Object;
.source "Root.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .registers 2

    .line 14
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/h;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 15
    return v1

    .line 17
    :cond_8
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/h;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 18
    return v1

    .line 20
    :cond_f
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/h;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 21
    return v1

    .line 23
    :cond_16
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/h;->e()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 24
    return v1

    .line 26
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private static b()Z
    .registers 2

    .line 30
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 31
    if-eqz v0, :cond_e

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 32
    const/4 v0, 0x1

    return v0

    .line 34
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private static c()Z
    .registers 3

    .line 39
    const/4 v0, 0x1

    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/app/Superuser.apk"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_f

    if-eqz v1, :cond_10

    .line 41
    return v0

    .line 43
    :catch_f
    move-exception v1

    :cond_10
    nop

    .line 46
    :try_start_11
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/app/Kinguser.apk"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_1f

    if-eqz v1, :cond_20

    .line 48
    return v0

    .line 50
    :catch_1f
    move-exception v0

    :cond_20
    nop

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method private static d()Z
    .registers 2

    .line 56
    new-instance v0, Lcom/umeng/commonsdk/internal/utils/e;

    invoke-direct {v0}, Lcom/umeng/commonsdk/internal/utils/e;-><init>()V

    sget-object v1, Lcom/umeng/commonsdk/internal/utils/e$a;->a:Lcom/umeng/commonsdk/internal/utils/e$a;

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/internal/utils/e;->a(Lcom/umeng/commonsdk/internal/utils/e$a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 57
    const/4 v0, 0x1

    return v0

    .line 59
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private static e()Z
    .registers 8

    .line 64
    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/bin"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/system/bin/"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "/system/xbin/"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "/system/sbin/"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string v5, "/sbin/"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-string v5, "/vendor/bin/"

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string v5, "/su/bin/"

    aput-object v5, v1, v2

    const/4 v2, 0x7

    const-string v5, "/data/local/xbin/"

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const-string v5, "/data/local/bin/"

    aput-object v5, v1, v2

    const/16 v2, 0x9

    const-string v5, "/system/sd/xbin/"

    aput-object v5, v1, v2

    const/16 v2, 0xa

    const-string v5, "/system/bin/failsafe/"

    aput-object v5, v1, v2

    const/16 v2, 0xb

    const-string v5, "/data/local/"

    aput-object v5, v1, v2

    .line 68
    const/4 v2, 0x0

    :goto_45
    if-ge v2, v0, :cond_6b

    aget-object v5, v1, v2

    .line 69
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "su"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_68

    .line 71
    return v4

    .line 68
    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 74
    :cond_6b
    return v3
.end method
