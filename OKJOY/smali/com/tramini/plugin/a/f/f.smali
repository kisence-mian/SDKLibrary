.class public final Lcom/tramini/plugin/a/f/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 8

    .prologue
    .line 57
    if-nez p0, :cond_9

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 66
    :goto_8
    return-object p3

    .line 59
    :cond_9
    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
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

    .line 65
    :catch_1d
    move-exception v0

    goto :goto_8
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 9
    if-nez p0, :cond_3

    .line 19
    :goto_2
    return-void

    .line 11
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_14
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_13} :catch_16

    goto :goto_2

    .line 17
    :catch_14
    move-exception v0

    goto :goto_2

    .line 19
    :catch_16
    move-exception v0

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 45
    if-nez p0, :cond_3

    .line 54
    :goto_2
    return-void

    .line 47
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_12} :catch_15

    goto :goto_2

    .line 53
    :catch_13
    move-exception v0

    goto :goto_2

    .line 54
    :catch_15
    move-exception v0

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .prologue
    .line 22
    if-nez p0, :cond_3

    .line 31
    :goto_2
    return-void

    .line 24
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 26
    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_12} :catch_15

    goto :goto_2

    .line 30
    :catch_13
    move-exception v0

    goto :goto_2

    .line 31
    :catch_15
    move-exception v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 34
    if-nez p0, :cond_3

    .line 43
    :goto_2
    return-void

    .line 36
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_17
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_16} :catch_19

    goto :goto_2

    .line 42
    :catch_17
    move-exception v0

    goto :goto_2

    .line 43
    :catch_19
    move-exception v0

    goto :goto_2
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 71
    if-nez p0, :cond_5

    move p3, v0

    .line 80
    :goto_4
    return p3

    .line 73
    :cond_5
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_11
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_d} :catch_f

    move-result p3

    goto :goto_4

    :catch_f
    move-exception v0

    goto :goto_4

    .line 79
    :catch_11
    move-exception v0

    goto :goto_4
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 85
    if-nez p0, :cond_4

    const/4 p3, 0x0

    .line 94
    :goto_3
    return-object p3

    .line 87
    :cond_4
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_10
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_c} :catch_e

    move-result-object p3

    goto :goto_3

    :catch_e
    move-exception v0

    goto :goto_3

    .line 93
    :catch_10
    move-exception v0

    goto :goto_3
.end method
