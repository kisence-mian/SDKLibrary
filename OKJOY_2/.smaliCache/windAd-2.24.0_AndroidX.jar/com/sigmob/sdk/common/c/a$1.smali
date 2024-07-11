.class Lcom/sigmob/sdk/common/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/common/c/a;->a(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcom/sigmob/sdk/common/c/a;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/common/c/a;Ljava/lang/Throwable;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/common/c/a$1;->b:Lcom/sigmob/sdk/common/c/a;

    iput-object p2, p0, Lcom/sigmob/sdk/common/c/a$1;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/common/c/a$1;->b:Lcom/sigmob/sdk/common/c/a;

    iget-object v1, p0, Lcom/sigmob/sdk/common/c/a$1;->a:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/common/c/a;->a(Lcom/sigmob/sdk/common/c/a;Ljava/lang/Throwable;)V

    return-void
.end method
