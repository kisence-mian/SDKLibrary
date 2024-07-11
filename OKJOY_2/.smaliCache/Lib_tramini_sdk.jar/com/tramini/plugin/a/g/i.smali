.class public final Lcom/tramini/plugin/a/g/i;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 78
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 80
    :cond_4
    const/4 v1, 0x2

    :try_start_5
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 81
    invoke-interface {p0, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_10
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_d} :catch_e

    return p0

    .line 84
    :catch_e
    move-exception p0

    goto :goto_12

    .line 82
    :catch_10
    move-exception p0

    .line 86
    nop

    .line 87
    :goto_12
    return v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 6

    .line 64
    if-nez p0, :cond_9

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 66
    :cond_9
    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 67
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_1a} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_1b

    return-object p0

    .line 70
    :catch_1b
    move-exception p0

    goto :goto_1f

    .line 68
    :catch_1d
    move-exception p0

    .line 72
    nop

    .line 73
    :goto_1f
    return-object p3
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 16
    if-nez p0, :cond_3

    return-void

    .line 18
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 19
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_16
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_13} :catch_14

    .line 24
    return-void

    .line 22
    :catch_14
    move-exception p0

    .line 26
    return-void

    .line 20
    :catch_16
    move-exception p0

    .line 24
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 52
    if-nez p0, :cond_3

    return-void

    .line 54
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 55
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 56
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_15
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_12} :catch_13

    .line 60
    return-void

    .line 59
    :catch_13
    move-exception p0

    .line 61
    return-void

    .line 58
    :catch_15
    move-exception p0

    .line 60
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .line 29
    if-nez p0, :cond_3

    return-void

    .line 31
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 32
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 33
    invoke-interface {p0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_15
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_12} :catch_13

    .line 37
    return-void

    .line 36
    :catch_13
    move-exception p0

    .line 38
    return-void

    .line 35
    :catch_15
    move-exception p0

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 41
    if-nez p0, :cond_3

    return-void

    .line 43
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 44
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 45
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_19
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_16} :catch_17

    .line 49
    return-void

    .line 48
    :catch_17
    move-exception p0

    .line 50
    return-void

    .line 47
    :catch_19
    move-exception p0

    .line 49
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 92
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_4
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 95
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_10
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_d} :catch_e

    return-object p0

    .line 98
    :catch_e
    move-exception p0

    goto :goto_12

    .line 96
    :catch_10
    move-exception p0

    .line 100
    nop

    .line 101
    :goto_12
    return-object p3
.end method
