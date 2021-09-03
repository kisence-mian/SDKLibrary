.class public Lcom/tds/common/utils/SP;
.super Ljava/lang/Object;
.source "SP.java"


# static fields
.field private static mSPCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tds/common/utils/SP;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mSp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tds/common/utils/SP;->mSPCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/tds/common/utils/SP;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 20
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/utils/SP;->mSp:Landroid/content/SharedPreferences;

    .line 21
    return-void
.end method

.method public static getSP(Ljava/lang/String;)Lcom/tds/common/utils/SP;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 38
    sget-object v0, Lcom/tds/common/utils/SP;->mSPCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/tds/common/utils/SP;->mSPCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/utils/SP;

    return-object v0

    .line 39
    :cond_17
    new-instance v0, Lcom/tds/common/utils/SP;

    invoke-direct {v0, p0}, Lcom/tds/common/utils/SP;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "sp":Lcom/tds/common/utils/SP;
    sget-object v1, Lcom/tds/common/utils/SP;->mSPCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-object v0

    .line 37
    .end local v0    # "sp":Lcom/tds/common/utils/SP;
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sp name empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inited()Z
    .registers 1

    .line 24
    sget-object v0, Lcom/tds/common/utils/SP;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/tds/common/utils/SP;

    monitor-enter v0

    .line 33
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/tds/common/utils/SP;->sContext:Landroid/content/Context;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 34
    monitor-exit v0

    return-void

    .line 32
    .end local p0    # "context":Landroid/content/Context;
    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/tds/common/utils/SP;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/tds/common/utils/SP;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 65
    iget-object v0, p0, Lcom/tds/common/utils/SP;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .line 61
    iget-object v0, p0, Lcom/tds/common/utils/SP;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 53
    iget-object v0, p0, Lcom/tds/common/utils/SP;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 57
    iget-object v0, p0, Lcom/tds/common/utils/SP;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/tds/common/utils/SP;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/tds/common/utils/SP;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 93
    iget-object v0, p0, Lcom/tds/common/utils/SP;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 89
    iget-object v0, p0, Lcom/tds/common/utils/SP;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 81
    iget-object v0, p0, Lcom/tds/common/utils/SP;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 85
    iget-object v0, p0, Lcom/tds/common/utils/SP;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/tds/common/utils/SP;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    return-void
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/tds/common/utils/SP;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/tds/common/utils/SP;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    return-void
.end method
