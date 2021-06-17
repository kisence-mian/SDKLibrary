.class public final Lcom/umeng/commonsdk/statistics/common/d;
.super Ljava/lang/Object;
.source "StoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/common/d$b;,
        Lcom/umeng/commonsdk/statistics/common/d$a;
    }
.end annotation


# static fields
.field private static a:Lcom/umeng/commonsdk/statistics/common/d; = null

.field private static b:Landroid/content/Context; = null

.field private static c:Ljava/lang/String; = null

.field private static final e:Ljava/lang/String; = "mobclick_agent_user_"

.field private static final f:Ljava/lang/String; = "mobclick_agent_header_"

.field private static final g:Ljava/lang/String; = "mobclick_agent_cached_"


# instance fields
.field private d:Lcom/umeng/commonsdk/statistics/common/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/commonsdk/statistics/common/d;->a:Lcom/umeng/commonsdk/statistics/common/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/d$a;

    invoke-direct {v0, p1}, Lcom/umeng/commonsdk/statistics/common/d$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/common/d;->d:Lcom/umeng/commonsdk/statistics/common/d$a;

    .line 33
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/common/d;
    .registers 3

    const-class v0, Lcom/umeng/commonsdk/statistics/common/d;

    monitor-enter v0

    .line 36
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/d;->b:Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/d;->c:Ljava/lang/String;

    .line 38
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/d;->a:Lcom/umeng/commonsdk/statistics/common/d;

    if-nez v1, :cond_1a

    .line 39
    new-instance v1, Lcom/umeng/commonsdk/statistics/common/d;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/common/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/d;->a:Lcom/umeng/commonsdk/statistics/common/d;

    .line 42
    :cond_1a
    sget-object p0, Lcom/umeng/commonsdk/statistics/common/d;->a:Lcom/umeng/commonsdk/statistics/common/d;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit v0

    return-object p0

    .line 35
    :catchall_1e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private f()Landroid/content/SharedPreferences;
    .registers 4

    .line 193
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/d;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobclick_agent_user_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/commonsdk/statistics/common/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    .line 53
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 55
    const-string v2, "vt"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 57
    :cond_10
    return v1
.end method

.method public a(I)V
    .registers 4

    .line 46
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_15

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vt"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    :cond_15
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 69
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_15

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "st"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    :cond_15
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 198
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 201
    const-string v1, "au_p"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    const-string p1, "au_u"

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    :cond_21
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 4

    .line 61
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 63
    const-string v2, "st"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_10
    return-object v1
.end method

.method public c()Z
    .registers 2

    .line 77
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->envelopeFileNumber(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public d()[Ljava/lang/String;
    .registers 6

    .line 209
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d;->f()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 210
    const-string v2, "au_p"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    const-string v3, "au_u"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    if-eqz v2, :cond_1f

    if-eqz v1, :cond_1f

    .line 213
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_20

    return-object v3

    .line 216
    :cond_1f
    goto :goto_21

    .line 215
    :catch_20
    move-exception v1

    .line 218
    :goto_21
    return-object v0
.end method

.method public e()V
    .registers 3

    .line 222
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/d;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "au_p"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "au_u"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    return-void
.end method
