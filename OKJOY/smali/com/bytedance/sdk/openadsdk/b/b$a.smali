.class Lcom/bytedance/sdk/openadsdk/b/b$a;
.super Ljava/lang/Object;
.source "LruDiskFile.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/b/b;

.field private final b:Ljava/io/File;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/b/b;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 83
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/b$a;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/b$a;->b:Ljava/io/File;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/b/b;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/b/b$1;)V
    .registers 4

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/b/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/b/b;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/b$a;->a:Lcom/bytedance/sdk/openadsdk/b/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/b$a;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/b/b;->a(Lcom/bytedance/sdk/openadsdk/b/b;Ljava/io/File;)V

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/b/b$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
