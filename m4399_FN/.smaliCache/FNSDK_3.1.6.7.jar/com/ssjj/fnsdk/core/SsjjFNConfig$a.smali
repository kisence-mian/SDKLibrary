.class Lcom/ssjj/fnsdk/core/SsjjFNConfig$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/SsjjFNConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field final synthetic c:Lcom/ssjj/fnsdk/core/SsjjFNConfig;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig$a;->c:Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "0"

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig$a;->a:Ljava/lang/String;

    const/16 p1, 0xe10

    iput p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig$a;->b:I

    return-void
.end method
