.class Lcom/sigmob/sdk/common/SDKConfig$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/common/SDKConfig;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/common/SDKConfig;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/common/SDKConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/SDKConfig$1;->a:Lcom/sigmob/sdk/common/SDKConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/SDKConfig$1;->a:Lcom/sigmob/sdk/common/SDKConfig;

    invoke-static {v0}, Lcom/sigmob/sdk/common/SDKConfig;->a(Lcom/sigmob/sdk/common/SDKConfig;)V

    return-void
.end method
