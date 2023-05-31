.class public Lcom/bytedance/sdk/openadsdk/h/l$a;
.super Ljava/lang/Object;
.source "Urls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field b:I

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/h/l;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/l;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 101
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/l$a;->c:Lcom/bytedance/sdk/openadsdk/h/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/l$a;->a:Ljava/lang/String;

    .line 103
    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .prologue
    .line 106
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/l;->c()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/l$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method b()V
    .registers 3

    .prologue
    .line 110
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/l;->d()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/l$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/l$a;->a:Ljava/lang/String;

    return-object v0
.end method
