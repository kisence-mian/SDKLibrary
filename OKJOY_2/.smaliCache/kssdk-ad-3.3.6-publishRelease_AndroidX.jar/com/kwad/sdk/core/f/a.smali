.class public Lcom/kwad/sdk/core/f/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/f/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/kwad/sdk/core/f/a$a;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/kwad/sdk/core/f/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kwad/sdk/core/f/a;->c:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/f/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/f/a;->a(Landroid/content/Context;)V

    :cond_13
    sget-object v0, Lcom/kwad/sdk/core/f/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/kwad/sdk/core/f/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    sget-boolean v0, Lcom/kwad/sdk/core/f/a;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kwad/sdk/core/f/a;->c:Z

    sget-object v0, Lcom/kwad/sdk/core/f/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    if-nez p0, :cond_1b

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    :cond_1b
    if-nez p0, :cond_1e

    return-void

    :cond_1e
    invoke-static {p0}, Lcom/kwad/sdk/utils/aa;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/core/f/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    return-void

    :cond_2b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/kwad/sdk/core/f/a$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/f/a$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/kwad/sdk/utils/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/kwad/sdk/core/f/a;->c:Z

    return p0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/f/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    const-string p0, "unknown"

    aput-object p0, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2b} :catch_2d

    move-object v0, p0

    goto :goto_31

    :catch_2d
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_31
    return-object v0
.end method

.method static synthetic c()Z
    .registers 1

    invoke-static {}, Lcom/kwad/sdk/core/f/a;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Z
    .registers 1

    invoke-static {}, Lcom/kwad/sdk/core/f/a;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic e()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/f/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()V
    .registers 0

    invoke-static {}, Lcom/kwad/sdk/core/f/a;->i()V

    return-void
.end method

.method private static g()Z
    .registers 2

    const-string v0, "ro.build.freeme.label"

    invoke-static {v0}, Lcom/kwad/sdk/core/f/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

.method private static h()Z
    .registers 2

    const-string v0, "ro.ssui.product"

    invoke-static {v0}, Lcom/kwad/sdk/core/f/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

.method private static i()V
    .registers 2

    sget-object v0, Lcom/kwad/sdk/core/f/a;->b:Lcom/kwad/sdk/core/f/a$a;

    if-eqz v0, :cond_9

    sget-object v1, Lcom/kwad/sdk/core/f/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/f/a$a;->a(Ljava/lang/String;)V

    :cond_9
    return-void
.end method
