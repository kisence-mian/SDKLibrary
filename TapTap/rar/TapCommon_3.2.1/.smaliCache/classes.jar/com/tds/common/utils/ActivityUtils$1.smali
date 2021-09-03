.class final Lcom/tds/common/utils/ActivityUtils$1;
.super Ljava/lang/Object;
.source "ActivityUtils.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/utils/ActivityUtils;->getStackTopActivity()Lcom/tds/common/reactor/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p1, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-Landroid/app/Activity;>;"
    const-string v0, "can\'t get top activity"

    const/4 v1, 0x0

    .line 36
    .local v1, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_3
    const-string v2, "android.app.ActivityThread"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 38
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 39
    .local v2, "activityThread":Ljava/lang/Object;
    const-string v3, "mActivities"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 40
    .local v3, "activitiesField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 43
    .local v5, "activities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v5, :cond_34

    .line 44
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 46
    :cond_34
    const/4 v6, 0x0

    .line 47
    .local v6, "hasResult":Z
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 48
    .local v8, "activityRecord":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 49
    .local v9, "activityRecordClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "paused"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 50
    .local v10, "pausedField":Ljava/lang/reflect/Field;
    invoke-virtual {v10, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 51
    invoke-virtual {v10, v8}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6e

    .line 52
    const-string v7, "activity"

    invoke-virtual {v9, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 53
    .local v7, "activityField":Ljava/lang/reflect/Field;
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 55
    .local v4, "activity":Landroid/app/Activity;
    invoke-virtual {p1, v4}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 56
    const/4 v6, 0x1

    .line 57
    goto :goto_6f

    .line 59
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v7    # "activityField":Ljava/lang/reflect/Field;
    .end local v8    # "activityRecord":Ljava/lang/Object;
    .end local v9    # "activityRecordClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "pausedField":Ljava/lang/reflect/Field;
    :cond_6e
    goto :goto_3d

    .line 60
    :cond_6f
    :goto_6f
    if-eqz v6, :cond_75

    .line 61
    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    goto :goto_7d

    .line 63
    :cond_75
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_7d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_7d} :catch_7e
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_7d} :catch_7e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_7d} :catch_7e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_7d} :catch_7e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_7d} :catch_7e

    .line 70
    .end local v2    # "activityThread":Ljava/lang/Object;
    .end local v3    # "activitiesField":Ljava/lang/reflect/Field;
    .end local v5    # "activities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6    # "hasResult":Z
    :goto_7d
    goto :goto_8a

    .line 65
    :catch_7e
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 69
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 71
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_8a
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 31
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/utils/ActivityUtils$1;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
