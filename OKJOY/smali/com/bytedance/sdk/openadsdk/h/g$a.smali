.class final Lcom/bytedance/sdk/openadsdk/h/g$a;
.super Ljava/lang/Object;
.source "ProxyTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/h/a/a;

.field b:Lcom/bytedance/sdk/openadsdk/h/b/c;

.field c:Ljava/net/Socket;

.field d:Lcom/bytedance/sdk/openadsdk/h/g$c;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/bytedance/sdk/openadsdk/h/b/c;)Lcom/bytedance/sdk/openadsdk/h/g$a;
    .registers 4

    .prologue
    .line 616
    if-nez p1, :cond_a

    .line 617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "db == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_a
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/g$a;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    .line 620
    return-object p0
.end method

.method a(Lcom/bytedance/sdk/openadsdk/h/g$c;)Lcom/bytedance/sdk/openadsdk/h/g$a;
    .registers 2

    .prologue
    .line 640
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/g$a;->d:Lcom/bytedance/sdk/openadsdk/h/g$c;

    .line 641
    return-object p0
.end method

.method a(Ljava/net/Socket;)Lcom/bytedance/sdk/openadsdk/h/g$a;
    .registers 4

    .prologue
    .line 632
    if-nez p1, :cond_a

    .line 633
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_a
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/g$a;->c:Ljava/net/Socket;

    .line 636
    return-object p0
.end method

.method a()Lcom/bytedance/sdk/openadsdk/h/g;
    .registers 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$a;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$a;->c:Ljava/net/Socket;

    if-nez v0, :cond_e

    .line 647
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 649
    :cond_e
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/g;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/g;-><init>(Lcom/bytedance/sdk/openadsdk/h/g$a;)V

    return-object v0
.end method
