.class public final Lcom/tramini/plugin/a/g/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/tramini/plugin/a/g/e;->a:Ljava/lang/String;

    .line 21
    sput-object v0, Lcom/tramini/plugin/a/g/e;->b:Ljava/lang/String;

    .line 22
    sput-object v0, Lcom/tramini/plugin/a/g/e;->c:Ljava/lang/String;

    .line 23
    sput-object v0, Lcom/tramini/plugin/a/g/e;->d:Ljava/lang/String;

    .line 24
    const/4 v1, 0x0

    sput v1, Lcom/tramini/plugin/a/g/e;->e:I

    .line 25
    sput-object v0, Lcom/tramini/plugin/a/g/e;->f:Ljava/lang/String;

    .line 26
    sput-object v0, Lcom/tramini/plugin/a/g/e;->g:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 3

    .line 37
    sget v0, Lcom/tramini/plugin/a/g/e;->e:I

    if-nez v0, :cond_1c

    .line 39
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 40
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 41
    sput p0, Lcom/tramini/plugin/a/g/e;->e:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    return p0

    .line 43
    :catch_16
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    const/4 p0, -0x1

    return p0

    .line 47
    :cond_1c
    return v0
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .line 100
    sget-object v0, Lcom/tramini/plugin/a/g/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 102
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/a/g/e;->b:Ljava/lang/String;

    .line 105
    :cond_10
    sget-object v0, Lcom/tramini/plugin/a/g/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 109
    sget-object v0, Lcom/tramini/plugin/a/g/e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 110
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/tramini/plugin/a/g/e;->a:Ljava/lang/String;

    .line 112
    :cond_c
    sget-object v0, Lcom/tramini/plugin/a/g/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 58
    :try_start_0
    sget-object v0, Lcom/tramini/plugin/a/g/e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 60
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 61
    sput-object p0, Lcom/tramini/plugin/a/g/e;->d:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1e

    return-object p0

    .line 66
    :cond_1a
    nop

    .line 67
    sget-object p0, Lcom/tramini/plugin/a/g/e;->d:Ljava/lang/String;

    return-object p0

    .line 64
    :catch_1e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    const-string p0, ""

    return-object p0
.end method

.method private static c()I
    .registers 1

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 79
    :try_start_0
    sget-object v0, Lcom/tramini/plugin/a/g/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 81
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 82
    sput-object p0, Lcom/tramini/plugin/a/g/e;->c:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1e

    return-object p0

    .line 87
    :cond_1a
    nop

    .line 89
    sget-object p0, Lcom/tramini/plugin/a/g/e;->c:Ljava/lang/String;

    return-object p0

    .line 85
    :catch_1e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    const-string p0, ""

    return-object p0
.end method

.method private static d()Ljava/lang/String;
    .registers 2

    .line 145
    sget-object v0, Lcom/tramini/plugin/a/g/e;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 147
    :try_start_8
    sget-object v0, Lcom/tramini/plugin/a/g/d;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_16

    .line 148
    sget-object v0, Lcom/tramini/plugin/a/g/d;->a:Lorg/json/JSONObject;

    const-string v1, "gaid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/a/g/e;->g:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_17

    .line 152
    :cond_16
    goto :goto_1c

    .line 150
    :catch_17
    move-exception v0

    .line 151
    const-string v0, ""

    sput-object v0, Lcom/tramini/plugin/a/g/e;->g:Ljava/lang/String;

    .line 154
    :cond_1c
    :goto_1c
    sget-object v0, Lcom/tramini/plugin/a/g/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 130
    const-string v0, ""

    :try_start_2
    sget-object v1, Lcom/tramini/plugin/a/g/e;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "android_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 133
    sput-object p0, Lcom/tramini/plugin/a/g/e;->f:Ljava/lang/String;

    if-nez p0, :cond_1a

    .line 134
    sput-object v0, Lcom/tramini/plugin/a/g/e;->f:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    .line 139
    :cond_1a
    goto :goto_1e

    .line 137
    :catch_1b
    move-exception p0

    .line 138
    sput-object v0, Lcom/tramini/plugin/a/g/e;->f:Ljava/lang/String;

    .line 140
    :goto_1e
    sget-object p0, Lcom/tramini/plugin/a/g/e;->f:Ljava/lang/String;

    return-object p0
.end method
