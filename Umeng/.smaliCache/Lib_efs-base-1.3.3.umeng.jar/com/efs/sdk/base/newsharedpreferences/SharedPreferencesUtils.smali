.class public Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;
    }
.end annotation


# static fields
.field private static final sSpCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->sSpCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNewSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;
    .registers 4

    .line 38
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->getNewSharedPreferences(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static getNewSharedPreferences(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/SharedPreferences;
    .registers 7

    .line 44
    sget-object v0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->sSpCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 45
    :try_start_3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;

    .line 46
    if-nez v1, :cond_14

    .line 47
    new-instance v1, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;-><init>(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$1;)V

    .line 48
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_43

    .line 52
    # getter for: Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->access$100(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_3e

    .line 53
    monitor-enter v1

    .line 54
    :try_start_1c
    # getter for: Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->access$100(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_39

    .line 57
    if-nez p3, :cond_27

    .line 58
    invoke-static {p0, p1, p2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->handleReplace(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 61
    :cond_27
    # getter for: Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->access$100(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;)Landroid/content/SharedPreferences;

    move-result-object p3

    if-nez p3, :cond_39

    .line 62
    new-instance p3, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;

    invoke-static {p0, p1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->getNewSharedPrefsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {p3, p0, p2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;-><init>(Ljava/io/File;Z)V

    # setter for: Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1, p3}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->access$102(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 65
    :cond_39
    monitor-exit v1

    goto :goto_3e

    :catchall_3b
    move-exception p0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_1c .. :try_end_3d} :catchall_3b

    throw p0

    .line 68
    :cond_3e
    :goto_3e
    # getter for: Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->access$100(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    .line 50
    :catchall_43
    move-exception p0

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public static getNewSharedPrefsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 75
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shared_prefs"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".sp"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 3

    .line 26
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;
    .registers 3

    .line 34
    invoke-static {p0, p1, p2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->getNewSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized handleReplace(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 10

    const-class v0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;

    monitor-enter v0

    .line 98
    if-nez p0, :cond_7

    .line 99
    monitor-exit v0

    return-void

    .line 102
    :cond_7
    :try_start_7
    const-string v1, "sp_replace_flag"

    const/4 v2, 0x1

    invoke-static {p0, v1, p2, v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->getNewSharedPreferences(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 103
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e0

    .line 105
    invoke-static {p0, p1, p2, v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->getNewSharedPreferences(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 106
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 107
    move-object v4, p2

    check-cast v4, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;

    invoke-virtual {v4}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getModifyID()I

    move-result v4

    if-gt v4, v2, :cond_d5

    .line 109
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 110
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    .line 111
    const-string v4, "caisq"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "replace "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_d5

    .line 114
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 115
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 118
    if-eqz v4, :cond_d1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_d1

    if-eqz p2, :cond_d1

    .line 119
    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_9a

    .line 120
    check-cast p2, Ljava/lang/String;

    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_6c

    .line 121
    :cond_9a
    instance-of v5, p2, Ljava/lang/Long;

    if-eqz v5, :cond_a8

    .line 122
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_6c

    .line 123
    :cond_a8
    instance-of v5, p2, Ljava/lang/Integer;

    if-eqz v5, :cond_b6

    .line 124
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_6c

    .line 125
    :cond_b6
    instance-of v5, p2, Ljava/lang/Float;

    if-eqz v5, :cond_c4

    .line 126
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_6c

    .line 127
    :cond_c4
    instance-of v5, p2, Ljava/lang/Boolean;

    if-eqz v5, :cond_d1

    .line 128
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 131
    :cond_d1
    goto :goto_6c

    .line 132
    :cond_d2
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    :cond_d5
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_e0
    .catchall {:try_start_7 .. :try_end_e0} :catchall_e2

    .line 138
    :cond_e0
    monitor-exit v0

    return-void

    .line 97
    :catchall_e2
    move-exception p0

    monitor-exit v0

    goto :goto_e6

    :goto_e5
    throw p0

    :goto_e6
    goto :goto_e5
.end method

.method private static invokeObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 141
    nop

    .line 143
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 146
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 147
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    .line 150
    goto :goto_17

    .line 149
    :catch_12
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 152
    :goto_17
    return-object p0
.end method

.method public static onDestroy()V
    .registers 3

    .line 82
    sget-object v0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->sSpCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 83
    :try_start_3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_29

    .line 84
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;

    .line 85
    # getter for: Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->access$100(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_28

    .line 87
    check-cast v2, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;

    invoke-virtual {v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->onDestroy()V

    .line 89
    :cond_28
    goto :goto_11

    .line 91
    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    goto :goto_2f

    :goto_2e
    throw v1

    :goto_2f
    goto :goto_2e
.end method
