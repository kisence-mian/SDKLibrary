.class Lcom/tencent/smtt/sdk/JsValue$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsValue$JsValueFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/JsValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/smtt/sdk/JsValue$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/JsValue$a;-><init>()V

    return-void
.end method


# virtual methods
.method public getJsValueClassName()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/tencent/smtt/sdk/JsValue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/Object;)Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsValue;
    .registers 3

    if-eqz p1, :cond_d

    instance-of v0, p1, Lcom/tencent/smtt/sdk/JsValue;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/tencent/smtt/sdk/JsValue;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/JsValue;->a(Lcom/tencent/smtt/sdk/JsValue;)Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsValue;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public wrap(Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsValue;)Ljava/lang/Object;
    .registers 4

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/tencent/smtt/sdk/JsContext;->current()Lcom/tencent/smtt/sdk/JsContext;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v0, Lcom/tencent/smtt/sdk/JsValue;

    invoke-direct {v0, v1, p1}, Lcom/tencent/smtt/sdk/JsValue;-><init>(Lcom/tencent/smtt/sdk/JsContext;Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsValue;)V

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
