.class Lcom/bytedance/sdk/adnet/b/b$1;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/b/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/adnet/b/b$a;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/bytedance/sdk/adnet/b/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/b/b;Lcom/bytedance/sdk/adnet/b/b$a;Ljava/io/File;)V
    .registers 4

    .prologue
    .line 97
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/b$1;->c:Lcom/bytedance/sdk/adnet/b/b;

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/b$1;->a:Lcom/bytedance/sdk/adnet/b/b$a;

    iput-object p3, p0, Lcom/bytedance/sdk/adnet/b/b$1;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$1;->a:Lcom/bytedance/sdk/adnet/b/b$a;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/b$1;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/b$1;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/adnet/b/b$a;->a(JJ)V

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b$1;->a:Lcom/bytedance/sdk/adnet/b/b$a;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/b$1;->b:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/sdk/adnet/core/n;->a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/adnet/b/b$a;->a(Lcom/bytedance/sdk/adnet/core/n;)V

    .line 102
    return-void
.end method
