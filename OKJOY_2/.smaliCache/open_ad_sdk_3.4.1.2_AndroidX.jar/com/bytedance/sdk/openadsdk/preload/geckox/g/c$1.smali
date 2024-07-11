.class final Lcom/bytedance/sdk/openadsdk/preload/geckox/g/c$1;
.super Ljava/lang/Object;
.source "UsingLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/g/c;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/c$1;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/c$1;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/d;->a(Ljava/io/File;)Z

    .line 93
    return-void
.end method
