.class Lcom/JoyFramework/d/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/remote/b/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/JoyFramework/remote/b/c/c",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/bo;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/bo;)V
    .registers 2

    .prologue
    .line 309
    iput-object p1, p0, Lcom/JoyFramework/d/bv;->a:Lcom/JoyFramework/d/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5206\u4eab\u8bb0\u5f55\u63a5\u53e3\u8c03\u7528\u5931\u8d25 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 317
    const-string v0, "\u5206\u4eab\u8bb0\u5f55\u63a5\u53e3\u8c03\u7528\u6210\u529f"

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 318
    return-void
.end method
