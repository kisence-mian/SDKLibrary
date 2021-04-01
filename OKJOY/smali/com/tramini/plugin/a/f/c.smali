.class public final Lcom/tramini/plugin/a/f/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-string v0, ""

    sput-object v0, Lcom/tramini/plugin/a/f/c;->a:Ljava/lang/String;

    .line 12
    const-string v0, ""

    sput-object v0, Lcom/tramini/plugin/a/f/c;->b:Ljava/lang/String;

    .line 13
    const-string v0, ""

    sput-object v0, Lcom/tramini/plugin/a/f/c;->c:Ljava/lang/String;

    .line 14
    const-string v0, ""

    sput-object v0, Lcom/tramini/plugin/a/f/c;->d:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/tramini/plugin/a/f/c;->e:I

    .line 16
    const-string v0, ""

    sput-object v0, Lcom/tramini/plugin/a/f/c;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 27
    sget v0, Lcom/tramini/plugin/a/f/c;->e:I

    if-nez v0, :cond_1c

    .line 29
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 30
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 31
    sput v0, Lcom/tramini/plugin/a/f/c;->e:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    .line 37
    :goto_15
    return v0

    .line 33
    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    const/4 v0, -0x1

    goto :goto_15

    .line 37
    :cond_1c
    sget v0, Lcom/tramini/plugin/a/f/c;->e:I

    goto :goto_15
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lcom/tramini/plugin/a/f/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 92
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/a/f/c;->b:Ljava/lang/String;

    .line 95
    :cond_10
    sget-object v0, Lcom/tramini/plugin/a/f/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lcom/tramini/plugin/a/f/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 100
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/tramini/plugin/a/f/c;->a:Ljava/lang/String;

    .line 102
    :cond_c
    sget-object v0, Lcom/tramini/plugin/a/f/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 48
    :try_start_0
    sget-object v0, Lcom/tramini/plugin/a/f/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 50
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 51
    sput-object v0, Lcom/tramini/plugin/a/f/c;->d:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 57
    :goto_19
    return-object v0

    .line 54
    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    const-string v0, ""

    goto :goto_19

    .line 57
    :cond_21
    sget-object v0, Lcom/tramini/plugin/a/f/c;->d:Ljava/lang/String;

    goto :goto_19
.end method

.method private static c()I
    .registers 1

    .prologue
    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 69
    :try_start_0
    sget-object v0, Lcom/tramini/plugin/a/f/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 71
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 72
    sput-object v0, Lcom/tramini/plugin/a/f/c;->c:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 79
    :goto_19
    return-object v0

    .line 75
    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    const-string v0, ""

    goto :goto_19

    .line 79
    :cond_21
    sget-object v0, Lcom/tramini/plugin/a/f/c;->c:Ljava/lang/String;

    goto :goto_19
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 120
    :try_start_0
    sget-object v0, Lcom/tramini/plugin/a/f/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    sput-object v0, Lcom/tramini/plugin/a/f/c;->f:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 124
    const-string v0, ""

    sput-object v0, Lcom/tramini/plugin/a/f/c;->f:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1d

    .line 130
    :cond_1a
    :goto_1a
    sget-object v0, Lcom/tramini/plugin/a/f/c;->f:Ljava/lang/String;

    return-object v0

    .line 128
    :catch_1d
    move-exception v0

    const-string v0, ""

    sput-object v0, Lcom/tramini/plugin/a/f/c;->f:Ljava/lang/String;

    goto :goto_1a
.end method
