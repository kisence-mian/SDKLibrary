.class public Lcom/tencent/smtt/sdk/JsError;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsError;


# direct methods
.method protected constructor <init>(Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsError;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/smtt/sdk/JsError;->a:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsError;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsError;->a:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsError;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsError;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStack()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/JsError;->a:Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsError;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/jscore/interfaces/IX5JsError;->getStack()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
