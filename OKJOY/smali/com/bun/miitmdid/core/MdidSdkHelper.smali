.class public Lcom/bun/miitmdid/core/MdidSdkHelper;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "MdidSdkHelper"

.field public static _OuterIsOk:Z = true
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# instance fields
.field private sdk_date:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2020011018"

    iput-object v0, p0, Lcom/bun/miitmdid/core/MdidSdkHelper;->sdk_date:Ljava/lang/String;

    return-void
.end method

.method public static InitSdk(Landroid/content/Context;ZLcom/bun/supplier/IIdentifierListener;)I
    .registers 10
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const v1, 0xf63e7

    :try_start_3
    sget-boolean v0, Lcom/bun/miitmdid/core/MdidSdkHelper;->_OuterIsOk:Z

    if-nez v0, :cond_14

    if-eqz p2, :cond_12

    new-instance v0, Lcom/bun/supplier/a;

    invoke-direct {v0}, Lcom/bun/supplier/a;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p2, v2, v0}, Lcom/bun/supplier/IIdentifierListener;->OnSupport(ZLcom/bun/supplier/IdSupplier;)V

    :cond_12
    move v0, v1

    :goto_13
    return v0

    :cond_14
    const-string v0, "com.bun.miitmdid.core.MdidSdk"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found class:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "com.bun.miitmdid.core.MdidSdk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bun/miitmdid/core/MdidSdkHelper;->logd(ZLjava/lang/String;)V

    move v0, v1

    goto :goto_13

    :cond_36
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    if-nez v2, :cond_4b

    const-string v0, "not found MdidSdk Constructor"

    invoke-static {p1, v0}, Lcom/bun/miitmdid/core/MdidSdkHelper;->logd(ZLjava/lang/String;)V

    move v0, v1

    goto :goto_13

    :cond_4b
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_62

    const-string v0, "Create MdidSdk Instance failed"

    invoke-static {p1, v0}, Lcom/bun/miitmdid/core/MdidSdkHelper;->logd(ZLjava/lang/String;)V

    move v0, v1

    goto :goto_13

    :cond_62
    const-string v3, "InitSdk"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/bun/supplier/IIdentifierListener;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_98

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found MdidSdk "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "InitSdk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " function"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bun/miitmdid/core/MdidSdkHelper;->logd(ZLjava/lang/String;)V

    move v0, v1

    goto/16 :goto_13

    :cond_98
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call and retvalue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/bun/miitmdid/core/MdidSdkHelper;->logd(ZLjava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_c1} :catch_c3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_c1} :catch_d5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_c1} :catch_d3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_c1} :catch_d1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_c1} :catch_cf

    goto/16 :goto_13

    :catch_c3
    move-exception v0

    :goto_c4
    invoke-static {p1, v0}, Lcom/bun/miitmdid/core/MdidSdkHelper;->loge(ZLjava/lang/Exception;)V

    const-string v0, "exception exit"

    invoke-static {p1, v0}, Lcom/bun/miitmdid/core/MdidSdkHelper;->logd(ZLjava/lang/String;)V

    move v0, v1

    goto/16 :goto_13

    :catch_cf
    move-exception v0

    goto :goto_c4

    :catch_d1
    move-exception v0

    goto :goto_c4

    :catch_d3
    move-exception v0

    goto :goto_c4

    :catch_d5
    move-exception v0

    goto :goto_c4
.end method

.method public static logd(ZLjava/lang/String;)V
    .registers 3

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdkHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static loge(ZLjava/lang/Exception;)V
    .registers 4

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/bun/miitmdid/core/MdidSdkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
