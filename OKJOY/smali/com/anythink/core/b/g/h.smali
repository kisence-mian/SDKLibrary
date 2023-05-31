.class public final Lcom/anythink/core/b/g/h;
.super Ljava/lang/Object;


# static fields
.field protected static a:Lcom/anythink/core/b/g/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Lcom/anythink/core/b/g/h;

    invoke-direct {v0}, Lcom/anythink/core/b/g/h;-><init>()V

    sput-object v0, Lcom/anythink/core/b/g/h;->a:Lcom/anythink/core/b/g/h;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/anythink/core/c/c$b;)Lcom/anythink/core/b/a/b;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    .line 2021
    if-eqz v0, :cond_2b

    .line 2022
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/anythink/core/b/a/b;

    .line 2023
    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 2032
    if-nez v0, :cond_18

    .line 2033
    sget-object v2, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v3, "can not find adapter"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    :cond_18
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 2037
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2038
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2a} :catch_2d

    .line 51
    :goto_2a
    return-object v0

    :cond_2b
    move-object v0, v1

    .line 2026
    goto :goto_2a

    .line 48
    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 49
    goto :goto_2a
.end method

.method private static a(Ljava/lang/Class;)Lcom/anythink/core/b/a/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/anythink/core/b/a/b;",
            ">;)",
            "Lcom/anythink/core/b/a/b;"
        }
    .end annotation

    .prologue
    .line 32
    if-nez p0, :cond_9

    .line 33
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v1, "can not find adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 37
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 38
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/anythink/core/b/a/b;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 21
    if-eqz p0, :cond_27

    .line 22
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/anythink/core/b/a/b;

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 1032
    if-nez v1, :cond_16

    .line 1033
    sget-object v2, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v3, "can not find adapter"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_16
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1037
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1038
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 26
    :cond_27
    return-object v0
.end method
