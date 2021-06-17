.class public Lorg/repackage/com/miui/deviceid/IdentifierManager;
.super Ljava/lang/Object;
.source "IdentifierManager.java"


# static fields
.field private static final a:Ljava/lang/String; = "IdentifierManager"

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->d:Ljava/lang/reflect/Method;

    .line 16
    sput-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->e:Ljava/lang/reflect/Method;

    .line 17
    sput-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->f:Ljava/lang/reflect/Method;

    .line 18
    sput-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->g:Ljava/lang/reflect/Method;

    .line 21
    :try_start_9
    const-string v0, "com.android.id.impl.IdProviderImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->c:Ljava/lang/Class;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->b:Ljava/lang/Object;

    .line 23
    sget-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->c:Ljava/lang/Class;

    const-string v1, "getUDID"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->d:Ljava/lang/reflect/Method;

    .line 24
    sget-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->c:Ljava/lang/Class;

    const-string v1, "getOAID"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->e:Ljava/lang/reflect/Method;

    .line 25
    sget-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->c:Ljava/lang/Class;

    const-string v1, "getVAID"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->f:Ljava/lang/reflect/Method;

    .line 26
    sget-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->c:Ljava/lang/Class;

    const-string v1, "getAAID"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->g:Ljava/lang/reflect/Method;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_59} :catch_5a

    .line 29
    goto :goto_62

    .line 27
    :catch_5a
    move-exception v0

    .line 28
    const-string v1, "IdentifierManager"

    const-string v2, "reflect exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :goto_62
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 48
    sget-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->d:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lorg/repackage/com/miui/deviceid/IdentifierManager;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 5

    .line 82
    sget-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    .line 84
    const/4 v1, 0x1

    :try_start_7
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 85
    if-eqz p0, :cond_15

    .line 86
    check-cast p0, Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_16

    return-object p0

    .line 90
    :cond_15
    goto :goto_1e

    .line 88
    :catch_16
    move-exception p0

    .line 89
    const-string p1, "IdentifierManager"

    const-string v0, "invoke exception!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Z
    .registers 1

    .line 38
    sget-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->c:Ljava/lang/Class;

    if-eqz v0, :cond_a

    sget-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->b:Ljava/lang/Object;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 58
    sget-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->e:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lorg/repackage/com/miui/deviceid/IdentifierManager;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 68
    sget-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->f:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lorg/repackage/com/miui/deviceid/IdentifierManager;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 78
    sget-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->g:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lorg/repackage/com/miui/deviceid/IdentifierManager;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
