.class public Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper$AppIdsUpdater;,
        Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper$IdentifyListenerHandler;
    }
.end annotation


# static fields
.field private static a:Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper$AppIdsUpdater;

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper;->b:I

    const/4 v0, 0x2

    sput v0, Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper;->c:I

    return-void
.end method

.method static synthetic a()Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper$AppIdsUpdater;
    .registers 1

    sget-object v0, Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper;->a:Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper$AppIdsUpdater;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "com.bun.miitmdid.core.JLibrary"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "classLoader"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3f

    const-string v4, "InitEntry"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p0, v5, v0

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "field:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3d} :catch_3e

    goto :goto_3f

    :catch_3e
    move-exception v2

    :cond_3f
    :goto_3f
    :try_start_3f
    const-string v2, "com.bun.miitmdid.core.IIdentifierListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3f .. :try_end_45} :catch_46

    goto :goto_55

    :catch_46
    move-exception v2

    :try_start_47
    const-string v2, "com.bun.supplier.IIdentifierListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_4d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_47 .. :try_end_4d} :catch_4e

    goto :goto_55

    :catch_4e
    move-exception v2

    const-string v2, "com.bun.miitmdid.interfaces.IIdentifierListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    :goto_55
    new-instance v3, Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper$IdentifyListenerHandler;

    invoke-direct {v3}, Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper$IdentifyListenerHandler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Class;

    aput-object v2, v5, v0

    invoke-static {v4, v5, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "com.bun.miitmdid.core.MdidSdkHelper"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    const/4 v7, 0x2

    aput-object v2, v6, v7

    const-string v2, "InitSdk"

    invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v5, v1

    aput-object v3, v5, v7

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper;->b:I

    if-eqz p0, :cond_c5

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1008614"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msa sdk error: "

    goto :goto_b6

    :cond_af
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u65e0\u6cd5\u83b7\u53d6OAID,\u8bf7\u786e\u4fdd\u5e94\u7528\u6b63\u786e\u96c6\u6210OAID: "

    :goto_b6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_c5
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper$AppIdsUpdater;)V
    .registers 3

    :try_start_0
    sput-object p1, Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper;->a:Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper$AppIdsUpdater;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_22

    :try_start_2
    invoke-static {p0}, Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper;->a(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p0

    :try_start_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getOAID error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_2a
    return-void
.end method
