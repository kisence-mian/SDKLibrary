.class Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper$IdentifyListenerHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdentifyListenerHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    :try_start_0
    const-string p1, "OnSupport"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    const/4 p1, 0x0

    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_6a

    if-eqz p2, :cond_6b

    :try_start_17
    const-string p2, "com.bun.miitmdid.supplier.IdSupplier"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2
    :try_end_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_6a

    goto :goto_2d

    :catch_1e
    move-exception p2

    :try_start_1f
    const-string p2, "com.bun.supplier.IdSupplier"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_25} :catch_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_25} :catch_6a

    goto :goto_2d

    :catch_26
    move-exception p2

    :try_start_27
    const-string p2, "com.bun.miitmdid.interfaces.IdSupplier"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    :goto_2d
    const-string v0, "getOAID"

    new-array v1, p1, [Ljava/lang/Class;

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    const/4 v0, 0x1

    aget-object p3, p3, v0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper;->a()Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper$AppIdsUpdater;

    move-result-object p2

    if-eqz p2, :cond_53

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_53

    invoke-static {}, Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper;->a()Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper$AppIdsUpdater;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sigmob/devicehelper/oaId/helpers/DevicesIDsHelper$AppIdsUpdater;->OnIdsAvalid(Ljava/lang/String;)V

    :cond_53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "oaid:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_69} :catch_6a

    goto :goto_6b

    :catch_6a
    move-exception p1

    :cond_6b
    :goto_6b
    const/4 p1, 0x0

    return-object p1
.end method
