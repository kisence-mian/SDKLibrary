.class final Lcom/bytedance/sdk/openadsdk/utils/ac$1;
.super Lcom/bytedance/sdk/openadsdk/i/c;
.source "RomUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/i/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/b;)V
    .registers 2

    .prologue
    .line 315
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/ac$1;->a:Lcom/bytedance/sdk/openadsdk/i/b;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/c;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ac$1;->a:Lcom/bytedance/sdk/openadsdk/i/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/b;->run()V

    .line 319
    return-void
.end method
