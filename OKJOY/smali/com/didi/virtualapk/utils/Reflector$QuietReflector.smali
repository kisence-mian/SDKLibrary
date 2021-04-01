.class public Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
.super Lcom/didi/virtualapk/utils/Reflector;
.source "Reflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/virtualapk/utils/Reflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuietReflector"
.end annotation


# instance fields
.field protected mIgnored:Ljava/lang/Throwable;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/didi/virtualapk/utils/Reflector;-><init>()V

    .line 264
    return-void
.end method

.method public static on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 3
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/didi/virtualapk/utils/Reflector$QuietReflector;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_e

    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v1, "Type was null!"

    invoke-direct {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-static {p0, v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static on(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 3
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "ignored"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/didi/virtualapk/utils/Reflector$QuietReflector;"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    invoke-direct {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;-><init>()V

    .line 250
    .local v0, "reflector":Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    iput-object p0, v0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mType:Ljava/lang/Class;

    .line 251
    iput-object p1, v0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 252
    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 226
    const/4 v0, 0x1

    const-class v1, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    return-object v0
.end method

.method public static on(Ljava/lang/String;Z)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "initialize"    # Z

    .prologue
    .line 230
    const-class v0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    return-object v0
.end method

.method public static on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "initialize"    # Z
    .param p2, "loader"    # Ljava/lang/ClassLoader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 237
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_9} :catch_b

    move-result-object v2

    .line 240
    :goto_a
    return-object v2

    .line 238
    :catch_b
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v2

    goto :goto_a
.end method

.method public static with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 2
    .param p0, "caller"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 256
    if-nez p0, :cond_a

    .line 257
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    .line 259
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    goto :goto_9
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 320
    :goto_6
    return-object p0

    .line 314
    :cond_7
    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 315
    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_6

    .line 316
    :catch_e
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Throwable;
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    goto :goto_6
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    return-object v0
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 421
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 431
    :goto_7
    return-object v1

    .line 425
    :cond_8
    const/4 v2, 0x0

    :try_start_9
    iput-object v2, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 426
    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object v1

    goto :goto_7

    .line 427
    :catch_10
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Throwable;
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public varargs callByCaller(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "caller"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 436
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 446
    :goto_7
    return-object v1

    .line 440
    :cond_8
    const/4 v2, 0x0

    :try_start_9
    iput-object v2, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 441
    invoke-super {p0, p1, p2}, Lcom/didi/virtualapk/utils/Reflector;->callByCaller(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object v1

    goto :goto_7

    .line 442
    :catch_10
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Throwable;
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public varargs constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 4
    .param p1    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/didi/virtualapk/utils/Reflector$QuietReflector;"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 290
    :goto_6
    return-object p0

    .line 284
    :cond_7
    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 285
    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_6

    .line 286
    :catch_e
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Throwable;
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    goto :goto_6
.end method

.method public bridge synthetic constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 3
    .param p1    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    return-object v0
.end method

.method public field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 341
    :goto_6
    return-object p0

    .line 335
    :cond_7
    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 336
    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_6

    .line 337
    :catch_e
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Throwable;
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    goto :goto_6
.end method

.method public bridge synthetic field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()TR;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 346
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 356
    :goto_7
    return-object v1

    .line 350
    :cond_8
    const/4 v2, 0x0

    :try_start_9
    iput-object v2, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 351
    invoke-super {p0}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object v1

    goto :goto_7

    .line 352
    :catch_10
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Throwable;
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "caller"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 361
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 371
    :goto_7
    return-object v1

    .line 365
    :cond_8
    const/4 v2, 0x0

    :try_start_9
    iput-object v2, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 366
    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object v1

    goto :goto_7

    .line 367
    :catch_10
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Throwable;
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public getIgnored()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v0
.end method

.method public varargs method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/didi/virtualapk/utils/Reflector$QuietReflector;"
        }
    .end annotation

    .prologue
    .line 406
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 416
    :goto_6
    return-object p0

    .line 410
    :cond_7
    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 411
    invoke-super {p0, p1, p2}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_6

    .line 412
    :catch_e
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Throwable;
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    goto :goto_6
.end method

.method public bridge synthetic method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    return-object v0
.end method

.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "initargs"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 305
    :goto_7
    return-object v1

    .line 299
    :cond_8
    const/4 v2, 0x0

    :try_start_9
    iput-object v2, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 300
    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object v1

    goto :goto_7

    .line 301
    :catch_10
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Throwable;
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 386
    :goto_6
    return-object p0

    .line 380
    :cond_7
    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 381
    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_6

    .line 382
    :catch_e
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Throwable;
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    goto :goto_6
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 5
    .param p1, "caller"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 401
    :goto_6
    return-object p0

    .line 395
    :cond_7
    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 396
    invoke-super {p0, p1, p2}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_6

    .line 397
    :catch_e
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Throwable;
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    goto :goto_6
.end method

.method public bridge synthetic set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    return-object v0
.end method

.method protected skip()Z
    .registers 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected skipAlways()Z
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mType:Ljava/lang/Class;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public unbind()Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .registers 1

    .prologue
    .line 325
    invoke-super {p0}, Lcom/didi/virtualapk/utils/Reflector;->unbind()Lcom/didi/virtualapk/utils/Reflector;

    .line 326
    return-object p0
.end method

.method public bridge synthetic unbind()Lcom/didi/virtualapk/utils/Reflector;
    .registers 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->unbind()Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    return-object v0
.end method
