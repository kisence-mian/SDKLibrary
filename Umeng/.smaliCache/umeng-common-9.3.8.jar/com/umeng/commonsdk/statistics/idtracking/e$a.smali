.class public Lcom/umeng/commonsdk/statistics/idtracking/e$a;
.super Ljava/lang/Object;
.source "IdTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/idtracking/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->b:Ljava/util/Set;

    .line 328
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->a:Landroid/content/Context;

    .line 329
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 4

    monitor-enter p0

    .line 344
    :try_start_1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    goto :goto_14

    .line 350
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 352
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 353
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "invld_id"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4b

    .line 355
    :cond_49
    monitor-exit p0

    return-void

    .line 343
    :catchall_4b
    move-exception v0

    monitor-exit p0

    goto :goto_4f

    :goto_4e
    throw v0

    :goto_4f
    goto :goto_4e
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    .line 332
    :try_start_1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    xor-int/lit8 p1, p1, 0x1

    monitor-exit p0

    return p1

    .line 332
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .registers 6

    monitor-enter p0

    .line 358
    :try_start_1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 359
    const-string v1, "invld_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 361
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_30

    .line 363
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_30

    aget-object v3, v0, v2

    .line 364
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 365
    iget-object v4, p0, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->b:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_32

    .line 363
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 370
    :cond_30
    monitor-exit p0

    return-void

    .line 357
    :catchall_32
    move-exception v0

    monitor-exit p0

    goto :goto_36

    :goto_35
    throw v0

    :goto_36
    goto :goto_35
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 336
    :try_start_1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 337
    monitor-exit p0

    return-void

    .line 335
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .line 340
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method
