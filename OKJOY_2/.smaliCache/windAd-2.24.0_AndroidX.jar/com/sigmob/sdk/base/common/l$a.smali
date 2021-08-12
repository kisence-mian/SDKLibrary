.class Lcom/sigmob/sdk/base/common/l$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/common/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/l$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/l$a;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sigmob/sdk/base/common/l$a;->c:J

    return-void
.end method
