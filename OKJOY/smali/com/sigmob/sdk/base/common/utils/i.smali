.class Lcom/sigmob/sdk/base/common/utils/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "com.Sigmob.settings.identifier"

.field private static final b:Ljava/lang/String; = "privacy.identifier.ifa"

.field private static final c:Ljava/lang/String; = "privacy.identifier.Sigmob"

.field private static final d:Ljava/lang/String; = "privacy.identifier.time"

.field private static final e:Ljava/lang/String; = "privacy.limit.ad.tracking"

.field private static final f:I = -0x1


# instance fields
.field private g:Lcom/sigmob/sdk/base/common/utils/a;

.field private final h:Landroid/content/Context;

.field private i:Lcom/sigmob/sdk/base/common/utils/j;

.field private j:Z

.field private k:Z

.field private l:Lcom/sigmob/sdk/base/common/utils/l;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/utils/j;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/i;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/utils/i;->i:Lcom/sigmob/sdk/base/common/utils/j;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/i;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/i;->a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/utils/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/i;->g:Lcom/sigmob/sdk/base/common/utils/a;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/i;->g:Lcom/sigmob/sdk/base/common/utils/a;

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/a;->a()Lcom/sigmob/sdk/base/common/utils/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/i;->g:Lcom/sigmob/sdk/base/common/utils/a;

    :cond_1c
    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/utils/i;->b()V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/utils/a;
    .registers 11

    const-class v6, Lcom/sigmob/sdk/base/common/utils/i;

    monitor-enter v6

    :try_start_3
    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_4c

    move-result-object v0

    :try_start_a
    const-string v1, "com.Sigmob.settings.identifier"

    invoke-static {p0, v1}, Lcom/sigmob/sdk/base/common/utils/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v1, "privacy.identifier.ifa"

    const-string v2, ""

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "privacy.identifier.Sigmob"

    const-string v4, ""

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "privacy.identifier.time"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-interface {v3, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "privacy.limit.ad.tracking"

    const/4 v7, 0x0

    invoke-interface {v3, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/a;

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/utils/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_42} :catch_44
    .catchall {:try_start_a .. :try_end_42} :catchall_4c

    :goto_42
    monitor-exit v6

    return-object v0

    :catch_44
    move-exception v0

    :try_start_45
    const-string v0, "Cannot read identifier from shared preferences"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4c

    :cond_4a
    const/4 v0, 0x0

    goto :goto_42

    :catchall_4c
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/utils/a;)V
    .registers 8

    const-class v1, Lcom/sigmob/sdk/base/common/utils/i;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    const-string v0, "com.Sigmob.settings.identifier"

    invoke-static {p0, v0}, Lcom/sigmob/sdk/base/common/utils/aa;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "privacy.limit.ad.tracking"

    iget-boolean v3, p1, Lcom/sigmob/sdk/base/common/utils/a;->d:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "privacy.identifier.ifa"

    iget-object v3, p1, Lcom/sigmob/sdk/base/common/utils/a;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "privacy.identifier.Sigmob"

    iget-object v3, p1, Lcom/sigmob/sdk/base/common/utils/a;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "privacy.identifier.time"

    iget-object v3, p1, Lcom/sigmob/sdk/base/common/utils/a;->a:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_38

    monitor-exit v1

    return-void

    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/sigmob/sdk/base/common/utils/a;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/i;->g:Lcom/sigmob/sdk/base/common/utils/a;

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/i;->g:Lcom/sigmob/sdk/base/common/utils/a;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/i;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/i;->g:Lcom/sigmob/sdk/base/common/utils/a;

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/common/utils/i;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/utils/a;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/i;->g:Lcom/sigmob/sdk/base/common/utils/a;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/common/utils/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/sigmob/sdk/base/common/utils/i;->k:Z

    if-nez v1, :cond_1c

    :cond_17
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/i;->g:Lcom/sigmob/sdk/base/common/utils/a;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/base/common/utils/i;->a(Lcom/sigmob/sdk/base/common/utils/a;Lcom/sigmob/sdk/base/common/utils/a;)V

    :cond_1c
    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/utils/i;->k:Z

    if-nez v0, :cond_23

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/utils/i;->d()V

    :cond_23
    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/common/utils/a;Lcom/sigmob/sdk/base/common/utils/a;)V
    .registers 4

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/i;->i:Lcom/sigmob/sdk/base/common/utils/j;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/i;->i:Lcom/sigmob/sdk/base/common/utils/j;

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/base/common/utils/j;->a(Lcom/sigmob/sdk/base/common/utils/a;Lcom/sigmob/sdk/base/common/utils/a;)V

    :cond_c
    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/utils/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/utils/i;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 12

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/a;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/utils/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/common/utils/i;->a(Lcom/sigmob/sdk/base/common/utils/a;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/utils/i;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/common/utils/i;->j:Z

    return p1
.end method

.method private b()V
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/utils/i;->j:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/utils/i;->j:Z

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sigmob/sdk/base/common/utils/k;-><init>(Lcom/sigmob/sdk/base/common/utils/i;Lcom/sigmob/sdk/base/common/utils/i$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4
.end method

.method private c()V
    .registers 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/utils/i;->e()Z

    move-result v0

    if-eqz v0, :cond_2e

    :try_start_e
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/i;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/q;->a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/utils/s;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_13} :catch_2f

    move-result-object v0

    :goto_14
    if-eqz v0, :cond_2e

    iget-object v6, p0, Lcom/sigmob/sdk/base/common/utils/i;->g:Lcom/sigmob/sdk/base/common/utils/a;

    iget-boolean v1, v0, Lcom/sigmob/sdk/base/common/utils/s;->a:Z

    if-eqz v1, :cond_32

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/common/utils/a;->c()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/utils/s;->b:Ljava/lang/String;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/a;->b()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v0, Lcom/sigmob/sdk/base/common/utils/s;->a:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/utils/i;->a(Ljava/lang/String;Ljava/lang/String;ZJ)V

    :cond_2e
    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    const/4 v0, 0x0

    goto :goto_14

    :cond_32
    iget-object v1, v0, Lcom/sigmob/sdk/base/common/utils/s;->b:Ljava/lang/String;

    iget-object v2, v6, Lcom/sigmob/sdk/base/common/utils/a;->c:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/sigmob/sdk/base/common/utils/s;->a:Z

    iget-object v0, v6, Lcom/sigmob/sdk/base/common/utils/a;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/utils/i;->a(Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_2e
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/i;->l:Lcom/sigmob/sdk/base/common/utils/l;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/i;->l:Lcom/sigmob/sdk/base/common/utils/l;

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/utils/l;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/i;->l:Lcom/sigmob/sdk/base/common/utils/l;

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/utils/i;->k:Z

    return-void
.end method

.method private e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/base/common/utils/a;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/i;->g:Lcom/sigmob/sdk/base/common/utils/a;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/utils/i;->b()V

    return-object v0
.end method
