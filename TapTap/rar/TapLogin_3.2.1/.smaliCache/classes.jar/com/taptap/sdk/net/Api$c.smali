.class final Lcom/taptap/sdk/net/Api$c;
.super Ljava/lang/Object;
.source "Api.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/net/Api;->b(Lcom/taptap/sdk/net/Api$ApiCallback;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taptap/sdk/net/Api$ApiCallback;

.field final synthetic b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/net/Api$ApiCallback;Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/net/Api$c;->a:Lcom/taptap/sdk/net/Api$ApiCallback;

    iput-object p2, p0, Lcom/taptap/sdk/net/Api$c;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/net/Api$c;->a:Lcom/taptap/sdk/net/Api$ApiCallback;

    iget-object v1, p0, Lcom/taptap/sdk/net/Api$c;->b:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/taptap/sdk/net/Api$ApiCallback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
