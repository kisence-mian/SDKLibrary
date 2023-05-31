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

    .prologue
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

    .prologue
    const/4 v0, 0x0

    .line 384
    :try_start_1
    const-string v1, "dalvik.system.CloseGuard"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 385
    const-string v1, "get"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 386
    const-string v1, "open"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 387
    const-string v4, "warnIfOpen"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_2d

    move-result-object v0

    .line 393
    :goto_27
    new-instance v3, Lcom/bytedance/sdk/a/b/a/g/a$c;

    invoke-direct {v3, v2, v1, v0}, Lcom/bytedance/sdk/a/b/a/g/a$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v3

    .line 388
    :catch_2d
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    .line 391
    goto :goto_27
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 355
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a$c;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1c

    .line 357
    :try_start_5
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a$c;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 358
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/g/a$c;->b:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_1b

    .line 363
    :goto_1a
    return-object v0

    .line 360
    :catch_1b
    move-exception v0

    :cond_1c
    move-object v0, v1

    .line 363
    goto :goto_1a
.end method

.method a(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 367
    .line 368
    if-eqz p1, :cond_c

    .line 370
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/g/a$c;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_d

    .line 371
    const/4 v0, 0x1

    .line 375
    :cond_c
    :goto_c
    return v0

    .line 372
    :catch_d
    move-exception v1

    goto :goto_c
.end method
