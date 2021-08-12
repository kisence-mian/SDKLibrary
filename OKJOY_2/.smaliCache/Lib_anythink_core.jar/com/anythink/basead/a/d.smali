.class public Lcom/anythink/basead/a/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/anythink/basead/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/anythink/basead/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/basead/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static declared-synchronized a()Lcom/anythink/basead/a/d;
    .registers 2

    const-class v0, Lcom/anythink/basead/a/d;

    monitor-enter v0

    .line 35
    :try_start_3
    sget-object v1, Lcom/anythink/basead/a/d;->b:Lcom/anythink/basead/a/d;

    if-nez v1, :cond_e

    .line 36
    new-instance v1, Lcom/anythink/basead/a/d;

    invoke-direct {v1}, Lcom/anythink/basead/a/d;-><init>()V

    sput-object v1, Lcom/anythink/basead/a/d;->b:Lcom/anythink/basead/a/d;

    .line 38
    :cond_e
    sget-object v1, Lcom/anythink/basead/a/d;->b:Lcom/anythink/basead/a/d;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 34
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 3

    .line 54
    nop

    .line 2114
    invoke-static {p0}, Lcom/anythink/core/common/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 54
    nop

    .line 55
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v0

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/anythink/core/common/res/d;->a(ILjava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    .line 55
    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;Lcom/anythink/basead/a/a/a$a;)V
    .registers 5

    .line 78
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/anythink/basead/a/d;->a(Ljava/lang/String;ZLcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;Lcom/anythink/basead/a/a/a$a;)V

    .line 79
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;Lcom/anythink/core/common/d/r;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/p;",
            ">;",
            "Lcom/anythink/core/common/d/r;",
            ")V"
        }
    .end annotation

    .line 64
    if-nez p1, :cond_3

    .line 65
    return-void

    .line 67
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 68
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_18

    .line 69
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/d/h;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p0, v4, v2, p2, v3}, Lcom/anythink/basead/a/d;->a(Ljava/lang/String;ZLcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;Lcom/anythink/basead/a/a/a$a;)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 72
    :cond_18
    return-void
.end method

.method public static a(Ljava/lang/String;ZLcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;Lcom/anythink/basead/a/a/a$a;)V
    .registers 7

    .line 85
    new-instance v0, Lcom/anythink/basead/a/a/a;

    invoke-virtual {p3}, Lcom/anythink/core/common/d/j;->c()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lcom/anythink/basead/a/a/a;-><init>(Ljava/lang/String;ZI)V

    .line 86
    invoke-virtual {v0, p2, p3, p4}, Lcom/anythink/basead/a/a/a;->a(Lcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;Lcom/anythink/basead/a/a/a$a;)V

    .line 87
    return-void
.end method

.method public static a(Lcom/anythink/core/common/d/p;Lcom/anythink/core/common/d/j;)Z
    .registers 2

    .line 93
    invoke-static {p0, p1}, Lcom/anythink/basead/a/a/b;->a(Lcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/io/InputStream;)Z
    .registers 4

    .line 43
    if-eqz p0, :cond_1d

    if-nez p1, :cond_5

    goto :goto_1d

    .line 47
    :cond_5
    nop

    .line 1114
    invoke-static {p0}, Lcom/anythink/core/common/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 47
    nop

    .line 48
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lcom/anythink/core/common/res/d;->a(ILjava/lang/String;Ljava/io/InputStream;)Z

    move-result p0

    return p0

    .line 44
    :cond_1d
    :goto_1d
    const/4 p0, 0x0

    return p0
.end method
