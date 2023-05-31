.class Lcom/taptap/sdk/net/Api$a$a;
.super Ljava/lang/Object;
.source "Api.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/net/Api$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/taptap/sdk/net/Api$a;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/net/Api$a;Ljava/lang/Exception;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/net/Api$a$a;->b:Lcom/taptap/sdk/net/Api$a;

    iput-object p2, p0, Lcom/taptap/sdk/net/Api$a$a;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/net/Api$a$a;->b:Lcom/taptap/sdk/net/Api$a;

    iget-object v0, v0, Lcom/taptap/sdk/net/Api$a;->c:Lcom/taptap/sdk/net/Api$ApiCallback;

    iget-object v1, p0, Lcom/taptap/sdk/net/Api$a$a;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/taptap/sdk/net/Api$ApiCallback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
