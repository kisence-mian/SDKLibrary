.class public Lcom/tds/tapdb/b/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/tapdb/b/j$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static b:Ljava/util/concurrent/CountDownLatch;

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v1, Lcom/tds/tapdb/b/j;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Lcom/tds/tapdb/b/j;->d()V

    sget-object v1, Lcom/tds/tapdb/b/j;->f:Ljava/lang/Class;

    if-eqz v1, :cond_3b

    sget-object v1, Lcom/tds/tapdb/b/j;->c:Ljava/lang/Class;

    if-eqz v1, :cond_3b

    sget-object v1, Lcom/tds/tapdb/b/j;->d:Ljava/lang/Class;

    if-nez v1, :cond_1a

    goto :goto_3b

    :cond_1a
    sget-object v1, Lcom/tds/tapdb/b/j;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/tds/tapdb/b/j;->a(Landroid/content/Context;I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_41

    :try_start_26
    sget-object p0, Lcom/tds/tapdb/b/j;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_41

    goto :goto_30

    :catch_2c
    move-exception p0

    :try_start_2d
    invoke-static {p0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_30
    const-string p0, "CountDownLatch await"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/tds/tapdb/b/j;->a:Ljava/lang/String;

    return-object p0

    :cond_38
    sget-object p0, Lcom/tds/tapdb/b/j;->a:Ljava/lang/String;

    return-object p0

    :cond_3b
    :goto_3b
    const-string p0, "OAID \u8bfb\u53d6\u7c7b\u521b\u5efa\u5931\u8d25"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_40} :catch_41

    return-object v0

    :catch_41
    move-exception p0

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/tds/tapdb/b/j;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a()Ljava/util/concurrent/CountDownLatch;
    .registers 1

    sget-object v0, Lcom/tds/tapdb/b/j;->b:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private static a(Landroid/content/Context;I)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    sget-object v0, Lcom/tds/tapdb/b/j;->e:Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5} :catch_91

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1d

    const-string v4, "InitEntry"

    :try_start_c
    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    new-instance v0, Lcom/tds/tapdb/b/j$b;

    invoke-direct {v0}, Lcom/tds/tapdb/b/j$b;-><init>()V

    sget-object v4, Lcom/tds/tapdb/b/j;->f:Ljava/lang/Class;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_24} :catch_91

    const-string v5, "InitSdk"

    const/4 v6, 0x3

    :try_start_27
    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Lcom/tds/tapdb/b/j;->c:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, v3

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v7, Lcom/tds/tapdb/b/j;->c:Ljava/lang/Class;

    aput-object v7, v3, v2

    invoke-static {v6, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MdidSdkHelper ErrorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/tapdb/b/n;->c(Ljava/lang/String;)V

    const v1, 0xf63e6

    if-eq v0, v1, :cond_83

    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Lcom/tds/tapdb/b/j;->a(Landroid/content/Context;I)V

    if-nez p1, :cond_83

    sget-object v0, Lcom/tds/tapdb/b/j;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_83
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tds/tapdb/b/j$a;

    invoke-direct {v1}, Lcom/tds/tapdb/b/j$a;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_90} :catch_91

    goto :goto_a1

    :catch_91
    move-exception v0

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Lcom/tds/tapdb/b/j;->a(Landroid/content/Context;I)V

    if-nez p1, :cond_a1

    sget-object p0, Lcom/tds/tapdb/b/j;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_a1
    :goto_a1
    return-void
.end method

.method static synthetic b()Ljava/lang/Class;
    .registers 1

    sget-object v0, Lcom/tds/tapdb/b/j;->d:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tds/tapdb/b/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static d()V
    .registers 2

    const-string v0, "com.bun.miitmdid.core.JLibrary"

    :try_start_2
    const-string v1, "com.bun.miitmdid.core.MdidSdkHelper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/tds/tapdb/b/j;->f:Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_a} :catch_4d

    :try_start_a
    const-string v1, "com.bun.miitmdid.interfaces.IIdentifierListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/tds/tapdb/b/j;->c:Ljava/lang/Class;

    const-string v1, "com.bun.miitmdid.interfaces.IdSupplier"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/tds/tapdb/b/j;->d:Ljava/lang/Class;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception v1

    :try_start_1c
    const-string v1, "com.bun.supplier.IIdentifierListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/tds/tapdb/b/j;->c:Ljava/lang/Class;

    const-string v1, "com.bun.supplier.IdSupplier"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/tds/tapdb/b/j;->d:Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/tds/tapdb/b/j;->e:Ljava/lang/Class;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception v1

    :try_start_34
    const-string v1, "com.bun.miitmdid.core.IIdentifierListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/tds/tapdb/b/j;->c:Ljava/lang/Class;

    const-string v1, "com.bun.miitmdid.supplier.IdSupplier"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/tds/tapdb/b/j;->d:Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/tds/tapdb/b/j;->e:Ljava/lang/Class;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4a} :catch_4b

    goto :goto_4c

    :catch_4b
    move-exception v0

    :goto_4c
    return-void

    :catch_4d
    move-exception v0

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    return-void
.end method
