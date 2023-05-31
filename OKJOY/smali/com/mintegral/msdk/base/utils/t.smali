.class public final Lcom/mintegral/msdk/base/utils/t;
.super Ljava/lang/Object;
.source "TargetAdaptionUtils.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, -0x1

    .line 21
    sput v0, Lcom/mintegral/msdk/base/utils/t;->a:I

    .line 22
    sput v0, Lcom/mintegral/msdk/base/utils/t;->b:I

    .line 23
    sput v0, Lcom/mintegral/msdk/base/utils/t;->c:I

    .line 24
    sput v0, Lcom/mintegral/msdk/base/utils/t;->d:I

    .line 25
    sput v0, Lcom/mintegral/msdk/base/utils/t;->e:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/16 v3, 0x1a

    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    sget v2, Lcom/mintegral/msdk/base/utils/t;->e:I

    if-ne v2, v0, :cond_a

    .line 61
    :cond_9
    :goto_9
    return v0

    .line 36
    :cond_a
    sget v2, Lcom/mintegral/msdk/base/utils/t;->e:I

    if-nez v2, :cond_10

    move v0, v1

    .line 37
    goto :goto_9

    .line 41
    :cond_10
    if-nez p0, :cond_17

    .line 42
    const/4 v0, -0x1

    :try_start_13
    sput v0, Lcom/mintegral/msdk/base/utils/t;->e:I

    move v0, v1

    .line 43
    goto :goto_9

    .line 45
    :cond_17
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->m(Landroid/content/Context;)I

    move-result v2

    .line 46
    if-lt v2, v3, :cond_9

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_9

    .line 47
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v3, "download"

    invoke-direct {v2, p0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    const/4 v2, 0x1

    sput v2, Lcom/mintegral/msdk/base/utils/t;->e:I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_13 .. :try_end_2b} :catch_31
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_2b} :catch_36

    goto :goto_9

    .line 52
    :catch_2c
    move-exception v0

    .line 53
    sput v4, Lcom/mintegral/msdk/base/utils/t;->e:I

    move v0, v1

    .line 60
    goto :goto_9

    .line 55
    :catch_31
    move-exception v0

    .line 56
    sput v1, Lcom/mintegral/msdk/base/utils/t;->e:I

    move v0, v1

    .line 60
    goto :goto_9

    .line 58
    :catch_36
    move-exception v0

    .line 59
    sput v4, Lcom/mintegral/msdk/base/utils/t;->e:I

    move v0, v1

    goto :goto_9
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 9

    .prologue
    const/16 v3, 0x1a

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    sget v0, Lcom/mintegral/msdk/base/utils/t;->c:I

    if-ne v0, v1, :cond_b

    move v2, v1

    .line 111
    :cond_a
    :goto_a
    return v2

    .line 73
    :cond_b
    sget v0, Lcom/mintegral/msdk/base/utils/t;->c:I

    if-eqz v0, :cond_a

    .line 78
    if-nez p0, :cond_1b

    .line 79
    const/4 v0, -0x1

    :try_start_12
    sput v0, Lcom/mintegral/msdk/base/utils/t;->c:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_14} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_14} :catch_3b

    goto :goto_a

    .line 105
    :catch_15
    move-exception v0

    .line 106
    sput v7, Lcom/mintegral/msdk/base/utils/t;->c:I

    move v1, v2

    :goto_19
    move v2, v1

    .line 111
    goto :goto_a

    .line 82
    :cond_1b
    :try_start_1b
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->m(Landroid/content/Context;)I

    move-result v0

    .line 83
    if-lt v0, v3, :cond_62

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_62

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 85
    if-nez v4, :cond_40

    .line 86
    const/4 v0, -0x1

    sput v0, Lcom/mintegral/msdk/base/utils/t;->c:I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3a} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_3a} :catch_3b

    goto :goto_a

    .line 108
    :catch_3b
    move-exception v0

    .line 109
    sput v7, Lcom/mintegral/msdk/base/utils/t;->c:I

    move v1, v2

    goto :goto_19

    .line 89
    :cond_40
    :try_start_40
    array-length v0, v4

    if-nez v0, :cond_47

    .line 90
    const/4 v0, 0x0

    sput v0, Lcom/mintegral/msdk/base/utils/t;->c:I

    goto :goto_a

    .line 93
    :cond_47
    array-length v5, v4

    move v3, v2

    move v0, v1

    :goto_4a
    if-ge v3, v5, :cond_63

    aget-object v0, v4, v3

    .line 94
    const-string v6, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 96
    const/4 v0, 0x1

    sput v0, Lcom/mintegral/msdk/base/utils/t;->c:I

    goto :goto_19

    .line 100
    :cond_5a
    const/4 v0, 0x0

    sput v0, Lcom/mintegral/msdk/base/utils/t;->c:I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5d} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_5d} :catch_3b

    .line 93
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_4a

    :cond_62
    move v0, v1

    :cond_63
    move v1, v0

    .line 110
    goto :goto_19
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 9

    .prologue
    const/4 v7, -0x1

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 120
    sget v1, Lcom/mintegral/msdk/base/utils/t;->b:I

    if-ne v1, v0, :cond_9

    move v2, v0

    .line 159
    :cond_8
    :goto_8
    return v2

    .line 123
    :cond_9
    sget v1, Lcom/mintegral/msdk/base/utils/t;->b:I

    if-eqz v1, :cond_8

    .line 128
    if-nez p0, :cond_19

    .line 129
    const/4 v0, -0x1

    :try_start_10
    sput v0, Lcom/mintegral/msdk/base/utils/t;->b:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_12} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_12} :catch_2e

    goto :goto_8

    .line 153
    :catch_13
    move-exception v0

    .line 154
    sput v7, Lcom/mintegral/msdk/base/utils/t;->b:I

    move v0, v2

    :goto_17
    move v2, v0

    .line 159
    goto :goto_8

    .line 132
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 133
    if-nez v4, :cond_33

    .line 134
    const/4 v0, -0x1

    sput v0, Lcom/mintegral/msdk/base/utils/t;->b:I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2d} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_2d} :catch_2e

    goto :goto_8

    .line 156
    :catch_2e
    move-exception v0

    .line 157
    sput v7, Lcom/mintegral/msdk/base/utils/t;->b:I

    move v0, v2

    goto :goto_17

    .line 137
    :cond_33
    :try_start_33
    array-length v1, v4

    if-nez v1, :cond_3a

    .line 138
    const/4 v0, 0x0

    sput v0, Lcom/mintegral/msdk/base/utils/t;->b:I

    goto :goto_8

    .line 141
    :cond_3a
    array-length v5, v4

    move v3, v2

    move v1, v0

    :goto_3d
    if-ge v3, v5, :cond_57

    aget-object v1, v4, v3

    .line 142
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v6, "com.mintegral.msdk.shell.MTGService"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 144
    const/4 v1, 0x1

    sput v1, Lcom/mintegral/msdk/base/utils/t;->b:I

    goto :goto_17

    .line 148
    :cond_4f
    const/4 v1, 0x0

    sput v1, Lcom/mintegral/msdk/base/utils/t;->b:I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_52} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_52} :catch_2e

    .line 141
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    goto :goto_3d

    :cond_57
    move v0, v1

    .line 158
    goto :goto_17
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 9

    .prologue
    const/4 v7, -0x1

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 163
    sget v1, Lcom/mintegral/msdk/base/utils/t;->d:I

    if-ne v1, v0, :cond_9

    move v2, v0

    .line 202
    :cond_8
    :goto_8
    return v2

    .line 166
    :cond_9
    sget v1, Lcom/mintegral/msdk/base/utils/t;->d:I

    if-eqz v1, :cond_8

    .line 171
    if-nez p0, :cond_19

    .line 172
    const/4 v0, -0x1

    :try_start_10
    sput v0, Lcom/mintegral/msdk/base/utils/t;->d:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_12} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_12} :catch_2f

    goto :goto_8

    .line 196
    :catch_13
    move-exception v0

    .line 197
    sput v7, Lcom/mintegral/msdk/base/utils/t;->d:I

    move v0, v2

    :goto_17
    move v2, v0

    .line 202
    goto :goto_8

    .line 175
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 176
    if-nez v4, :cond_34

    .line 177
    const/4 v0, -0x1

    sput v0, Lcom/mintegral/msdk/base/utils/t;->d:I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2e} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_2e} :catch_2f

    goto :goto_8

    .line 199
    :catch_2f
    move-exception v0

    .line 200
    sput v7, Lcom/mintegral/msdk/base/utils/t;->d:I

    move v0, v2

    goto :goto_17

    .line 180
    :cond_34
    :try_start_34
    array-length v1, v4

    if-nez v1, :cond_3b

    .line 181
    const/4 v0, 0x0

    sput v0, Lcom/mintegral/msdk/base/utils/t;->d:I

    goto :goto_8

    .line 184
    :cond_3b
    array-length v5, v4

    move v3, v2

    move v1, v0

    :goto_3e
    if-ge v3, v5, :cond_58

    aget-object v1, v4, v3

    .line 185
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    const-string v6, "com.mintegral.msdk.base.utils.MTGFileProvider"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 187
    const/4 v1, 0x1

    sput v1, Lcom/mintegral/msdk/base/utils/t;->d:I

    goto :goto_17

    .line 191
    :cond_50
    const/4 v1, 0x0

    sput v1, Lcom/mintegral/msdk/base/utils/t;->d:I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_53} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_53} :catch_2f

    .line 184
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    goto :goto_3e

    :cond_58
    move v0, v1

    .line 201
    goto :goto_17
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/16 v2, 0x18

    .line 206
    const/4 v0, 0x0

    .line 208
    :try_start_3
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/c;->m(Landroid/content/Context;)I

    move-result v1

    .line 209
    if-lt v1, v2, :cond_e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_b} :catch_f

    if-lt v1, v2, :cond_e

    .line 210
    const/4 v0, 0x1

    .line 217
    :cond_e
    :goto_e
    return v0

    .line 212
    :catch_f
    move-exception v1

    .line 213
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_e

    .line 214
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e
.end method
