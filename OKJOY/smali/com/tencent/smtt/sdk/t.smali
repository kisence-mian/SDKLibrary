.class Lcom/tencent/smtt/sdk/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/sdk/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/smtt/sdk/ValueCallback",
        "<[",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/ValueCallback;

.field final synthetic b:Lcom/tencent/smtt/sdk/q;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/q;Landroid/webkit/ValueCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/sdk/t;->b:Lcom/tencent/smtt/sdk/q;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/t;->a:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Landroid/net/Uri;)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/t;->a:Landroid/webkit/ValueCallback;

    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/t;->a([Landroid/net/Uri;)V

    return-void
.end method
