.class public Lcom/sigmob/sdk/common/f/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/f/g$b;,
        Lcom/sigmob/sdk/common/f/g$c;,
        Lcom/sigmob/sdk/common/f/g$a;
    }
.end annotation


# instance fields
.field private a:Lcom/sigmob/sdk/common/f/a;

.field private final b:Landroid/content/Context;

.field private c:Lcom/sigmob/sdk/common/f/g$a;

.field private d:Z

.field private e:Z

.field private f:Lcom/sigmob/sdk/common/f/g$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/common/f/g$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/sigmob/sdk/common/f/g;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/sigmob/sdk/common/f/g;->c:Lcom/sigmob/sdk/common/f/g$a;

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/g;->a(Landroid/content/Context;)Lcom/sigmob/sdk/common/f/a;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/common/f/g;->a:Lcom/sigmob/sdk/common/f/a;

    if-nez p1, :cond_18

    invoke-static {}, Lcom/sigmob/sdk/common/f/a;->a()Lcom/sigmob/sdk/common/f/a;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/common/f/g;->a:Lcom/sigmob/sdk/common/f/a;

    :cond_18
    invoke-direct {p0}, Lcom/sigmob/sdk/common/f/g;->b()V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Lcom/sigmob/sdk/common/f/a;
    .registers 11

    const-class v0, Lcom/sigmob/sdk/common/f/g;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_4e

    :try_start_a
    const-string v2, "com.Sigmob.settings.identifier"

    invoke-static {p0, v2}, Lcom/sigmob/sdk/common/f/o;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "privacy.identifier.ifa"

    const-string v3, ""

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "privacy.identifier.Sigmob"

    const-string v3, ""

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "privacy.identifier.time"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v1, "privacy.limit.ad.tracking"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4b

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4b

    new-instance p0, Lcom/sigmob/sdk/common/f/a;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sigmob/sdk/common/f/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_45

    monitor-exit v0

    return-object p0

    :catchall_45
    move-exception p0

    :try_start_46
    const-string p0, "Cannot read identifier from shared preferences"

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_4e

    :cond_4b
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_4e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Lcom/sigmob/sdk/common/f/a;)V
    .registers 6

    const-class v0, Lcom/sigmob/sdk/common/f/g;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    const-string v1, "com.Sigmob.settings.identifier"

    invoke-static {p0, v1}, Lcom/sigmob/sdk/common/f/o;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "privacy.limit.ad.tracking"

    iget-boolean v2, p1, Lcom/sigmob/sdk/common/f/a;->d:Z

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "privacy.identifier.ifa"

    iget-object v2, p1, Lcom/sigmob/sdk/common/f/a;->b:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "privacy.identifier.Sigmob"

    iget-object v2, p1, Lcom/sigmob/sdk/common/f/a;->c:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "privacy.identifier.time"

    iget-object p1, p1, Lcom/sigmob/sdk/common/f/a;->a:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_38

    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Lcom/sigmob/sdk/common/f/a;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/common/f/g;->a:Lcom/sigmob/sdk/common/f/a;

    iput-object p1, p0, Lcom/sigmob/sdk/common/f/g;->a:Lcom/sigmob/sdk/common/f/a;

    iget-object v1, p0, Lcom/sigmob/sdk/common/f/g;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sigmob/sdk/common/f/g;->a(Landroid/content/Context;Lcom/sigmob/sdk/common/f/a;)V

    iget-object p1, p0, Lcom/sigmob/sdk/common/f/g;->a:Lcom/sigmob/sdk/common/f/a;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/f/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-boolean p1, p0, Lcom/sigmob/sdk/common/f/g;->e:Z

    if-nez p1, :cond_1a

    :cond_15
    iget-object p1, p0, Lcom/sigmob/sdk/common/f/g;->a:Lcom/sigmob/sdk/common/f/a;

    invoke-direct {p0, v0, p1}, Lcom/sigmob/sdk/common/f/g;->a(Lcom/sigmob/sdk/common/f/a;Lcom/sigmob/sdk/common/f/a;)V

    :cond_1a
    iget-boolean p1, p0, Lcom/sigmob/sdk/common/f/g;->e:Z

    if-nez p1, :cond_21

    invoke-direct {p0}, Lcom/sigmob/sdk/common/f/g;->d()V

    :cond_21
    return-void
.end method

.method private a(Lcom/sigmob/sdk/common/f/a;Lcom/sigmob/sdk/common/f/a;)V
    .registers 4

    invoke-static {p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/common/f/g;->c:Lcom/sigmob/sdk/common/f/g$a;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/common/f/g$a;->a(Lcom/sigmob/sdk/common/f/a;Lcom/sigmob/sdk/common/f/a;)V

    :cond_a
    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/common/f/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/common/f/g;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 13

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    new-instance v6, Lcom/sigmob/sdk/common/f/a;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/common/f/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    invoke-direct {p0, v6}, Lcom/sigmob/sdk/common/f/g;->a(Lcom/sigmob/sdk/common/f/a;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/common/f/g;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/common/f/g;->d:Z

    return p1
.end method

.method private b()V
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/sdk/common/f/g;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/common/f/g;->d:Z

    new-instance v0, Lcom/sigmob/sdk/common/f/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sigmob/sdk/common/f/g$b;-><init>(Lcom/sigmob/sdk/common/f/g;Lcom/sigmob/sdk/common/f/g$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/f/g$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private c()V
    .registers 14

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-direct {p0}, Lcom/sigmob/sdk/common/f/g;->e()Z

    move-result v0

    if-eqz v0, :cond_42

    :try_start_e
    iget-object v0, p0, Lcom/sigmob/sdk/common/f/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/l;->a(Landroid/content/Context;)Lcom/sigmob/sdk/common/f/l$b;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_15

    goto :goto_17

    :catchall_15
    move-exception v0

    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_42

    iget-object v1, p0, Lcom/sigmob/sdk/common/f/g;->a:Lcom/sigmob/sdk/common/f/a;

    iget-boolean v2, v0, Lcom/sigmob/sdk/common/f/l$b;->a:Z

    if-eqz v2, :cond_32

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/f/a;->c()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, v0, Lcom/sigmob/sdk/common/f/l$b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/sigmob/sdk/common/f/a;->b()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v0, Lcom/sigmob/sdk/common/f/l$b;->a:Z

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sigmob/sdk/common/f/g;->a(Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_42

    :cond_32
    iget-object v8, v0, Lcom/sigmob/sdk/common/f/l$b;->b:Ljava/lang/String;

    iget-object v9, v1, Lcom/sigmob/sdk/common/f/a;->c:Ljava/lang/String;

    iget-boolean v10, v0, Lcom/sigmob/sdk/common/f/l$b;->a:Z

    iget-object v0, v1, Lcom/sigmob/sdk/common/f/a;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/sigmob/sdk/common/f/g;->a(Ljava/lang/String;Ljava/lang/String;ZJ)V

    :cond_42
    :goto_42
    return-void
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/f/g;->f:Lcom/sigmob/sdk/common/f/g$c;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/sigmob/sdk/common/f/g$c;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/common/f/g;->f:Lcom/sigmob/sdk/common/f/g$c;

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/common/f/g;->e:Z

    return-void
.end method

.method private e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/common/f/a;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/f/g;->a:Lcom/sigmob/sdk/common/f/a;

    invoke-direct {p0}, Lcom/sigmob/sdk/common/f/g;->b()V

    return-object v0
.end method
