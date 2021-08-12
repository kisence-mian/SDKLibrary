.class Lcom/bytedance/sdk/openadsdk/core/p$a;
.super Ljava/lang/Object;
.source "InternalContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static volatile a:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 274
    const-string v0, "MyApplication"

    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p$a;->b()Ljava/lang/Object;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getApplication"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 276
    check-cast v1, Landroid/app/Application;

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/p$a;->a:Landroid/app/Application;

    .line 277
    const-string v1, "application get success"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_23

    .line 280
    goto :goto_29

    .line 278
    :catchall_23
    move-exception v1

    .line 279
    const-string v2, "application get failed"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    :goto_29
    return-void
.end method

.method public static a()Landroid/app/Application;
    .registers 1

    .line 265
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p$a;->a:Landroid/app/Application;

    return-object v0
.end method

.method private static b()Ljava/lang/Object;
    .registers 5

    .line 284
    nop

    .line 286
    const/4 v0, 0x0

    :try_start_2
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 287
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 288
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_1c

    .line 291
    goto :goto_24

    .line 289
    :catchall_1c
    move-exception v1

    .line 290
    const-string v2, "MyApplication"

    const-string v3, "ActivityThread get error, maybe api level <= 4.2.2"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    :goto_24
    return-object v0
.end method
