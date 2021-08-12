.class Lcom/bytedance/embedapplog/ce$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embedapplog/ce;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/embedapplog/ce;


# direct methods
.method constructor <init>(Lcom/bytedance/embedapplog/ce;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/bytedance/embedapplog/ce$1;->a:Lcom/bytedance/embedapplog/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/bytedance/embedapplog/ce$1;->a:Lcom/bytedance/embedapplog/ce;

    invoke-static {v0}, Lcom/bytedance/embedapplog/ce;->a(Lcom/bytedance/embedapplog/ce;)V

    .line 133
    return-void
.end method
