.class public final Lcom/bytedance/sdk/a/b/a/b/e;
.super Ljava/lang/RuntimeException;
.source "RouteException.java"


# static fields
.field private static final a:Ljava/lang/reflect/Method;


# instance fields
.field private b:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 32
    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 35
    goto :goto_13

    .line 33
    :catch_11
    move-exception v0

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_13
    sput-object v0, Lcom/bytedance/sdk/a/b/a/b/e;->a:Ljava/lang/reflect/Method;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/e;->b:Ljava/io/IOException;

    .line 44
    return-void
.end method

.method private a(Ljava/io/IOException;Ljava/io/IOException;)V
    .registers 6

    .line 56
    sget-object v0, Lcom/bytedance/sdk/a/b/a/b/e;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_11

    .line 58
    const/4 v1, 0x1

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_d} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_d} :catch_e

    .line 60
    goto :goto_11

    .line 59
    :catch_e
    move-exception p1

    goto :goto_11

    :catch_10
    move-exception p1

    .line 62
    :cond_11
    :goto_11
    return-void
.end method


# virtual methods
.method public a()Ljava/io/IOException;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/e;->b:Ljava/io/IOException;

    return-object v0
.end method

.method public a(Ljava/io/IOException;)V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/e;->b:Ljava/io/IOException;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/a/b/a/b/e;->a(Ljava/io/IOException;Ljava/io/IOException;)V

    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/e;->b:Ljava/io/IOException;

    .line 53
    return-void
.end method
