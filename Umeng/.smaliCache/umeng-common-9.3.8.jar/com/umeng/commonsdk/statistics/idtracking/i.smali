.class public Lcom/umeng/commonsdk/statistics/idtracking/i;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "OaidTracking.java"


# static fields
.field public static final a:Ljava/lang/String; = "umeng_sp_oaid"

.field public static final b:Ljava/lang/String; = "key_umeng_sp_oaid"

.field public static final c:Ljava/lang/String; = "key_umeng_sp_oaid_required_time"

.field private static final d:Ljava/lang/String; = "oaid"


# instance fields
.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 21
    const-string v0, "oaid"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/i;->e:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 5

    .line 27
    nop

    .line 28
    const-string v0, "header_device_oaid"

    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 30
    :try_start_a
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/i;->e:Landroid/content/Context;

    const-string v2, "umeng_sp_oaid"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1e

    .line 33
    const-string v2, "key_umeng_sp_oaid"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1f

    move-object v1, v0

    .line 36
    :cond_1e
    goto :goto_20

    .line 35
    :catchall_1f
    move-exception v0

    .line 38
    :cond_20
    :goto_20
    return-object v1
.end method
