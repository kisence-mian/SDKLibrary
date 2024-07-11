.class public final Lcom/tapjoy/internal/gg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Lcom/tapjoy/internal/gg;

.field private static e:Lcom/tapjoy/internal/gg;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/tapjoy/internal/gg;

    invoke-direct {v0}, Lcom/tapjoy/internal/gg;-><init>()V

    .line 17
    sput-object v0, Lcom/tapjoy/internal/gg;->d:Lcom/tapjoy/internal/gg;

    sput-object v0, Lcom/tapjoy/internal/gg;->e:Lcom/tapjoy/internal/gg;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/gg;->f:Ljava/lang/Boolean;

    .line 21
    iput-object v0, p0, Lcom/tapjoy/internal/gg;->a:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/tapjoy/internal/gg;->g:Ljava/lang/Boolean;

    .line 23
    iput-object v0, p0, Lcom/tapjoy/internal/gg;->b:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/gg;->c:Z

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/gg;
    .registers 1

    .line 31
    sget-object v0, Lcom/tapjoy/internal/gg;->e:Lcom/tapjoy/internal/gg;

    return-object v0
.end method

.method private d()Z
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/tapjoy/internal/gg;->h:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 81
    const-string v2, "tjcPrefrences"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/tapjoy/internal/gg;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "gdpr"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_1f
    return v1
.end method

.method private e()Z
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/tapjoy/internal/gg;->h:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 92
    const-string v2, "tjcPrefrences"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/tapjoy/internal/gg;->a:Ljava/lang/String;

    const-string v2, "cgdpr"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_1b
    return v1
.end method

.method private f()Z
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/tapjoy/internal/gg;->h:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 192
    const-string v2, "tjcPrefrences"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/tapjoy/internal/gg;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "below_consent_age"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 195
    const/4 v0, 0x1

    return v0

    .line 197
    :cond_1f
    return v1
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .registers 6

    monitor-enter p0

    .line 40
    if-eqz p1, :cond_9

    :try_start_3
    iget-object v0, p0, Lcom/tapjoy/internal/gg;->h:Landroid/content/Context;

    if-nez v0, :cond_9

    .line 41
    iput-object p1, p0, Lcom/tapjoy/internal/gg;->h:Landroid/content/Context;

    .line 1031
    :cond_9
    sget-object p1, Lcom/tapjoy/internal/gg;->e:Lcom/tapjoy/internal/gg;

    .line 44
    nop

    .line 1126
    iget-object v0, p1, Lcom/tapjoy/internal/gg;->h:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_63

    .line 1127
    const-string v2, "tjcPrefrences"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1130
    iget-object v2, p1, Lcom/tapjoy/internal/gg;->f:Ljava/lang/Boolean;

    if-nez v2, :cond_2f

    const-string v2, "gdpr"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1131
    const-string v2, "gdpr"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/tapjoy/internal/gg;->f:Ljava/lang/Boolean;

    .line 1134
    :cond_2f
    iget-object v2, p1, Lcom/tapjoy/internal/gg;->a:Ljava/lang/String;

    if-nez v2, :cond_3d

    .line 1135
    const-string v2, "cgdpr"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/tapjoy/internal/gg;->a:Ljava/lang/String;

    .line 1138
    :cond_3d
    iget-object v2, p1, Lcom/tapjoy/internal/gg;->g:Ljava/lang/Boolean;

    if-nez v2, :cond_55

    const-string v2, "below_consent_age"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1139
    const-string v2, "below_consent_age"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/tapjoy/internal/gg;->g:Ljava/lang/Boolean;

    .line 1142
    :cond_55
    iget-object v2, p1, Lcom/tapjoy/internal/gg;->b:Ljava/lang/String;

    if-nez v2, :cond_63

    .line 1143
    const-string v2, "us_privacy"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tapjoy/internal/gg;->b:Ljava/lang/String;

    .line 47
    :cond_63
    iget-boolean p1, p0, Lcom/tapjoy/internal/gg;->c:Z

    if-eqz p1, :cond_8c

    .line 49
    iput-boolean v1, p0, Lcom/tapjoy/internal/gg;->c:Z

    .line 2031
    sget-object p1, Lcom/tapjoy/internal/gg;->e:Lcom/tapjoy/internal/gg;

    .line 50
    nop

    .line 2103
    iget-object v0, p1, Lcom/tapjoy/internal/gg;->h:Landroid/content/Context;

    if-eqz v0, :cond_8c

    .line 2105
    iget-object v0, p1, Lcom/tapjoy/internal/gg;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_77

    .line 2106
    invoke-direct {p1}, Lcom/tapjoy/internal/gg;->d()Z

    .line 2109
    :cond_77
    iget-object v0, p1, Lcom/tapjoy/internal/gg;->a:Ljava/lang/String;

    if-eqz v0, :cond_7e

    .line 2110
    invoke-direct {p1}, Lcom/tapjoy/internal/gg;->e()Z

    .line 2113
    :cond_7e
    iget-object v0, p1, Lcom/tapjoy/internal/gg;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_85

    .line 2114
    invoke-direct {p1}, Lcom/tapjoy/internal/gg;->f()Z

    .line 2117
    :cond_85
    iget-object v0, p1, Lcom/tapjoy/internal/gg;->b:Ljava/lang/String;

    if-eqz v0, :cond_8c

    .line 2118
    invoke-virtual {p1}, Lcom/tapjoy/internal/gg;->c()Z
    :try_end_8c
    .catchall {:try_start_3 .. :try_end_8c} :catchall_8e

    .line 52
    :cond_8c
    monitor-exit p0

    return-void

    .line 39
    :catchall_8e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 66
    invoke-static {p1}, Lcom/tapjoy/internal/ag;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 67
    return-void

    .line 70
    :cond_7
    iput-object p1, p0, Lcom/tapjoy/internal/gg;->a:Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/tapjoy/internal/gg;->e()Z

    move-result p1

    if-nez p1, :cond_12

    .line 73
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tapjoy/internal/gg;->c:Z

    .line 75
    :cond_12
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 56
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/gg;->f:Ljava/lang/Boolean;

    .line 59
    invoke-direct {p0}, Lcom/tapjoy/internal/gg;->d()Z

    move-result p1

    if-nez p1, :cond_f

    .line 60
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tapjoy/internal/gg;->c:Z

    .line 62
    :cond_f
    return-void
.end method

.method public final b()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    iget-object v1, p0, Lcom/tapjoy/internal/gg;->f:Ljava/lang/Boolean;

    const-string v2, "1"

    const-string v3, "0"

    const/4 v4, 0x1

    if-eqz v1, :cond_1c

    .line 157
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16

    move-object v1, v2

    goto :goto_17

    :cond_16
    move-object v1, v3

    .line 158
    :goto_17
    const-string v5, "gdpr"

    invoke-static {v0, v5, v1, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 161
    :cond_1c
    iget-object v1, p0, Lcom/tapjoy/internal/gg;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/ag;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 162
    iget-object v1, p0, Lcom/tapjoy/internal/gg;->a:Ljava/lang/String;

    const-string v5, "cgdpr"

    invoke-static {v0, v5, v1, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 165
    :cond_2b
    iget-object v1, p0, Lcom/tapjoy/internal/gg;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_3c

    .line 166
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_37

    :cond_36
    move-object v2, v3

    .line 167
    :goto_37
    const-string v1, "below_consent_age"

    invoke-static {v0, v1, v2, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 169
    :cond_3c
    iget-object v1, p0, Lcom/tapjoy/internal/gg;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/ag;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 170
    iget-object v1, p0, Lcom/tapjoy/internal/gg;->b:Ljava/lang/String;

    const-string v2, "us_privacy"

    invoke-static {v0, v2, v1, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 173
    :cond_4b
    return-object v0
.end method

.method public final b(Z)V
    .registers 2

    .line 183
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/gg;->g:Ljava/lang/Boolean;

    .line 185
    invoke-direct {p0}, Lcom/tapjoy/internal/gg;->f()Z

    move-result p1

    if-nez p1, :cond_f

    .line 186
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tapjoy/internal/gg;->c:Z

    .line 188
    :cond_f
    return-void
.end method

.method public final c()Z
    .registers 4

    .line 223
    iget-object v0, p0, Lcom/tapjoy/internal/gg;->h:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 224
    const-string v2, "tjcPrefrences"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/tapjoy/internal/gg;->b:Ljava/lang/String;

    const-string v2, "us_privacy"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    const/4 v0, 0x1

    return v0

    .line 229
    :cond_1b
    return v1
.end method
