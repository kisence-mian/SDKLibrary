.class final Lcom/taptap/sdk/net/Api$a;
.super Ljava/lang/Object;
.source "Api.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/net/Api;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/taptap/sdk/net/Api$ApiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taptap/sdk/AccessToken;

.field final synthetic c:Lcom/taptap/sdk/net/Api$ApiCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/taptap/sdk/AccessToken;Lcom/taptap/sdk/net/Api$ApiCallback;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/net/Api$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/taptap/sdk/net/Api$a;->b:Lcom/taptap/sdk/AccessToken;

    iput-object p3, p0, Lcom/taptap/sdk/net/Api$a;->c:Lcom/taptap/sdk/net/Api$ApiCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/net/Api$a;->a:Ljava/lang/String;

    .line 4
    :try_start_2
    iget-object v1, p0, Lcom/taptap/sdk/net/Api$a;->b:Lcom/taptap/sdk/AccessToken;

    iget-object v2, p0, Lcom/taptap/sdk/net/Api$a;->c:Lcom/taptap/sdk/net/Api$ApiCallback;

    invoke-static {v0, v1, v2}, Lcom/taptap/sdk/net/Api;->a(Ljava/lang/String;Lcom/taptap/sdk/AccessToken;Lcom/taptap/sdk/net/Api$ApiCallback;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_c
    .catchall {:try_start_2 .. :try_end_9} :catchall_a

    goto :goto_15

    :catchall_a
    move-exception v0

    goto :goto_16

    :catch_c
    move-exception v0

    .line 6
    :try_start_d
    new-instance v1, Lcom/taptap/sdk/net/Api$a$a;

    invoke-direct {v1, p0, v0}, Lcom/taptap/sdk/net/Api$a$a;-><init>(Lcom/taptap/sdk/net/Api$a;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/taptap/sdk/l;->b(Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_a

    :goto_15
    return-void

    .line 20
    :goto_16
    throw v0
.end method
