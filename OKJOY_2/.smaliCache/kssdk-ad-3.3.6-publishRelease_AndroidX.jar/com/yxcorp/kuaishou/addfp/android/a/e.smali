.class public final Lcom/yxcorp/kuaishou/addfp/android/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    const-string v0, "kscfg_outdfp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/android/a/e;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/android/a/e;->b:Landroid/content/SharedPreferences$Editor;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/android/a/e;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "kwtk"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/android/a/e;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a()Z
    .registers 4

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/android/a/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "xytk"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/android/a/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "kwtk"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/android/a/e;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "oai_ll_sn_d"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/android/a/e;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/android/a/e;->a:Landroid/content/SharedPreferences;

    const-string v1, "oai_ll_sn_d"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
