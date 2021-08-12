.class final Lcom/bytedance/sdk/a/b/a/g/a$c;
.super Ljava/lang/Object;
.source "AndroidPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 4

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/g/a$c;->a:Ljava/lang/reflect/Method;

    .line 350
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/g/a$c;->b:Ljava/lang/reflect/Method;

    .line 351
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/a/g/a$c;->c:Ljava/lang/reflect/Method;

    .line 352
    return-void
.end method

.method static a()Lcom/bytedance/sdk/a/b/a/g/a$c;
    .registers 7

    .line 384
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "dalvik.system.CloseGuard"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 385
    const-string v2, "get"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 386
    const-string v4, "open"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 387
    const-string v5, "warnIfOpen"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_28

    .line 392
    move-object v1, v0

    move-object v0, v2

    goto :goto_2d

    .line 388
    :catch_28
    move-exception v1

    .line 389
    nop

    .line 390
    nop

    .line 391
    move-object v1, v0

    move-object v4, v1

    .line 393
    :goto_2d
    new-instance v2, Lcom/bytedance/sdk/a/b/a/g/a$c;

    invoke-direct {v2, v0, v4, v1}, Lcom/bytedance/sdk/a/b/a/g/a$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v2
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    .line 355
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a$c;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 357
    const/4 v2, 0x0

    :try_start_6
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 358
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/g/a$c;->b:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_17

    .line 359
    return-object v0

    .line 360
    :catch_17
    move-exception p1

    .line 363
    :cond_18
    return-object v1
.end method

.method a(Ljava/lang/Object;)Z
    .registers 5

    .line 367
    nop

    .line 368
    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 370
    :try_start_4
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/g/a$c;->c:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_d

    .line 371
    const/4 v0, 0x1

    .line 373
    goto :goto_e

    .line 372
    :catch_d
    move-exception p1

    .line 375
    :cond_e
    :goto_e
    return v0
.end method
