.class public Lcom/bytedance/sdk/a/b/a/e/g$a;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/net/Socket;

.field b:Ljava/lang/String;

.field c:Lcom/bytedance/sdk/a/a/e;

.field d:Lcom/bytedance/sdk/a/a/d;

.field e:Lcom/bytedance/sdk/a/b/a/e/g$b;

.field f:Lcom/bytedance/sdk/a/b/a/e/m;

.field g:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/g$b;->f:Lcom/bytedance/sdk/a/b/a/e/g$b;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$a;->e:Lcom/bytedance/sdk/a/b/a/e/g$b;

    .line 531
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/m;->a:Lcom/bytedance/sdk/a/b/a/e/m;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$a;->f:Lcom/bytedance/sdk/a/b/a/e/m;

    .line 539
    iput-boolean p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$a;->g:Z

    .line 540
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/a/e/g$b;)Lcom/bytedance/sdk/a/b/a/e/g$a;
    .registers 2

    .prologue
    .line 557
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$a;->e:Lcom/bytedance/sdk/a/b/a/e/g$b;

    .line 558
    return-object p0
.end method

.method public a(Ljava/net/Socket;Ljava/lang/String;Lcom/bytedance/sdk/a/a/e;Lcom/bytedance/sdk/a/a/d;)Lcom/bytedance/sdk/a/b/a/e/g$a;
    .registers 5

    .prologue
    .line 549
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$a;->a:Ljava/net/Socket;

    .line 550
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/g$a;->b:Ljava/lang/String;

    .line 551
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/g$a;->c:Lcom/bytedance/sdk/a/a/e;

    .line 552
    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a/e/g$a;->d:Lcom/bytedance/sdk/a/a/d;

    .line 553
    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/a/b/a/e/g;
    .registers 2

    .prologue
    .line 567
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/a/e/g;-><init>(Lcom/bytedance/sdk/a/b/a/e/g$a;)V

    return-object v0
.end method
