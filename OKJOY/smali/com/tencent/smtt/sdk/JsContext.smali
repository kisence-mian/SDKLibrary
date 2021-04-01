.class public final Lcom/tencent/smtt/sdk/JsContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/JsContext$ExceptionHandler;
    }
.end annotation


# instance fields
.field private final a:Lcom/tencent/smtt/sdk/JsVirtualMachine;

.field private final b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;

.field private c:Lcom/tencent/smtt/sdk/JsContext$ExceptionHandler;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/tencent/smtt/sdk/JsVirtualMachine;

    invoke-direct {v0, p1}, Lcom/tencent/smtt/sdk/JsVirtualMachine;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/JsContext;-><init>(Lcom/tencent/smtt/sdk/JsVirtualMachine;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/smtt/sdk/JsVirtualMachine;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The virtualMachine value can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/tencent/smtt/sdk/JsContext;->a:Lcom/tencent/smtt/sdk/JsVirtualMachine;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsContext;->a:Lcom/tencent/smtt/sdk/JsVirtualMachine;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/JsVirtualMachine;->a()Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/JsContext;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;

    :try_start_17
    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsContext;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;

    invoke-interface {v0, p0}, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;->setPerContextData(Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/AbstractMethodError; {:try_start_17 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    goto :goto_1c
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/JsContext;)Lcom/tencent/smtt/sdk/JsContext$ExceptionHandler;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsContext;->c:Lcom/tencent/smtt/sdk/JsContext$ExceptionHandler;

    return-object v0
.end method

.method public static current()Lcom/tencent/smtt/sdk/JsContext;
    .registers 1

    invoke-static {}, Lcom/tencent/smtt/sdk/X5JsCore;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/smtt/sdk/JsContext;

    return-object v0
.end method


# virtual methods
.method public final addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsContext;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final destroy()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsContext;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;->destroy()V

    return-void
.end method

.method public final evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/smtt/sdk/JsContext;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;Ljava/net/URL;)V

    return-void
.end method

.method public final evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;Ljava/net/URL;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URL;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsContext;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;Ljava/net/URL;)V

    return-void
.end method

.method public final evaluateScript(Ljava/lang/String;)Lcom/tencent/smtt/sdk/JsValue;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/JsContext;->evaluateScript(Ljava/lang/String;Ljava/net/URL;)Lcom/tencent/smtt/sdk/JsValue;

    move-result-object v0

    return-object v0
.end method

.method public final evaluateScript(Ljava/lang/String;Ljava/net/URL;)Lcom/tencent/smtt/sdk/JsValue;
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsContext;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;->evaluateScript(Ljava/lang/String;Ljava/net/URL;)Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsValue;

    move-result-object v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/tencent/smtt/sdk/JsValue;

    invoke-direct {v0, p0, v1}, Lcom/tencent/smtt/sdk/JsValue;-><init>(Lcom/tencent/smtt/sdk/JsContext;Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsValue;)V

    goto :goto_9
.end method

.method public final evaluateScriptAsync(Ljava/lang/String;Landroid/webkit/ValueCallback;Ljava/net/URL;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/tencent/smtt/sdk/JsValue;",
            ">;",
            "Ljava/net/URL;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_9

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/tencent/smtt/sdk/JsContext;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;

    invoke-interface {v1, p1, v0, p3}, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;->evaluateScriptAsync(Ljava/lang/String;Landroid/webkit/ValueCallback;Ljava/net/URL;)V

    return-void

    :cond_9
    new-instance v0, Lcom/tencent/smtt/sdk/c;

    invoke-direct {v0, p0, p2}, Lcom/tencent/smtt/sdk/c;-><init>(Lcom/tencent/smtt/sdk/JsContext;Landroid/webkit/ValueCallback;)V

    goto :goto_3
.end method

.method public final exceptionHandler()Lcom/tencent/smtt/sdk/JsContext$ExceptionHandler;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsContext;->c:Lcom/tencent/smtt/sdk/JsContext$ExceptionHandler;

    return-object v0
.end method

.method public final name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsContext;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final removeJavascriptInterface(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsContext;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void
.end method

.method public final setExceptionHandler(Lcom/tencent/smtt/sdk/JsContext$ExceptionHandler;)V
    .registers 4

    iput-object p1, p0, Lcom/tencent/smtt/sdk/JsContext;->c:Lcom/tencent/smtt/sdk/JsContext$ExceptionHandler;

    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsContext;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;->setExceptionHandler(Landroid/webkit/ValueCallback;)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsContext;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;

    new-instance v1, Lcom/tencent/smtt/sdk/d;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/d;-><init>(Lcom/tencent/smtt/sdk/JsContext;)V

    invoke-interface {v0, v1}, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;->setExceptionHandler(Landroid/webkit/ValueCallback;)V

    goto :goto_a
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/sdk/JsContext;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsContext;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public final stealValueFromOtherCtx(Ljava/lang/String;Lcom/tencent/smtt/sdk/JsContext;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsContext;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;

    iget-object v1, p2, Lcom/tencent/smtt/sdk/JsContext;->b:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;

    invoke-interface {v0, p1, v1, p3}, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;->stealValueFromOtherCtx(Ljava/lang/String;Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsContext;Ljava/lang/String;)V

    return-void
.end method

.method public final virtualMachine()Lcom/tencent/smtt/sdk/JsVirtualMachine;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsContext;->a:Lcom/tencent/smtt/sdk/JsVirtualMachine;

    return-object v0
.end method
