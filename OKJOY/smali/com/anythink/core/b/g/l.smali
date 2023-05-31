.class public final Lcom/anythink/core/b/g/l;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 8

    .prologue
    .line 60
    if-nez p0, :cond_9

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 69
    :goto_8
    return-object p3

    .line 62
    :cond_9
    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_19
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_19} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1b

    move-result-object p3

    goto :goto_8

    :catch_1b
    move-exception v0

    goto :goto_8

    .line 68
    :catch_1d
    move-exception v0

    goto :goto_8
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 12
    if-nez p0, :cond_3

    .line 22
    :goto_2
    return-void

    .line 14
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_14
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_13} :catch_16

    goto :goto_2

    .line 20
    :catch_14
    move-exception v0

    goto :goto_2

    .line 22
    :catch_16
    move-exception v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 48
    if-nez p0, :cond_3

    .line 57
    :goto_2
    return-void

    .line 50
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_12} :catch_15

    goto :goto_2

    .line 56
    :catch_13
    move-exception v0

    goto :goto_2

    .line 57
    :catch_15
    move-exception v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .prologue
    .line 25
    if-nez p0, :cond_3

    .line 34
    :goto_2
    return-void

    .line 27
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 29
    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_12} :catch_15

    goto :goto_2

    .line 33
    :catch_13
    move-exception v0

    goto :goto_2

    .line 34
    :catch_15
    move-exception v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 37
    if-nez p0, :cond_3

    .line 46
    :goto_2
    return-void

    .line 39
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 41
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_17
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_16} :catch_19

    goto :goto_2

    .line 45
    :catch_17
    move-exception v0

    goto :goto_2

    .line 46
    :catch_19
    move-exception v0

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    .prologue
    .line 74
    if-nez p0, :cond_3

    .line 83
    :goto_2
    return p3

    .line 76
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_f
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_b} :catch_d

    move-result p3

    goto :goto_2

    :catch_d
    move-exception v0

    goto :goto_2

    .line 82
    :catch_f
    move-exception v0

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 88
    if-nez p0, :cond_4

    const/4 p3, 0x0

    .line 97
    :goto_3
    return-object p3

    .line 90
    :cond_4
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_10
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_c} :catch_e

    move-result-object p3

    goto :goto_3

    :catch_e
    move-exception v0

    goto :goto_3

    .line 96
    :catch_10
    move-exception v0

    goto :goto_3
.end method
