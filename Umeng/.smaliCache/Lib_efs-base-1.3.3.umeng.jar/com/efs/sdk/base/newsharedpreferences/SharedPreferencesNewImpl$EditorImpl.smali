.class public final Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditorImpl"
.end annotation


# instance fields
.field private mClear:Z

.field private mModified:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;


# direct methods
.method public constructor <init>(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->this$0:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final apply()V
    .registers 4

    .line 367
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->this$0:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->save(Landroid/content/SharedPreferences$Editor;ZZZ)V
    invoke-static {v0, p0, v1, v1, v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->access$100(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;Landroid/content/SharedPreferences$Editor;ZZZ)V

    .line 368
    return-void
.end method

.method public final clear()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .line 353
    monitor-enter p0

    .line 354
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mClear:Z

    .line 355
    monitor-exit p0

    return-object p0

    .line 356
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public final commit()Z
    .registers 4

    .line 361
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->this$0:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->save(Landroid/content/SharedPreferences$Editor;ZZZ)V
    invoke-static {v0, p0, v1, v2, v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->access$100(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;Landroid/content/SharedPreferences$Editor;ZZZ)V

    .line 362
    return v2
.end method

.method final doClear()Z
    .registers 3

    .line 371
    monitor-enter p0

    .line 372
    :try_start_1
    iget-boolean v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mClear:Z

    .line 373
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mClear:Z

    .line 374
    monitor-exit p0

    return v0

    .line 375
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method final getAll()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 379
    monitor-enter p0

    .line 380
    :try_start_1
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    monitor-exit p0

    return-object v0

    .line 381
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .line 337
    monitor-enter p0

    .line 338
    :try_start_1
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    monitor-exit p0

    return-object p0

    .line 340
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .line 329
    monitor-enter p0

    .line 330
    :try_start_1
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    monitor-exit p0

    return-object p0

    .line 332
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .line 313
    monitor-enter p0

    .line 314
    :try_start_1
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    monitor-exit p0

    return-object p0

    .line 316
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 5

    .line 321
    monitor-enter p0

    .line 322
    :try_start_1
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    monitor-exit p0

    return-object p0

    .line 324
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .line 300
    monitor-enter p0

    .line 301
    :try_start_1
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    monitor-exit p0

    return-object p0

    .line 303
    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public final putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 308
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "putStringSet is not supported!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .line 345
    monitor-enter p0

    .line 346
    :try_start_1
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->mModified:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    monitor-exit p0

    return-object p0

    .line 348
    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method
