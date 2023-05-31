.class Lcom/tencent/smtt/sdk/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/ValueCallback;

.field final synthetic b:Lcom/tencent/smtt/sdk/JsContext;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/JsContext;Landroid/webkit/ValueCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/sdk/c;->b:Lcom/tencent/smtt/sdk/JsContext;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/c;->a:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsValue;)V
    .registers 5

    iget-object v1, p0, Lcom/tencent/smtt/sdk/c;->a:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void

    :cond_9
    new-instance v0, Lcom/tencent/smtt/sdk/JsValue;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/c;->b:Lcom/tencent/smtt/sdk/JsContext;

    invoke-direct {v0, v2, p1}, Lcom/tencent/smtt/sdk/JsValue;-><init>(Lcom/tencent/smtt/sdk/JsContext;Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsValue;)V

    goto :goto_5
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsValue;

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/c;->a(Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsValue;)V

    return-void
.end method
