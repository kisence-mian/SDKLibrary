.class public final Lcom/tapjoy/internal/he;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static d:Lcom/tapjoy/internal/he;


# instance fields
.field public final b:Lcom/tapjoy/internal/fi$a;

.field public final c:Lcom/tapjoy/internal/hl;

.field private final e:Lcom/tapjoy/internal/fb$a;

.field private final f:Lcom/tapjoy/internal/ev$a;

.field private final g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/he;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/hl;)V
    .registers 13

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Lcom/tapjoy/internal/hp;->a()V

    .line 78
    new-instance v0, Lcom/tapjoy/internal/fb$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/fb$a;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/he;->e:Lcom/tapjoy/internal/fb$a;

    .line 79
    new-instance v1, Lcom/tapjoy/internal/ev$a;

    invoke-direct {v1}, Lcom/tapjoy/internal/ev$a;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/internal/he;->f:Lcom/tapjoy/internal/ev$a;

    .line 80
    new-instance v2, Lcom/tapjoy/internal/fi$a;

    invoke-direct {v2}, Lcom/tapjoy/internal/fi$a;-><init>()V

    iput-object v2, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    .line 82
    const-string v3, "12.8.1/Android"

    iput-object v3, v0, Lcom/tapjoy/internal/fb$a;->p:Ljava/lang/String;

    .line 83
    const-string v3, "Android"

    iput-object v3, v0, Lcom/tapjoy/internal/fb$a;->g:Ljava/lang/String;

    .line 84
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v3, v0, Lcom/tapjoy/internal/fb$a;->h:Ljava/lang/String;

    .line 85
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v3, v0, Lcom/tapjoy/internal/fb$a;->e:Ljava/lang/String;

    .line 86
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, v0, Lcom/tapjoy/internal/fb$a;->f:Ljava/lang/String;

    .line 87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tapjoy/internal/fb$a;->l:Ljava/lang/String;

    .line 88
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tapjoy/internal/fb$a;->m:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 91
    iput-object p1, p0, Lcom/tapjoy/internal/he;->g:Landroid/content/Context;

    .line 93
    nop

    .line 1190
    nop

    .line 1197
    const-string v3, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1190
    nop

    .line 1191
    new-instance v5, Ljava/io/File;

    invoke-static {p1}, Lcom/tapjoy/internal/hb;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    const-string v7, "deviceid"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2027
    const-string v6, "tapjoyAnalyticsId"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2028
    invoke-static {v8}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_92

    .line 2029
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7a

    invoke-static {v5}, Lcom/tapjoy/internal/bb;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tapjoy/internal/js;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7b

    :cond_7a
    move-object v5, v7

    .line 2030
    :goto_7b
    if-nez v5, :cond_87

    .line 2031
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    goto :goto_88

    .line 2030
    :cond_87
    move-object v8, v5

    .line 2033
    :goto_88
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2034
    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2035
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2037
    :cond_92
    nop

    .line 93
    iput-object v8, v0, Lcom/tapjoy/internal/fb$a;->d:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/tapjoy/internal/gc;->b()Lcom/tapjoy/internal/ga;

    move-result-object v3

    const/4 v5, 0x1

    const-string v6, "TJC_OPTION_DISABLE_ANDROID_ID_AS_ANALYTICS_ID"

    invoke-virtual {v3, v6, v5}, Lcom/tapjoy/internal/ga;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_bd

    .line 97
    nop

    .line 2078
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "android_id"

    invoke-static {v3, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2079
    const-string v5, "9774d56d682e549c"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ba

    invoke-static {v3}, Lcom/tapjoy/internal/js;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_bb

    :cond_ba
    move-object v3, v7

    .line 97
    :goto_bb
    iput-object v3, v0, Lcom/tapjoy/internal/fb$a;->t:Ljava/lang/String;

    .line 100
    :cond_bd
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 101
    nop

    .line 102
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 103
    if-eqz v5, :cond_f0

    .line 104
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v6

    .line 105
    invoke-static {v6}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_de

    .line 106
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/tapjoy/internal/fb$a;->q:Ljava/lang/String;

    .line 110
    :cond_de
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-static {v5}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f0

    .line 112
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/tapjoy/internal/fb$a;->r:Ljava/lang/String;

    .line 116
    :cond_f0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 117
    iput-object p1, v0, Lcom/tapjoy/internal/fb$a;->n:Ljava/lang/String;

    .line 119
    nop

    .line 2246
    invoke-static {v3, p1}, Lcom/tapjoy/internal/y;->e(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v5

    .line 2247
    const/4 v6, 0x2

    if-eqz v5, :cond_110

    array-length v8, v5

    if-lez v8, :cond_110

    .line 2248
    aget-object v4, v5, v4

    .line 3232
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/tapjoy/internal/cc;->a([B)[B

    move-result-object v4

    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 2248
    goto :goto_111

    .line 2250
    :cond_110
    move-object v4, v7

    .line 119
    :goto_111
    invoke-static {v4}, Lcom/tapjoy/internal/js;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tapjoy/internal/fb$a;->o:Ljava/lang/String;

    .line 121
    invoke-static {v3, p1}, Lcom/tapjoy/internal/y;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tapjoy/internal/ev$a;->c:Ljava/lang/String;

    .line 122
    invoke-static {v3, p1}, Lcom/tapjoy/internal/y;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4149
    iput-object v4, v1, Lcom/tapjoy/internal/ev$a;->d:Ljava/lang/Integer;

    .line 124
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-static {v4}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_133

    .line 126
    iput-object v4, v1, Lcom/tapjoy/internal/ev$a;->f:Ljava/lang/String;

    .line 129
    :cond_133
    invoke-static {v3, p1}, Lcom/tapjoy/internal/he;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-static {p1}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13f

    .line 131
    iput-object p1, v1, Lcom/tapjoy/internal/ev$a;->g:Ljava/lang/String;

    .line 134
    :cond_13f
    invoke-virtual {p0}, Lcom/tapjoy/internal/he;->a()V

    .line 136
    iput-object p2, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    .line 137
    nop

    .line 4158
    iget-object p1, p2, Lcom/tapjoy/internal/hl;->c:Lcom/tapjoy/internal/n;

    invoke-virtual {p1}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object p1

    .line 4159
    if-eqz p1, :cond_168

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_168

    .line 4160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " 12.8.1/Android"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tapjoy/internal/fb$a;->p:Ljava/lang/String;

    .line 4163
    :cond_168
    invoke-virtual {p2}, Lcom/tapjoy/internal/hl;->b()Ljava/lang/String;

    move-result-object p1

    .line 4164
    if-eqz p1, :cond_170

    .line 4165
    iput-object p1, v2, Lcom/tapjoy/internal/fi$a;->d:Ljava/lang/String;

    .line 4168
    :cond_170
    nop

    .line 5168
    iget-object p1, p2, Lcom/tapjoy/internal/hl;->b:Landroid/content/SharedPreferences;

    const-string v0, "it"

    const-wide/16 v3, 0x0

    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 5169
    cmp-long p1, v8, v3

    if-nez p1, :cond_1cc

    .line 5170
    iget-object p1, p2, Lcom/tapjoy/internal/hl;->a:Landroid/content/Context;

    .line 6110
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tapjoy/internal/y;->c(Landroid/content/pm/PackageManager;Ljava/lang/String;)J

    move-result-wide v8

    .line 5170
    nop

    .line 5171
    cmp-long p1, v8, v3

    if-nez p1, :cond_1bf

    .line 5172
    iget-object p1, p2, Lcom/tapjoy/internal/hl;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/tapjoy/internal/hb;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 5173
    cmp-long p1, v8, v3

    if-nez p1, :cond_1bf

    .line 5174
    new-instance p1, Ljava/io/File;

    iget-object v1, p2, Lcom/tapjoy/internal/hl;->a:Landroid/content/Context;

    .line 6185
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/tapjoy/internal/y;->d(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5174
    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 5175
    cmp-long p1, v8, v3

    if-nez p1, :cond_1bf

    .line 5176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 5180
    :cond_1bf
    iget-object p1, p2, Lcom/tapjoy/internal/hl;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5182
    :cond_1cc
    nop

    .line 4168
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v2, Lcom/tapjoy/internal/fi$a;->c:Ljava/lang/Long;

    .line 4170
    iget-object p1, p2, Lcom/tapjoy/internal/hl;->f:Lcom/tapjoy/internal/j;

    invoke-virtual {p1}, Lcom/tapjoy/internal/j;->b()I

    move-result p1

    .line 4171
    const/4 v0, 0x7

    invoke-static {v0, p1}, Lcom/tapjoy/internal/he;->a(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/tapjoy/internal/fi$a;->e:Ljava/lang/Integer;

    .line 4172
    const/16 v0, 0x1e

    invoke-static {v0, p1}, Lcom/tapjoy/internal/he;->a(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v2, Lcom/tapjoy/internal/fi$a;->f:Ljava/lang/Integer;

    .line 4174
    iget-object p1, p2, Lcom/tapjoy/internal/hl;->h:Lcom/tapjoy/internal/j;

    invoke-virtual {p1}, Lcom/tapjoy/internal/j;->b()I

    move-result p1

    .line 4175
    if-lez p1, :cond_1fe

    .line 4176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v2, Lcom/tapjoy/internal/fi$a;->h:Ljava/lang/Integer;

    .line 4178
    :cond_1fe
    iget-object p1, p2, Lcom/tapjoy/internal/hl;->i:Lcom/tapjoy/internal/k;

    invoke-virtual {p1}, Lcom/tapjoy/internal/k;->a()J

    move-result-wide v0

    .line 4179
    cmp-long p1, v0, v3

    if-lez p1, :cond_20e

    .line 4180
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v2, Lcom/tapjoy/internal/fi$a;->i:Ljava/lang/Long;

    .line 4182
    :cond_20e
    iget-object p1, p2, Lcom/tapjoy/internal/hl;->j:Lcom/tapjoy/internal/k;

    invoke-virtual {p1}, Lcom/tapjoy/internal/k;->a()J

    move-result-wide v0

    .line 4183
    cmp-long p1, v0, v3

    if-lez p1, :cond_21e

    .line 4184
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v2, Lcom/tapjoy/internal/fi$a;->j:Ljava/lang/Long;

    .line 4186
    :cond_21e
    iget-object p1, p2, Lcom/tapjoy/internal/hl;->k:Lcom/tapjoy/internal/k;

    invoke-virtual {p1}, Lcom/tapjoy/internal/k;->a()J

    move-result-wide v0

    .line 4187
    cmp-long p1, v0, v3

    if-lez p1, :cond_22e

    .line 4188
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v2, Lcom/tapjoy/internal/fi$a;->k:Ljava/lang/Long;

    .line 4191
    :cond_22e
    iget-object p1, p2, Lcom/tapjoy/internal/hl;->l:Lcom/tapjoy/internal/n;

    invoke-virtual {p1}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object p1

    .line 4192
    if-eqz p1, :cond_238

    .line 4193
    iput-object p1, v2, Lcom/tapjoy/internal/fi$a;->l:Ljava/lang/String;

    .line 4195
    :cond_238
    iget-object p1, p2, Lcom/tapjoy/internal/hl;->m:Lcom/tapjoy/internal/j;

    invoke-virtual {p1}, Lcom/tapjoy/internal/j;->b()I

    move-result p1

    .line 4196
    if-lez p1, :cond_246

    .line 4197
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v2, Lcom/tapjoy/internal/fi$a;->m:Ljava/lang/Integer;

    .line 4199
    :cond_246
    iget-object p1, p2, Lcom/tapjoy/internal/hl;->n:Lcom/tapjoy/internal/i;

    invoke-virtual {p1}, Lcom/tapjoy/internal/i;->a()D

    move-result-wide v0

    .line 4200
    const-wide/16 v8, 0x0

    cmpl-double p1, v0, v8

    if-eqz p1, :cond_258

    .line 4201
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v2, Lcom/tapjoy/internal/fi$a;->n:Ljava/lang/Double;

    .line 4203
    :cond_258
    iget-object p1, p2, Lcom/tapjoy/internal/hl;->o:Lcom/tapjoy/internal/k;

    invoke-virtual {p1}, Lcom/tapjoy/internal/k;->a()J

    move-result-wide v0

    .line 4204
    cmp-long p1, v0, v3

    if-lez p1, :cond_268

    .line 4205
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v2, Lcom/tapjoy/internal/fi$a;->o:Ljava/lang/Long;

    .line 4207
    :cond_268
    iget-object p1, p2, Lcom/tapjoy/internal/hl;->p:Lcom/tapjoy/internal/i;

    invoke-virtual {p1}, Lcom/tapjoy/internal/i;->a()D

    move-result-wide v0

    .line 4208
    cmpl-double p1, v0, v8

    if-eqz p1, :cond_278

    .line 4209
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v2, Lcom/tapjoy/internal/fi$a;->p:Ljava/lang/Double;

    .line 4212
    :cond_278
    iget-object p1, p2, Lcom/tapjoy/internal/hl;->g:Lcom/tapjoy/internal/n;

    invoke-virtual {p1}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object p1

    .line 4213
    if-eqz p1, :cond_2aa

    .line 4215
    :try_start_280
    invoke-static {p1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 4216
    sget-object p2, Lcom/tapjoy/internal/fg;->c:Lcom/tapjoy/internal/ek;

    invoke-virtual {p2, p1}, Lcom/tapjoy/internal/ek;->a([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/fg;

    .line 4217
    iget-object p2, v2, Lcom/tapjoy/internal/fi$a;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 4218
    iget-object p2, v2, Lcom/tapjoy/internal/fi$a;->g:Ljava/util/List;

    iget-object p1, p1, Lcom/tapjoy/internal/fg;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_298
    .catch Ljava/lang/IllegalArgumentException; {:try_start_280 .. :try_end_298} :catch_2a2
    .catch Ljava/io/IOException; {:try_start_280 .. :try_end_298} :catch_299

    goto :goto_2aa

    .line 4221
    :catch_299
    move-exception p1

    .line 4222
    iget-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p1, p1, Lcom/tapjoy/internal/hl;->g:Lcom/tapjoy/internal/n;

    invoke-virtual {p1}, Lcom/tapjoy/internal/n;->c()V

    goto :goto_2aa

    .line 4219
    :catch_2a2
    move-exception p1

    .line 4220
    iget-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p1, p1, Lcom/tapjoy/internal/hl;->g:Lcom/tapjoy/internal/n;

    invoke-virtual {p1}, Lcom/tapjoy/internal/n;->c()V

    .line 4226
    :cond_2aa
    :goto_2aa
    iget-object p1, p0, Lcom/tapjoy/internal/he;->f:Lcom/tapjoy/internal/ev$a;

    iget-object p2, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p2, p2, Lcom/tapjoy/internal/hl;->q:Lcom/tapjoy/internal/n;

    invoke-virtual {p2}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tapjoy/internal/ev$a;->e:Ljava/lang/String;

    .line 4228
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object p2, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p2, p2, Lcom/tapjoy/internal/hl;->r:Lcom/tapjoy/internal/n;

    invoke-virtual {p2}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tapjoy/internal/fi$a;->s:Ljava/lang/String;

    .line 4230
    iget-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p1, p1, Lcom/tapjoy/internal/hl;->s:Lcom/tapjoy/internal/j;

    invoke-virtual {p1}, Lcom/tapjoy/internal/j;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4231
    iget-object p2, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2d8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2d9

    :cond_2d8
    move-object p1, v7

    :goto_2d9
    iput-object p1, p2, Lcom/tapjoy/internal/fi$a;->t:Ljava/lang/Integer;

    .line 4233
    iget-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p1, p1, Lcom/tapjoy/internal/hl;->t:Lcom/tapjoy/internal/j;

    invoke-virtual {p1}, Lcom/tapjoy/internal/j;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4234
    iget-object p2, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    if-eq p1, v0, :cond_2f0

    .line 4235
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2f1

    :cond_2f0
    move-object p1, v7

    :goto_2f1
    iput-object p1, p2, Lcom/tapjoy/internal/fi$a;->u:Ljava/lang/Integer;

    .line 4237
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object p2, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p2, p2, Lcom/tapjoy/internal/hl;->u:Lcom/tapjoy/internal/n;

    invoke-virtual {p2}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tapjoy/internal/fi$a;->v:Ljava/lang/String;

    .line 4238
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object p2, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p2, p2, Lcom/tapjoy/internal/hl;->v:Lcom/tapjoy/internal/n;

    invoke-virtual {p2}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tapjoy/internal/fi$a;->w:Ljava/lang/String;

    .line 4239
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object p2, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p2, p2, Lcom/tapjoy/internal/hl;->w:Lcom/tapjoy/internal/n;

    invoke-virtual {p2}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tapjoy/internal/fi$a;->x:Ljava/lang/String;

    .line 4240
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object p2, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p2, p2, Lcom/tapjoy/internal/hl;->x:Lcom/tapjoy/internal/n;

    invoke-virtual {p2}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tapjoy/internal/fi$a;->y:Ljava/lang/String;

    .line 4241
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object p2, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p2, p2, Lcom/tapjoy/internal/hl;->y:Lcom/tapjoy/internal/n;

    invoke-virtual {p2}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tapjoy/internal/fi$a;->z:Ljava/lang/String;

    .line 4243
    iget-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p1, p1, Lcom/tapjoy/internal/hl;->z:Lcom/tapjoy/internal/n;

    invoke-virtual {p1}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object p1

    .line 4244
    if-eqz p1, :cond_367

    .line 4246
    :try_start_339
    invoke-static {p1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 4247
    sget-object p2, Lcom/tapjoy/internal/fh;->c:Lcom/tapjoy/internal/ek;

    invoke-virtual {p2, p1}, Lcom/tapjoy/internal/ek;->a([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/fh;

    .line 4248
    iget-object p2, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object p2, p2, Lcom/tapjoy/internal/fi$a;->A:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 4249
    iget-object p2, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object p2, p2, Lcom/tapjoy/internal/fi$a;->A:Ljava/util/List;

    iget-object p1, p1, Lcom/tapjoy/internal/fh;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_355
    .catch Ljava/lang/IllegalArgumentException; {:try_start_339 .. :try_end_355} :catch_35f
    .catch Ljava/io/IOException; {:try_start_339 .. :try_end_355} :catch_356

    goto :goto_367

    .line 4252
    :catch_356
    move-exception p1

    .line 4253
    iget-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p1, p1, Lcom/tapjoy/internal/hl;->z:Lcom/tapjoy/internal/n;

    invoke-virtual {p1}, Lcom/tapjoy/internal/n;->c()V

    goto :goto_367

    .line 4250
    :catch_35f
    move-exception p1

    .line 4251
    iget-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p1, p1, Lcom/tapjoy/internal/hl;->z:Lcom/tapjoy/internal/n;

    invoke-virtual {p1}, Lcom/tapjoy/internal/n;->c()V

    .line 4257
    :cond_367
    :goto_367
    iget-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p1, p1, Lcom/tapjoy/internal/hl;->A:Lcom/tapjoy/internal/n;

    invoke-virtual {p1}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object p1

    .line 4258
    iget-object p2, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p2, p2, Lcom/tapjoy/internal/hl;->B:Lcom/tapjoy/internal/g;

    invoke-virtual {p2}, Lcom/tapjoy/internal/g;->a()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 4259
    if-eqz p1, :cond_38a

    .line 4260
    iget-object v0, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iput-object p1, v0, Lcom/tapjoy/internal/fi$a;->q:Ljava/lang/String;

    .line 4261
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Lcom/tapjoy/internal/fi$a;->r:Ljava/lang/Boolean;

    goto :goto_392

    .line 4263
    :cond_38a
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iput-object v7, p1, Lcom/tapjoy/internal/fi$a;->q:Ljava/lang/String;

    .line 4264
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iput-object v7, p1, Lcom/tapjoy/internal/fi$a;->r:Ljava/lang/Boolean;

    .line 4267
    :goto_392
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object p2, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p2, p2, Lcom/tapjoy/internal/hl;->C:Lcom/tapjoy/internal/g;

    invoke-virtual {p2}, Lcom/tapjoy/internal/g;->a()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Lcom/tapjoy/internal/fi$a;->B:Ljava/lang/Boolean;

    .line 138
    return-void
.end method

.method private static a(II)I
    .registers 3

    .line 397
    const/4 v0, 0x1

    shl-int p0, v0, p0

    sub-int/2addr p0, v0

    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tapjoy/internal/he;
    .registers 4

    const-class v0, Lcom/tapjoy/internal/he;

    monitor-enter v0

    .line 58
    :try_start_3
    sget-object v1, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/he;

    if-nez v1, :cond_12

    .line 59
    new-instance v1, Lcom/tapjoy/internal/he;

    invoke-static {p0}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/tapjoy/internal/he;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/hl;)V

    sput-object v1, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/he;

    .line 61
    :cond_12
    sget-object p0, Lcom/tapjoy/internal/he;->d:Lcom/tapjoy/internal/he;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object p0

    .line 57
    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 142
    const/16 v0, 0x80

    .line 143
    :try_start_2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 144
    if-eqz p0, :cond_1b

    .line 145
    const-string p1, "com.tapjoy.appstore"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 146
    if-eqz p0, :cond_1b

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_1a} :catch_1c

    return-object p0

    .line 152
    :cond_1b
    goto :goto_1d

    .line 150
    :catch_1c
    move-exception p0

    .line 153
    :goto_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private g()V
    .registers 4

    .line 494
    sget-object v0, Lcom/tapjoy/internal/fg;->c:Lcom/tapjoy/internal/ek;

    new-instance v1, Lcom/tapjoy/internal/fg;

    iget-object v2, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object v2, v2, Lcom/tapjoy/internal/fi$a;->g:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/fg;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ek;->b(Ljava/lang/Object;)[B

    move-result-object v0

    .line 495
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 496
    iget-object v1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v1, v1, Lcom/tapjoy/internal/hl;->g:Lcom/tapjoy/internal/n;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/n;->a(Ljava/lang/String;)V

    .line 497
    return-void
.end method


# virtual methods
.method final a()V
    .registers 4

    .line 271
    monitor-enter p0

    .line 273
    :try_start_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 274
    iget-object v1, p0, Lcom/tapjoy/internal/he;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tapjoy/internal/h;->a(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 275
    invoke-static {}, Lcom/tapjoy/internal/gt;->a()Landroid/app/Activity;

    move-result-object v1

    .line 276
    if-eqz v1, :cond_28

    .line 277
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 278
    if-eqz v1, :cond_28

    .line 279
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Lcom/tapjoy/internal/ac;->a(Landroid/view/Window;)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 282
    :cond_28
    iget-object v1, p0, Lcom/tapjoy/internal/he;->e:Lcom/tapjoy/internal/fb$a;

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/fb$a;->i:Ljava/lang/Integer;

    .line 283
    iget-object v1, p0, Lcom/tapjoy/internal/he;->e:Lcom/tapjoy/internal/fb$a;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/fb$a;->j:Ljava/lang/Integer;

    .line 284
    iget-object v1, p0, Lcom/tapjoy/internal/he;->e:Lcom/tapjoy/internal/fb$a;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/tapjoy/internal/fb$a;->k:Ljava/lang/Integer;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_46} :catch_49
    .catchall {:try_start_1 .. :try_end_46} :catchall_47

    .line 287
    goto :goto_4a

    .line 288
    :catchall_47
    move-exception v0

    goto :goto_4c

    .line 285
    :catch_49
    move-exception v0

    .line 288
    :goto_4a
    :try_start_4a
    monitor-exit p0

    return-void

    :goto_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_47

    throw v0
.end method

.method public final a(JD)V
    .registers 7

    .line 459
    monitor-enter p0

    .line 460
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hl;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v1, v1, Lcom/tapjoy/internal/hl;->o:Lcom/tapjoy/internal/k;

    invoke-virtual {v1, v0, p1, p2}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;

    .line 462
    iget-object v1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v1, v1, Lcom/tapjoy/internal/hl;->p:Lcom/tapjoy/internal/i;

    invoke-virtual {v1, v0, p3, p4}, Lcom/tapjoy/internal/i;->a(Landroid/content/SharedPreferences$Editor;D)Landroid/content/SharedPreferences$Editor;

    .line 463
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 465
    iget-object v0, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/tapjoy/internal/fi$a;->o:Ljava/lang/Long;

    .line 466
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    iput-object p2, p1, Lcom/tapjoy/internal/fi$a;->p:Ljava/lang/Double;

    .line 467
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public final a(Ljava/lang/String;D)V
    .registers 9

    .line 429
    monitor-enter p0

    .line 432
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hl;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v1, v1, Lcom/tapjoy/internal/hl;->l:Lcom/tapjoy/internal/n;

    invoke-virtual {v1}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3a

    .line 434
    iget-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p1, p1, Lcom/tapjoy/internal/hl;->m:Lcom/tapjoy/internal/j;

    invoke-virtual {p1}, Lcom/tapjoy/internal/j;->b()I

    move-result p1

    add-int/2addr v2, p1

    .line 435
    iget-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p1, p1, Lcom/tapjoy/internal/hl;->m:Lcom/tapjoy/internal/j;

    invoke-virtual {p1, v0, v2}, Lcom/tapjoy/internal/j;->a(Landroid/content/SharedPreferences$Editor;I)Landroid/content/SharedPreferences$Editor;

    .line 436
    iget-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p1, p1, Lcom/tapjoy/internal/hl;->n:Lcom/tapjoy/internal/i;

    invoke-virtual {p1}, Lcom/tapjoy/internal/i;->a()D

    move-result-wide v3

    add-double/2addr p2, v3

    .line 437
    iget-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p1, p1, Lcom/tapjoy/internal/hl;->n:Lcom/tapjoy/internal/i;

    invoke-virtual {p1, v0, p2, p3}, Lcom/tapjoy/internal/i;->a(Landroid/content/SharedPreferences$Editor;D)Landroid/content/SharedPreferences$Editor;

    .line 438
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_6f

    .line 440
    :cond_3a
    iget-object v1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v1, v1, Lcom/tapjoy/internal/hl;->l:Lcom/tapjoy/internal/n;

    invoke-virtual {v1, v0, p1}, Lcom/tapjoy/internal/n;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 441
    nop

    .line 442
    iget-object v1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v1, v1, Lcom/tapjoy/internal/hl;->m:Lcom/tapjoy/internal/j;

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/internal/j;->a(Landroid/content/SharedPreferences$Editor;I)Landroid/content/SharedPreferences$Editor;

    .line 443
    nop

    .line 444
    iget-object v1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v1, v1, Lcom/tapjoy/internal/hl;->n:Lcom/tapjoy/internal/i;

    invoke-virtual {v1, v0, p2, p3}, Lcom/tapjoy/internal/i;->a(Landroid/content/SharedPreferences$Editor;D)Landroid/content/SharedPreferences$Editor;

    .line 445
    iget-object v1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v1, v1, Lcom/tapjoy/internal/hl;->o:Lcom/tapjoy/internal/k;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 446
    iget-object v1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v1, v1, Lcom/tapjoy/internal/hl;->p:Lcom/tapjoy/internal/i;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/i;->a(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 447
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 449
    iget-object v0, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iput-object p1, v0, Lcom/tapjoy/internal/fi$a;->l:Ljava/lang/String;

    .line 450
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tapjoy/internal/fi$a;->o:Ljava/lang/Long;

    .line 451
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iput-object v0, p1, Lcom/tapjoy/internal/fi$a;->p:Ljava/lang/Double;

    .line 453
    :goto_6f
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/tapjoy/internal/fi$a;->m:Ljava/lang/Integer;

    .line 454
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    iput-object p2, p1, Lcom/tapjoy/internal/fi$a;->n:Ljava/lang/Double;

    .line 455
    monitor-exit p0

    return-void

    :catchall_81
    move-exception p1

    monitor-exit p0
    :try_end_83
    .catchall {:try_start_1 .. :try_end_83} :catchall_81

    throw p1
.end method

.method public final a(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 607
    monitor-enter p0

    .line 608
    if-eqz p1, :cond_34

    :try_start_3
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 609
    sget-object v0, Lcom/tapjoy/internal/fh;->c:Lcom/tapjoy/internal/ek;

    new-instance v1, Lcom/tapjoy/internal/fh;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/fh;-><init>(Ljava/util/List;)V

    .line 610
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ek;->b(Ljava/lang/Object;)[B

    move-result-object v0

    .line 611
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v1, v1, Lcom/tapjoy/internal/hl;->z:Lcom/tapjoy/internal/n;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/n;->a(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object v0, v0, Lcom/tapjoy/internal/fi$a;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 614
    iget-object v0, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object v0, v0, Lcom/tapjoy/internal/fi$a;->A:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 615
    goto :goto_42

    .line 616
    :cond_34
    iget-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p1, p1, Lcom/tapjoy/internal/hl;->z:Lcom/tapjoy/internal/n;

    invoke-virtual {p1}, Lcom/tapjoy/internal/n;->c()V

    .line 617
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object p1, p1, Lcom/tapjoy/internal/fi$a;->A:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 619
    :goto_42
    monitor-exit p0

    return-void

    :catchall_44
    move-exception p1

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public final a(ILjava/lang/String;)Z
    .registers 4

    .line 557
    monitor-enter p0

    .line 558
    const/4 v0, 0x0

    .line 559
    packed-switch p1, :pswitch_data_84

    goto/16 :goto_7e

    .line 589
    :pswitch_7
    :try_start_7
    iget-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p1, p1, Lcom/tapjoy/internal/hl;->y:Lcom/tapjoy/internal/n;

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/n;->a(Ljava/lang/String;)V

    .line 590
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object p1, p1, Lcom/tapjoy/internal/fi$a;->z:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tapjoy/internal/jq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 591
    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_7e

    .line 592
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iput-object p2, p1, Lcom/tapjoy/internal/fi$a;->z:Ljava/lang/String;

    goto :goto_7e

    .line 582
    :pswitch_1f
    iget-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p1, p1, Lcom/tapjoy/internal/hl;->x:Lcom/tapjoy/internal/n;

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/n;->a(Ljava/lang/String;)V

    .line 583
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object p1, p1, Lcom/tapjoy/internal/fi$a;->y:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tapjoy/internal/jq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 584
    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_7e

    .line 585
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iput-object p2, p1, Lcom/tapjoy/internal/fi$a;->y:Ljava/lang/String;

    goto :goto_7e

    .line 575
    :pswitch_37
    iget-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p1, p1, Lcom/tapjoy/internal/hl;->w:Lcom/tapjoy/internal/n;

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/n;->a(Ljava/lang/String;)V

    .line 576
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object p1, p1, Lcom/tapjoy/internal/fi$a;->x:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tapjoy/internal/jq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 577
    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_7e

    .line 578
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iput-object p2, p1, Lcom/tapjoy/internal/fi$a;->x:Ljava/lang/String;

    goto :goto_7e

    .line 568
    :pswitch_4f
    iget-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p1, p1, Lcom/tapjoy/internal/hl;->v:Lcom/tapjoy/internal/n;

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/n;->a(Ljava/lang/String;)V

    .line 569
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object p1, p1, Lcom/tapjoy/internal/fi$a;->w:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tapjoy/internal/jq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 570
    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_7e

    .line 571
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iput-object p2, p1, Lcom/tapjoy/internal/fi$a;->w:Ljava/lang/String;

    goto :goto_7e

    .line 561
    :pswitch_67
    iget-object p1, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object p1, p1, Lcom/tapjoy/internal/hl;->u:Lcom/tapjoy/internal/n;

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/n;->a(Ljava/lang/String;)V

    .line 562
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object p1, p1, Lcom/tapjoy/internal/fi$a;->v:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tapjoy/internal/jq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 563
    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_7e

    .line 564
    iget-object p1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iput-object p2, p1, Lcom/tapjoy/internal/fi$a;->v:Ljava/lang/String;

    .line 596
    :cond_7e
    :goto_7e
    monitor-exit p0

    return v0

    .line 597
    :catchall_80
    move-exception p1

    monitor-exit p0
    :try_end_82
    .catchall {:try_start_7 .. :try_end_82} :catchall_80

    throw p1

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_67
        :pswitch_4f
        :pswitch_37
        :pswitch_1f
        :pswitch_7
    .end packed-switch
.end method

.method public final a(Ljava/lang/Integer;)Z
    .registers 4

    .line 532
    monitor-enter p0

    .line 533
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v0, v0, Lcom/tapjoy/internal/hl;->s:Lcom/tapjoy/internal/j;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/j;->a(Ljava/lang/Integer;)V

    .line 534
    iget-object v0, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object v0, v0, Lcom/tapjoy/internal/fi$a;->t:Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/tapjoy/internal/jq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 535
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    .line 536
    iget-object v1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iput-object p1, v1, Lcom/tapjoy/internal/fi$a;->t:Ljava/lang/Integer;

    .line 538
    :cond_18
    monitor-exit p0

    return v0

    .line 539
    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 5

    .line 500
    monitor-enter p0

    .line 501
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v0, v0, Lcom/tapjoy/internal/hl;->q:Lcom/tapjoy/internal/n;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/n;->a(Ljava/lang/String;)V

    .line 503
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    .line 504
    iget-object v2, p0, Lcom/tapjoy/internal/he;->f:Lcom/tapjoy/internal/ev$a;

    iget-object v2, v2, Lcom/tapjoy/internal/ev$a;->e:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/tapjoy/internal/jq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 505
    :goto_18
    iget-object v1, p0, Lcom/tapjoy/internal/he;->f:Lcom/tapjoy/internal/ev$a;

    iput-object p1, v1, Lcom/tapjoy/internal/ev$a;->e:Ljava/lang/String;

    goto :goto_2a

    .line 507
    :cond_1d
    iget-object p1, p0, Lcom/tapjoy/internal/he;->f:Lcom/tapjoy/internal/ev$a;

    iget-object p1, p1, Lcom/tapjoy/internal/ev$a;->e:Ljava/lang/String;

    if-eqz p1, :cond_24

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 508
    :goto_25
    iget-object p1, p0, Lcom/tapjoy/internal/he;->f:Lcom/tapjoy/internal/ev$a;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/tapjoy/internal/ev$a;->e:Ljava/lang/String;

    .line 510
    :goto_2a
    monitor-exit p0

    return v0

    .line 511
    :catchall_2c
    move-exception p1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method final a(Ljava/lang/String;JZ)Z
    .registers 11

    .line 471
    monitor-enter p0

    .line 472
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object v0, v0, Lcom/tapjoy/internal/fi$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 473
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3e

    .line 474
    iget-object v4, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object v4, v4, Lcom/tapjoy/internal/fi$a;->g:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/internal/ff;

    .line 475
    iget-object v5, v4, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 476
    if-eqz p4, :cond_39

    .line 477
    invoke-virtual {v4}, Lcom/tapjoy/internal/ff;->b()Lcom/tapjoy/internal/ff$a;

    move-result-object p1

    .line 478
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Lcom/tapjoy/internal/ff$a;->d:Ljava/lang/Long;

    .line 479
    iget-object p2, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object p2, p2, Lcom/tapjoy/internal/fi$a;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/tapjoy/internal/ff$a;->b()Lcom/tapjoy/internal/ff;

    move-result-object p1

    invoke-interface {p2, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 480
    monitor-exit p0

    return v3

    .line 482
    :cond_39
    monitor-exit p0

    return v1

    .line 473
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 487
    :cond_3e
    iget-object p4, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object p4, p4, Lcom/tapjoy/internal/fi$a;->g:Ljava/util/List;

    new-instance v0, Lcom/tapjoy/internal/ff;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/tapjoy/internal/ff;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-direct {p0}, Lcom/tapjoy/internal/he;->g()V

    .line 489
    monitor-exit p0

    return v3

    .line 490
    :catchall_53
    move-exception p1

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_53

    goto :goto_57

    :goto_56
    throw p1

    :goto_57
    goto :goto_56
.end method

.method public final a(Z)Z
    .registers 4

    .line 663
    monitor-enter p0

    .line 664
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v0, v0, Lcom/tapjoy/internal/hl;->C:Lcom/tapjoy/internal/g;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/g;->a(Z)V

    .line 665
    iget-object v0, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object v0, v0, Lcom/tapjoy/internal/fi$a;->B:Ljava/lang/Boolean;

    sget-object v1, Lcom/tapjoy/internal/fi;->r:Ljava/lang/Boolean;

    .line 666
    invoke-static {v0, v1}, Lcom/tapjoy/internal/jq;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 667
    :goto_1d
    iget-object v1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/tapjoy/internal/fi$a;->B:Ljava/lang/Boolean;

    .line 668
    monitor-exit p0

    return v0

    .line 669
    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public final b()Lcom/tapjoy/internal/fc;
    .registers 8

    .line 292
    monitor-enter p0

    .line 294
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/he;->e:Lcom/tapjoy/internal/fb$a;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/fb$a;->l:Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/tapjoy/internal/he;->e:Lcom/tapjoy/internal/fb$a;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/fb$a;->m:Ljava/lang/String;

    .line 298
    const/4 v0, 0x0

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xf731400

    sub-long/2addr v1, v3

    .line 301
    iget-object v3, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object v3, v3, Lcom/tapjoy/internal/fi$a;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 302
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/internal/ff;

    .line 303
    iget-object v4, v4, Lcom/tapjoy/internal/ff;->g:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-gtz v6, :cond_44

    .line 304
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 305
    const/4 v0, 0x1

    .line 307
    :cond_44
    goto :goto_2a

    .line 309
    :cond_45
    if-eqz v0, :cond_4a

    .line 310
    invoke-direct {p0}, Lcom/tapjoy/internal/he;->g()V

    .line 313
    :cond_4a
    new-instance v0, Lcom/tapjoy/internal/fc;

    iget-object v1, p0, Lcom/tapjoy/internal/he;->e:Lcom/tapjoy/internal/fb$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fb$a;->b()Lcom/tapjoy/internal/fb;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/he;->f:Lcom/tapjoy/internal/ev$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/ev$a;->b()Lcom/tapjoy/internal/ev;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    invoke-virtual {v3}, Lcom/tapjoy/internal/fi$a;->b()Lcom/tapjoy/internal/fi;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/fc;-><init>(Lcom/tapjoy/internal/fb;Lcom/tapjoy/internal/ev;Lcom/tapjoy/internal/fi;)V

    monitor-exit p0

    return-object v0

    .line 314
    :catchall_63
    move-exception v0

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_63

    goto :goto_67

    :goto_66
    throw v0

    :goto_67
    goto :goto_66
.end method

.method public final b(Ljava/lang/Integer;)Z
    .registers 4

    .line 546
    monitor-enter p0

    .line 547
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v0, v0, Lcom/tapjoy/internal/hl;->t:Lcom/tapjoy/internal/j;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/j;->a(Ljava/lang/Integer;)V

    .line 548
    iget-object v0, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object v0, v0, Lcom/tapjoy/internal/fi$a;->u:Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/tapjoy/internal/jq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 549
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    .line 550
    iget-object v1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iput-object p1, v1, Lcom/tapjoy/internal/fi$a;->u:Ljava/lang/Integer;

    .line 552
    :cond_18
    monitor-exit p0

    return v0

    .line 553
    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 4

    .line 518
    monitor-enter p0

    .line 519
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v0, v0, Lcom/tapjoy/internal/hl;->r:Lcom/tapjoy/internal/n;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/n;->a(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object v0, v0, Lcom/tapjoy/internal/fi$a;->s:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tapjoy/internal/jq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 521
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    .line 522
    iget-object v1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iput-object p1, v1, Lcom/tapjoy/internal/fi$a;->s:Ljava/lang/String;

    .line 524
    :cond_18
    monitor-exit p0

    return v0

    .line 525
    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method final c()Ljava/lang/String;
    .registers 2

    .line 336
    monitor-enter p0

    .line 337
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v0, v0, Lcom/tapjoy/internal/hl;->d:Lcom/tapjoy/internal/n;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->a()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 338
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public final c(Ljava/lang/String;)Z
    .registers 6

    .line 623
    monitor-enter p0

    .line 624
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object v0, v0, Lcom/tapjoy/internal/fi$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_b
    if-ltz v0, :cond_40

    .line 625
    iget-object v2, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object v2, v2, Lcom/tapjoy/internal/fi$a;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/ff;

    .line 626
    iget-object v3, v2, Lcom/tapjoy/internal/ff;->f:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 627
    invoke-virtual {v2}, Lcom/tapjoy/internal/ff;->b()Lcom/tapjoy/internal/ff$a;

    move-result-object p1

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p1, Lcom/tapjoy/internal/ff$a;->e:Ljava/lang/Long;

    .line 629
    iget-object v2, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object v2, v2, Lcom/tapjoy/internal/fi$a;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/tapjoy/internal/ff$a;->b()Lcom/tapjoy/internal/ff;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 630
    invoke-direct {p0}, Lcom/tapjoy/internal/he;->g()V

    .line 631
    monitor-exit p0

    return v1

    .line 624
    :cond_3d
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 634
    :cond_40
    monitor-exit p0

    .line 635
    const/4 p1, 0x0

    return p1

    .line 634
    :catchall_43
    move-exception p1

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_43

    goto :goto_47

    :goto_46
    throw p1

    :goto_47
    goto :goto_46
.end method

.method public final d()Lcom/tapjoy/internal/fd;
    .registers 19
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 350
    move-object/from16 v1, p0

    monitor-enter p0

    .line 351
    :try_start_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 352
    nop

    .line 7039
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x2710

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x64

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x64

    .line 7040
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v3, v6

    .line 352
    nop

    .line 353
    iget-object v6, v1, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v6, v6, Lcom/tapjoy/internal/hl;->e:Lcom/tapjoy/internal/j;

    invoke-virtual {v6}, Lcom/tapjoy/internal/j;->a()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 354
    const/4 v7, 0x0

    if-eq v6, v3, :cond_14c

    .line 357
    if-nez v6, :cond_4d

    .line 358
    nop

    .line 359
    iget-object v0, v1, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/tapjoy/internal/fi$a;->e:Ljava/lang/Integer;

    .line 360
    iget-object v0, v1, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/tapjoy/internal/fi$a;->f:Ljava/lang/Integer;

    .line 362
    new-instance v0, Lcom/tapjoy/internal/fd;

    const-string v4, "fq7_0_1"

    const-string v5, "fq30_0_1"

    invoke-direct {v0, v4, v5, v7}, Lcom/tapjoy/internal/fd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13c

    .line 364
    :cond_4d
    iget-object v8, v1, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v8, v8, Lcom/tapjoy/internal/hl;->f:Lcom/tapjoy/internal/j;

    invoke-virtual {v8}, Lcom/tapjoy/internal/j;->a()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 365
    const/4 v9, 0x7

    invoke-static {v9, v8}, Lcom/tapjoy/internal/he;->a(II)I

    move-result v10

    .line 366
    const/16 v11, 0x1e

    invoke-static {v11, v8}, Lcom/tapjoy/internal/he;->a(II)I

    move-result v12

    .line 368
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 369
    nop

    .line 7044
    div-int/lit16 v14, v6, 0x2710

    div-int/lit8 v15, v6, 0x64

    rem-int/lit8 v15, v15, 0x64

    sub-int/2addr v15, v2

    rem-int/lit8 v6, v6, 0x64

    invoke-virtual {v13, v14, v15, v6}, Ljava/util/Calendar;->set(III)V

    .line 370
    nop

    .line 8012
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int/2addr v6, v14

    invoke-static {v6}, Ljava/lang/Integer;->signum(I)I

    move-result v6

    .line 8013
    packed-switch v6, :pswitch_data_154

    .line 8016
    :pswitch_86
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_d5

    .line 8023
    :pswitch_8c
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Calendar;

    .line 8024
    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 8025
    invoke-virtual {v13, v5}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 8024
    invoke-virtual {v15, v14, v4, v13}, Ljava/util/Calendar;->set(III)V

    .line 8026
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    goto :goto_c1

    .line 8018
    :pswitch_a6
    invoke-virtual {v13}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Ljava/util/Calendar;

    .line 8019
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v15, v14, v4, v0}, Ljava/util/Calendar;->set(III)V

    .line 8020
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 8021
    nop

    .line 8030
    :goto_c1
    const/4 v0, 0x0

    .line 8031
    :goto_c2
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v4, v16, v13

    if-gez v4, :cond_d0

    .line 8032
    invoke-virtual {v15, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 8033
    add-int/lit8 v0, v0, 0x1

    goto :goto_c2

    .line 8035
    :cond_d0
    if-lez v6, :cond_d3

    goto :goto_da

    :cond_d3
    neg-int v0, v0

    goto :goto_da

    .line 8016
    :goto_d5
    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v0, v4

    .line 370
    :goto_da
    nop

    .line 371
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lt v4, v11, :cond_e3

    .line 372
    const/4 v14, 0x0

    goto :goto_eb

    .line 373
    :cond_e3
    if-ltz v0, :cond_e8

    .line 374
    shl-int v14, v8, v0

    goto :goto_eb

    .line 376
    :cond_e8
    neg-int v0, v0

    shr-int v14, v8, v0

    .line 378
    :goto_eb
    or-int/2addr v2, v14

    .line 380
    invoke-static {v9, v2}, Lcom/tapjoy/internal/he;->a(II)I

    move-result v0

    .line 381
    invoke-static {v11, v2}, Lcom/tapjoy/internal/he;->a(II)I

    move-result v4

    .line 382
    iget-object v5, v1, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/tapjoy/internal/fi$a;->e:Ljava/lang/Integer;

    .line 383
    iget-object v5, v1, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/tapjoy/internal/fi$a;->f:Ljava/lang/Integer;

    .line 385
    new-instance v5, Lcom/tapjoy/internal/fd;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "fq7_"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "fq30_"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v0, v4, v7}, Lcom/tapjoy/internal/fd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .line 387
    :goto_13c
    iget-object v4, v1, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v4, v4, Lcom/tapjoy/internal/hl;->e:Lcom/tapjoy/internal/j;

    invoke-virtual {v4, v3}, Lcom/tapjoy/internal/j;->a(I)V

    .line 388
    iget-object v3, v1, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v3, v3, Lcom/tapjoy/internal/hl;->f:Lcom/tapjoy/internal/j;

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/j;->a(I)V

    .line 389
    monitor-exit p0

    return-object v0

    .line 391
    :cond_14c
    monitor-exit p0

    return-object v7

    .line 393
    :catchall_14e
    move-exception v0

    monitor-exit p0
    :try_end_150
    .catchall {:try_start_3 .. :try_end_150} :catchall_14e

    goto :goto_152

    :goto_151
    throw v0

    :goto_152
    goto :goto_151

    nop

    :pswitch_data_154
    .packed-switch -0x1
        :pswitch_a6
        :pswitch_86
        :pswitch_8c
    .end packed-switch
.end method

.method public final e()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 601
    monitor-enter p0

    .line 602
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object v1, v1, Lcom/tapjoy/internal/fi$a;->A:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    .line 603
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public final f()Z
    .registers 3

    .line 656
    iget-object v0, p0, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    iget-object v0, v0, Lcom/tapjoy/internal/fi$a;->B:Ljava/lang/Boolean;

    sget-object v1, Lcom/tapjoy/internal/fi;->r:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/jq;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
