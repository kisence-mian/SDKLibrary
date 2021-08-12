.class Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$1;
.super Ljava/lang/Object;
.source "GetServerChannelVersionInterceptorMulti.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->a(Ljava/util/Iterator;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;)V
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$1;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 2

    .line 224
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    return p1
.end method
