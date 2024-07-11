.class public final Lcom/anythink/core/common/g/m;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 6

    .line 92
    if-nez p0, :cond_9

    .line 93
    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 96
    :cond_9
    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 97
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

    .line 100
    :catch_1b
    move-exception p0

    goto :goto_1f

    .line 98
    :catch_1d
    move-exception p0

    .line 102
    nop

    .line 103
    :goto_1f
    return-object p3
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 21
    if-nez p0, :cond_3

    .line 22
    return-void

    .line 25
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 26
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_16
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_13} :catch_14

    .line 31
    return-void

    .line 29
    :catch_14
    move-exception p0

    .line 33
    return-void

    .line 27
    :catch_16
    move-exception p0

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 36
    if-nez p0, :cond_3

    .line 37
    return-void

    .line 40
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 41
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_16
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_13} :catch_14

    .line 46
    return-void

    .line 44
    :catch_14
    move-exception p0

    .line 47
    return-void

    .line 42
    :catch_16
    move-exception p0

    .line 46
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 78
    if-nez p0, :cond_3

    .line 79
    return-void

    .line 82
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 83
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 84
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_15
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_12} :catch_13

    .line 88
    return-void

    .line 87
    :catch_13
    move-exception p0

    .line 89
    return-void

    .line 86
    :catch_15
    move-exception p0

    .line 88
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .line 50
    if-nez p0, :cond_3

    .line 51
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
    invoke-interface {p0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

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

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 64
    if-nez p0, :cond_3

    .line 65
    return-void

    .line 68
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 69
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 70
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_19
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_16} :catch_17

    .line 74
    return-void

    .line 73
    :catch_17
    move-exception p0

    .line 75
    return-void

    .line 72
    :catch_19
    move-exception p0

    .line 74
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    .line 108
    if-nez p0, :cond_3

    .line 109
    return p3

    .line 112
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 113
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_f
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_c} :catch_d

    return p0

    .line 116
    :catch_d
    move-exception p0

    goto :goto_11

    .line 114
    :catch_f
    move-exception p0

    .line 118
    nop

    .line 119
    :goto_11
    return p3
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 124
    if-nez p0, :cond_4

    .line 125
    const/4 p0, 0x0

    return-object p0

    .line 128
    :cond_4
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 129
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_10
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_d} :catch_e

    return-object p0

    .line 132
    :catch_e
    move-exception p0

    goto :goto_12

    .line 130
    :catch_10
    move-exception p0

    .line 134
    nop

    .line 135
    :goto_12
    return-object p3
.end method
