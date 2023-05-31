.class public final Lcom/mintegral/msdk/base/common/b/e;
.super Ljava/lang/Object;
.source "MIntegralDirManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/base/common/b/e$a;
    }
.end annotation


# static fields
.field private static c:Lcom/mintegral/msdk/base/common/b/e;


# instance fields
.field private a:Lcom/mintegral/msdk/base/common/b/b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mintegral/msdk/base/common/b/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/base/common/b/e;->c:Lcom/mintegral/msdk/base/common/b/e;

    return-void
.end method

.method private constructor <init>(Lcom/mintegral/msdk/base/common/b/b;)V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/b/e;->a:Lcom/mintegral/msdk/base/common/b/b;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/b/e;->b:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method public static declared-synchronized a()Lcom/mintegral/msdk/base/common/b/e;
    .registers 3

    .prologue
    .line 41
    const-class v1, Lcom/mintegral/msdk/base/common/b/e;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mintegral/msdk/base/common/b/e;->c:Lcom/mintegral/msdk/base/common/b/e;

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 42
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/i;->a(Landroid/content/Context;)V

    .line 45
    :cond_1c
    sget-object v0, Lcom/mintegral/msdk/base/common/b/e;->c:Lcom/mintegral/msdk/base/common/b/e;

    if-nez v0, :cond_27

    .line 46
    const-string v0, "MIntegralDirManager"

    const-string v2, "mDirectoryManager == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_27
    sget-object v0, Lcom/mintegral/msdk/base/common/b/e;->c:Lcom/mintegral/msdk/base/common/b/e;
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2b

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/mintegral/msdk/base/common/b/c;)Ljava/io/File;
    .registers 4

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/base/common/b/e;->a()Lcom/mintegral/msdk/base/common/b/e;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 55
    invoke-static {}, Lcom/mintegral/msdk/base/common/b/e;->a()Lcom/mintegral/msdk/base/common/b/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mintegral/msdk/base/common/b/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/common/b/e$a;

    .line 56
    iget-object v2, v0, Lcom/mintegral/msdk/base/common/b/e$a;->a:Lcom/mintegral/msdk/base/common/b/c;

    invoke-virtual {v2, p0}, Lcom/mintegral/msdk/base/common/b/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 57
    iget-object v0, v0, Lcom/mintegral/msdk/base/common/b/e$a;->b:Ljava/io/File;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_26} :catch_27

    .line 64
    :goto_26
    return-object v0

    .line 61
    :catch_27
    move-exception v0

    .line 62
    const-string v1, "MIntegralDirManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    :cond_31
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public static declared-synchronized a(Lcom/mintegral/msdk/base/common/b/b;)V
    .registers 3

    .prologue
    .line 35
    const-class v1, Lcom/mintegral/msdk/base/common/b/e;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mintegral/msdk/base/common/b/e;->c:Lcom/mintegral/msdk/base/common/b/e;

    if-nez v0, :cond_e

    .line 36
    new-instance v0, Lcom/mintegral/msdk/base/common/b/e;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/common/b/e;-><init>(Lcom/mintegral/msdk/base/common/b/b;)V

    sput-object v0, Lcom/mintegral/msdk/base/common/b/e;->c:Lcom/mintegral/msdk/base/common/b/e;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 38
    :cond_e
    monitor-exit v1

    return-void

    .line 35
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/mintegral/msdk/base/common/b/a;)Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/common/b/a;->c()Lcom/mintegral/msdk/base/common/b/a;

    move-result-object v0

    .line 85
    if-nez v0, :cond_1f

    .line 86
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/common/b/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_c
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_75

    .line 95
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 98
    :goto_1b
    if-nez v0, :cond_47

    move v0, v1

    .line 113
    :goto_1e
    return v0

    .line 88
    :cond_1f
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/b/a;->a()Lcom/mintegral/msdk/base/common/b/c;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/b/e;->a(Lcom/mintegral/msdk/base/common/b/c;)Ljava/io/File;

    move-result-object v0

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/common/b/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 102
    :cond_47
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/b/e;->b:Ljava/util/ArrayList;

    new-instance v4, Lcom/mintegral/msdk/base/common/b/e$a;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/common/b/a;->a()Lcom/mintegral/msdk/base/common/b/c;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/mintegral/msdk/base/common/b/e$a;-><init>(Lcom/mintegral/msdk/base/common/b/c;Ljava/io/File;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/common/b/a;->d()Ljava/util/List;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_73

    .line 106
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/common/b/a;

    .line 107
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/b/e;->a(Lcom/mintegral/msdk/base/common/b/a;)Z

    move-result v0

    if-nez v0, :cond_5f

    move v0, v1

    .line 108
    goto :goto_1e

    :cond_73
    move v0, v2

    .line 113
    goto :goto_1e

    :cond_75
    move v0, v2

    goto :goto_1b
.end method

.method public static b(Lcom/mintegral/msdk/base/common/b/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    invoke-static {p0}, Lcom/mintegral/msdk/base/common/b/e;->a(Lcom/mintegral/msdk/base/common/b/c;)Ljava/io/File;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_b

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public final b()Z
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/b/e;->a:Lcom/mintegral/msdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/b/b;->a()Lcom/mintegral/msdk/base/common/b/a;

    move-result-object v0

    .line 77
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/b/e;->a(Lcom/mintegral/msdk/base/common/b/a;)Z

    move-result v0

    return v0
.end method
