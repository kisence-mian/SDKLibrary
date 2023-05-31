.class public Lcom/sigmob/sdk/base/common/utils/s;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/s;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sigmob/sdk/base/common/utils/s;->a:Z

    return-void
.end method
