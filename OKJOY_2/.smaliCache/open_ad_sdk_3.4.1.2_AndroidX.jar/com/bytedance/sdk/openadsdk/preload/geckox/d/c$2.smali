.class Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$2;
.super Ljava/lang/Object;
.source "GetServerChannelVersionInterceptorMulti.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->a(Ljava/util/Iterator;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;Ljava/io/File;)V
    .registers 3

    .line 241
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$2;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$2;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$2;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/d;->a(Ljava/io/File;)Z

    .line 244
    return-void
.end method
