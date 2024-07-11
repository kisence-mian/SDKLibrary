.class public final Lcom/tapjoy/internal/gc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/tapjoy/internal/gc;

.field private static c:Lcom/tapjoy/internal/gc;


# instance fields
.field public final a:Lcom/tapjoy/internal/ga;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/tapjoy/internal/gc;

    invoke-direct {v0}, Lcom/tapjoy/internal/gc;-><init>()V

    .line 28
    sput-object v0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/gc;

    sput-object v0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gc;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/tapjoy/internal/ga;

    invoke-direct {v0}, Lcom/tapjoy/internal/ga;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/gc;->a:Lcom/tapjoy/internal/ga;

    .line 67
    return-void
.end method

.method public static a()Lcom/tapjoy/internal/gc;
    .registers 1

    .line 34
    sget-object v0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gc;

    return-object v0
.end method

.method public static b()Lcom/tapjoy/internal/ga;
    .registers 1

    .line 54
    sget-object v0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gc;

    iget-object v0, v0, Lcom/tapjoy/internal/gc;->a:Lcom/tapjoy/internal/ga;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .registers 5

    monitor-enter p0

    .line 70
    if-eqz p1, :cond_53

    :try_start_3
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->d:Landroid/content/Context;

    if-nez v0, :cond_53

    .line 71
    iput-object p1, p0, Lcom/tapjoy/internal/gc;->d:Landroid/content/Context;

    .line 73
    nop

    .line 1082
    invoke-virtual {p0}, Lcom/tapjoy/internal/gc;->c()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1083
    invoke-virtual {p0}, Lcom/tapjoy/internal/gc;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "configurations"

    .line 1084
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_50

    .line 1085
    if-eqz v0, :cond_40

    .line 1088
    :try_start_1b
    invoke-static {v0}, Lcom/tapjoy/internal/bi;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bi;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_32
    .catchall {:try_start_1b .. :try_end_1f} :catchall_50

    .line 1090
    :try_start_1f
    invoke-virtual {v0}, Lcom/tapjoy/internal/bi;->d()Ljava/util/Map;

    move-result-object v1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_2d

    .line 1092
    :try_start_23
    invoke-virtual {v0}, Lcom/tapjoy/internal/bi;->close()V

    .line 1093
    nop

    .line 1095
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->a:Lcom/tapjoy/internal/ga;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ga;->a(Ljava/util/Map;)V

    .line 1098
    goto :goto_40

    .line 1092
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Lcom/tapjoy/internal/bi;->close()V

    .line 1093
    throw v1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_32} :catch_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_50

    .line 1096
    :catch_32
    move-exception v0

    .line 1097
    :try_start_33
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "configurations"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1101
    :cond_40
    :goto_40
    new-instance p1, Lcom/tapjoy/internal/gc$1;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/gc$1;-><init>(Lcom/tapjoy/internal/gc;)V

    .line 1109
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->a:Lcom/tapjoy/internal/ga;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/ga;->addObserver(Ljava/util/Observer;)V

    .line 1110
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->a:Lcom/tapjoy/internal/ga;

    invoke-interface {p1, v0, v2}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_33 .. :try_end_4f} :catchall_50

    goto :goto_53

    .line 69
    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1

    .line 75
    :cond_53
    :goto_53
    monitor-exit p0

    return-void
.end method

.method public final c()Landroid/content/SharedPreferences;
    .registers 4

    .line 78
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->d:Landroid/content/Context;

    const-string v1, "tjcPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
