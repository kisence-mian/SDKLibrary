.class public Lcom/mintegral/msdk/base/utils/l;
.super Ljava/lang/Object;
.source "InstallAppManager.java"


# static fields
.field private static b:Lcom/mintegral/msdk/base/utils/l;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/base/utils/l;->b:Lcom/mintegral/msdk/base/utils/l;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/mintegral/msdk/base/utils/l;->a:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mintegral/msdk/base/utils/l;
    .registers 3

    .prologue
    .line 34
    sget-object v0, Lcom/mintegral/msdk/base/utils/l;->b:Lcom/mintegral/msdk/base/utils/l;

    if-nez v0, :cond_13

    .line 35
    const-class v1, Lcom/mintegral/msdk/base/utils/l;

    monitor-enter v1

    .line 36
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/utils/l;->b:Lcom/mintegral/msdk/base/utils/l;

    if-nez v0, :cond_12

    .line 37
    new-instance v0, Lcom/mintegral/msdk/base/utils/l;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/utils/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mintegral/msdk/base/utils/l;->b:Lcom/mintegral/msdk/base/utils/l;

    .line 39
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 41
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/utils/l;->b:Lcom/mintegral/msdk/base/utils/l;

    return-object v0

    .line 39
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/mintegral/msdk/base/entity/h;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 51
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 52
    iget-object v2, p0, Lcom/mintegral/msdk/base/utils/l;->a:Landroid/content/Context;

    if-eqz v2, :cond_6a

    .line 54
    :try_start_a
    iget-object v2, p0, Lcom/mintegral/msdk/base/utils/l;->a:Landroid/content/Context;

    const-string v3, "installed"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/mintegral/msdk/base/utils/l;->c:Landroid/content/SharedPreferences;

    .line 55
    iget-object v2, p0, Lcom/mintegral/msdk/base/utils/l;->c:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_6a

    .line 56
    iget-object v2, p0, Lcom/mintegral/msdk/base/utils/l;->c:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_installed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6a

    .line 58
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 59
    :goto_3f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6a

    .line 60
    new-instance v2, Lcom/mintegral/msdk/base/entity/h;

    invoke-direct {v2}, Lcom/mintegral/msdk/base/entity/h;-><init>()V

    .line 61
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 62
    const-string v5, "campaignId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mintegral/msdk/base/entity/h;->a(Ljava/lang/String;)V

    .line 63
    const-string v5, "packageName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mintegral/msdk/base/entity/h;->b(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_63} :catch_66

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 70
    :catch_66
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 74
    :cond_6a
    return-object v1
.end method

.method public final a(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/mintegral/msdk/base/entity/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    if-eqz p1, :cond_48

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-ltz v0, :cond_48

    .line 82
    :try_start_8
    invoke-static {p1}, Lcom/mintegral/msdk/base/entity/h;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/mintegral/msdk/base/utils/l;->a:Landroid/content/Context;

    if-eqz v1, :cond_48

    .line 84
    iget-object v1, p0, Lcom/mintegral/msdk/base/utils/l;->a:Landroid/content/Context;

    const-string v2, "installed"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/base/utils/l;->c:Landroid/content/SharedPreferences;

    .line 85
    iget-object v1, p0, Lcom/mintegral/msdk/base/utils/l;->c:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_48

    .line 86
    iget-object v1, p0, Lcom/mintegral/msdk/base/utils/l;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_48

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_48} :catch_49

    .line 101
    :cond_48
    :goto_48
    return-void

    .line 96
    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48
.end method
