.class public Lcom/bun/miitmdid/c/k/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "reflect exception!"

    const-string v1, "IdentifierManager"

    :try_start_4
    const-string v2, "com.android.id.impl.IdProviderImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/bun/miitmdid/c/k/a;->b:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/bun/miitmdid/c/k/a;->a:Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v2

    invoke-static {v1, v0, v2}, Lcom/bun/lib/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_17
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_19
    sget-object v4, Lcom/bun/miitmdid/c/k/a;->b:Ljava/lang/Class;

    if-eqz v4, :cond_30

    const-string v5, "getOAID"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/bun/miitmdid/c/k/a;->c:Ljava/lang/reflect/Method;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception v4

    invoke-static {v1, v0, v4}, Lcom/bun/lib/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    :try_start_30
    sget-object v4, Lcom/bun/miitmdid/c/k/a;->b:Ljava/lang/Class;

    if-eqz v4, :cond_47

    const-string v5, "getVAID"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/bun/miitmdid/c/k/a;->d:Ljava/lang/reflect/Method;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception v4

    invoke-static {v1, v0, v4}, Lcom/bun/lib/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_47
    :goto_47
    :try_start_47
    sget-object v4, Lcom/bun/miitmdid/c/k/a;->b:Ljava/lang/Class;

    if-eqz v4, :cond_5e

    const-string v5, "getAAID"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v3, v2

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/bun/miitmdid/c/k/a;->e:Ljava/lang/reflect/Method;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception v2

    invoke-static {v1, v0, v2}, Lcom/bun/lib/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method public static native a(Landroid/content/Context;)Ljava/lang/String;
.end method

.method private static native a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;
.end method

.method public static native a()Z
.end method

.method public static native b(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native c(Landroid/content/Context;)Ljava/lang/String;
.end method
