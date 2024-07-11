.class public final Lcom/anythink/core/common/g/i;
.super Ljava/lang/Object;


# static fields
.field protected static a:Lcom/anythink/core/common/g/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/anythink/core/common/g/i;

    invoke-direct {v0}, Lcom/anythink/core/common/g/i;-><init>()V

    sput-object v0, Lcom/anythink/core/common/g/i;->a:Lcom/anythink/core/common/g/i;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/anythink/core/c/c$b;)Lcom/anythink/core/api/ATBaseAdAdapter;
    .registers 1

    .line 49
    :try_start_0
    iget-object p0, p0, Lcom/anythink/core/c/c$b;->g:Ljava/lang/String;

    invoke-static {p0}, Lcom/anythink/core/common/g/i;->a(Ljava/lang/String;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_8

    .line 54
    nop

    .line 55
    return-object p0

    .line 52
    :catchall_8
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/Class;)Lcom/anythink/core/api/ATBaseAdAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/anythink/core/common/b/b;",
            ">;)",
            "Lcom/anythink/core/api/ATBaseAdAdapter;"
        }
    .end annotation

    .line 36
    if-nez p0, :cond_9

    .line 37
    sget-object v0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string v1, "can not find adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/anythink/core/api/ATBaseAdAdapter;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/anythink/core/api/ATBaseAdAdapter;
    .registers 4

    .line 25
    const/4 v0, 0x0

    if-eqz p0, :cond_29

    .line 26
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v1, Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 28
    nop

    .line 1036
    if-nez p0, :cond_17

    .line 1037
    sget-object v1, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string v2, "can not find adapter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_17
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 1041
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1042
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 28
    return-object p0

    .line 30
    :cond_29
    return-object v0
.end method
