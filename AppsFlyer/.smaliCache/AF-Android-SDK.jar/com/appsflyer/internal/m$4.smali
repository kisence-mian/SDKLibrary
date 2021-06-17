.class final Lcom/appsflyer/internal/m$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/m$d;

.field private synthetic values:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/appsflyer/internal/m$d;)V
    .registers 3

    .line 41
    iput-object p1, p0, Lcom/appsflyer/internal/m$4;->values:Ljava/lang/Class;

    iput-object p2, p0, Lcom/appsflyer/internal/m$4;->AFInAppEventParameterName:Lcom/appsflyer/internal/m$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onDeferredAppLinkDataFetched"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_6f

    .line 45
    const/4 p1, 0x0

    aget-object v0, p3, p1

    if-eqz v0, :cond_67

    .line 46
    nop

    .line 47
    nop

    .line 51
    nop

    .line 54
    iget-object v0, p0, Lcom/appsflyer/internal/m$4;->values:Ljava/lang/Class;

    aget-object p3, p3, p1

    invoke-virtual {v0, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 55
    iget-object v0, p0, Lcom/appsflyer/internal/m$4;->values:Ljava/lang/Class;

    new-array v1, p1, [Ljava/lang/Class;

    const-string v2, "getArgumentBundle"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 56
    const-class v1, Landroid/os/Bundle;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, p3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 58
    if-eqz p1, :cond_5c

    .line 59
    const-string p3, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 60
    const-string v0, "target_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "extras"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 63
    if-eqz p1, :cond_5a

    .line 64
    const-string v1, "deeplink_context"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 65
    if-eqz p1, :cond_5a

    .line 66
    const-string v1, "promo_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5f

    .line 70
    :cond_5a
    move-object p1, p2

    goto :goto_5f

    .line 58
    :cond_5c
    move-object p1, p2

    move-object p3, p1

    move-object v0, p3

    .line 70
    :goto_5f
    iget-object v1, p0, Lcom/appsflyer/internal/m$4;->AFInAppEventParameterName:Lcom/appsflyer/internal/m$d;

    if-eqz v1, :cond_66

    .line 71
    invoke-interface {v1, p3, v0, p1}, Lcom/appsflyer/internal/m$d;->values(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_66
    goto :goto_6e

    .line 75
    :cond_67
    iget-object p1, p0, Lcom/appsflyer/internal/m$4;->AFInAppEventParameterName:Lcom/appsflyer/internal/m$d;

    if-eqz p1, :cond_6e

    .line 76
    invoke-interface {p1, p2, p2, p2}, Lcom/appsflyer/internal/m$d;->values(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_6e
    :goto_6e
    return-object p2

    .line 81
    :cond_6f
    iget-object p1, p0, Lcom/appsflyer/internal/m$4;->AFInAppEventParameterName:Lcom/appsflyer/internal/m$d;

    if-eqz p1, :cond_78

    .line 82
    const-string p3, "onDeferredAppLinkDataFetched invocation failed"

    invoke-interface {p1, p3}, Lcom/appsflyer/internal/m$d;->AFInAppEventType(Ljava/lang/String;)V

    .line 84
    :cond_78
    return-object p2
.end method
