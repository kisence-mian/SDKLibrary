.class final Lcom/appsflyer/internal/y$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic values:Lcom/appsflyer/internal/y$e;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/y$e;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/appsflyer/internal/y$5;->values:Lcom/appsflyer/internal/y$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 25
    nop

    .line 26
    nop

    .line 28
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onLvlResult"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_51

    .line 29
    aget-object p1, p3, v1

    if-eqz p1, :cond_19

    .line 30
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    goto :goto_1a

    .line 29
    :cond_19
    move-object p1, v0

    .line 33
    :goto_1a
    const/4 p2, 0x1

    aget-object v1, p3, p2

    if-eqz v1, :cond_24

    .line 34
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    goto :goto_25

    .line 33
    :cond_24
    move-object p2, v0

    .line 37
    :goto_25
    iget-object p3, p0, Lcom/appsflyer/internal/y$5;->values:Lcom/appsflyer/internal/y$e;

    if-eqz p3, :cond_4b

    .line 38
    if-eqz p1, :cond_31

    if-eqz p2, :cond_31

    .line 39
    invoke-interface {p3, p1, p2}, Lcom/appsflyer/internal/y$e;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    .line 40
    :cond_31
    const-string p1, "onLvlResult with error"

    if-nez p2, :cond_40

    .line 41
    new-instance p2, Ljava/lang/Exception;

    const-string v1, "AFLVL Invalid signature"

    invoke-direct {p2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1, p2}, Lcom/appsflyer/internal/y$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_90

    .line 43
    :cond_40
    new-instance p2, Ljava/lang/Exception;

    const-string v1, "AFLVL Invalid signedData"

    invoke-direct {p2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1, p2}, Lcom/appsflyer/internal/y$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_90

    .line 46
    :cond_4b
    const-string p1, "onLvlResult invocation succeeded, but listener is null"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    goto :goto_90

    .line 48
    :cond_51
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onLvlFailure"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 49
    iget-object p1, p0, Lcom/appsflyer/internal/y$5;->values:Lcom/appsflyer/internal/y$e;

    if-eqz p1, :cond_7a

    .line 50
    aget-object v2, p3, v1

    if-eqz v2, :cond_6f

    .line 51
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Exception;

    .line 52
    const-string p3, "onLvlFailure with exception"

    invoke-interface {p1, p3, p2}, Lcom/appsflyer/internal/y$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 53
    goto :goto_90

    .line 54
    :cond_6f
    new-instance p3, Ljava/lang/Exception;

    const-string v1, "unknown"

    invoke-direct {p3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Lcom/appsflyer/internal/y$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_90

    .line 57
    :cond_7a
    const-string p1, "onLvlFailure: listener is null"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    goto :goto_90

    .line 61
    :cond_80
    iget-object p1, p0, Lcom/appsflyer/internal/y$5;->values:Lcom/appsflyer/internal/y$e;

    if-eqz p1, :cond_90

    .line 62
    new-instance p2, Ljava/lang/Exception;

    const-string p3, "com.appsflyer.lvl.AppsFlyerLVL$resultListener invocation failed"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p3, "lvlInvocation failed"

    invoke-interface {p1, p3, p2}, Lcom/appsflyer/internal/y$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 65
    :cond_90
    :goto_90
    return-object v0
.end method
