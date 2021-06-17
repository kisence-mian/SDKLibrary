.class public final Lcom/tapjoy/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .registers 3

    .line 17
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 18
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 29
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 30
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .registers 3

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 12
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    return-void
.end method
