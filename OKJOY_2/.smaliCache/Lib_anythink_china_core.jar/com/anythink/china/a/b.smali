.class public final Lcom/anythink/china/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/china/a/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 203
    :try_start_0
    new-instance v0, Lcom/anythink/china/a/b$a;

    invoke-direct {v0, p0}, Lcom/anythink/china/a/b$a;-><init>(Landroid/content/Context;)V

    iget-object p0, v0, Lcom/anythink/china/a/b$a;->b:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 204
    return-object p0

    .line 205
    :catchall_8
    move-exception p0

    .line 206
    const-string p0, ""

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 92
    nop

    .line 97
    :try_start_1
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 99
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const-string p0, "unknown"

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_29

    .line 101
    goto :goto_2b

    .line 100
    :catch_29
    move-exception p0

    const/4 p0, 0x0

    .line 103
    :goto_2b
    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/anythink/china/a/a;)V
    .registers 16

    .line 41
    nop

    .line 43
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p0}, Lcom/anythink/china/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_af

    .line 44
    :try_start_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 46
    invoke-interface {p1, v1, v0}, Lcom/anythink/china/a/a;->a(Ljava/lang/String;Z)V

    .line 48
    return-void

    .line 51
    :cond_10
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 1082
    const-string v3, "ro.build.freeme.label"

    invoke-static {v3}, Lcom/anythink/china/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1083
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_29

    const-string v4, "FREEMEOS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    move v3, v5

    goto :goto_2a

    :cond_29
    move v3, v0

    .line 52
    :goto_2a
    if-eqz v3, :cond_2f

    .line 53
    const-string v2, "FERRMEOS"

    goto :goto_49

    .line 1087
    :cond_2f
    const-string v3, "ro.ssui.product"

    invoke-static {v3}, Lcom/anythink/china/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1088
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_44

    const-string v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    goto :goto_45

    :cond_44
    move v5, v0

    .line 54
    :goto_45
    if-eqz v5, :cond_49

    .line 55
    const-string v2, "SSUI"

    .line 58
    :cond_49
    :goto_49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ac

    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string v3, "ASUS"

    const-string v4, "HUAWEI"

    const-string v5, "OPPO"

    const-string v6, "ONEPLUS"

    const-string v7, "ZTE"

    const-string v8, "FERRMEOS"

    const-string v9, "SSUI"

    const-string v10, "SAMSUNG"

    const-string v11, "MEIZU"

    const-string v12, "MOTOLORA"

    const-string v13, "LENOVO"

    filled-new-array/range {v3 .. v13}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 61
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 62
    nop

    .line 1108
    invoke-static {}, Lcom/anythink/china/common/a/a/a;->a()Lcom/anythink/china/common/a/a/a;

    move-result-object v3

    new-instance v4, Lcom/anythink/china/a/b$1;

    invoke-direct {v4, p1, p0, v2}, Lcom/anythink/china/a/b$1;-><init>(Lcom/anythink/china/a/a;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/anythink/china/common/a/a/a;->a(Ljava/lang/Runnable;)V

    .line 62
    goto :goto_b2

    .line 63
    :cond_85
    const-string v3, "VIVO"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 64
    new-instance v2, Lcom/anythink/china/a/a/k;

    invoke-direct {v2, p0}, Lcom/anythink/china/a/a/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/anythink/china/a/a/k;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_b2

    .line 65
    :cond_97
    const-string v3, "NUBIA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 66
    new-instance v2, Lcom/anythink/china/a/a/f;

    invoke-direct {v2, p0}, Lcom/anythink/china/a/a/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/anythink/china/a/a/f;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_b2

    .line 68
    :cond_a9
    invoke-static {p0, p1}, Lcom/anythink/china/a/b;->c(Landroid/content/Context;Lcom/anythink/china/a/a;)V
    :try_end_ac
    .catchall {:try_start_6 .. :try_end_ac} :catchall_ad

    .line 72
    :cond_ac
    goto :goto_b2

    .line 71
    :catchall_ad
    move-exception p0

    goto :goto_b2

    :catchall_af
    move-exception p0

    const-string v1, ""

    .line 74
    :goto_b2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_bb

    .line 76
    invoke-interface {p1, v1, v0}, Lcom/anythink/china/a/a;->a(Ljava/lang/String;Z)V

    .line 79
    :cond_bb
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/china/a/a;)V
    .registers 5

    .line 108
    invoke-static {}, Lcom/anythink/china/common/a/a/a;->a()Lcom/anythink/china/common/a/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/china/a/b$1;

    invoke-direct {v1, p2, p0, p1}, Lcom/anythink/china/a/b$1;-><init>(Lcom/anythink/china/a/a;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a/a/a;->a(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method private static a()Z
    .registers 2

    .line 82
    const-string v0, "ro.build.freeme.label"

    invoke-static {v0}, Lcom/anythink/china/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "FREEMEOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/anythink/china/a/a;)V
    .registers 2

    .line 32
    invoke-static {p0, p1}, Lcom/anythink/china/a/b;->c(Landroid/content/Context;Lcom/anythink/china/a/a;)V

    return-void
.end method

.method private static b()Z
    .registers 2

    .line 87
    const-string v0, "ro.ssui.product"

    invoke-static {v0}, Lcom/anythink/china/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private static c(Landroid/content/Context;Lcom/anythink/china/a/a;)V
    .registers 4

    .line 174
    invoke-static {}, Lcom/anythink/china/common/a/a/a;->a()Lcom/anythink/china/common/a/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/china/a/b$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/china/a/b$2;-><init>(Landroid/content/Context;Lcom/anythink/china/a/a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a/a/a;->a(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method
