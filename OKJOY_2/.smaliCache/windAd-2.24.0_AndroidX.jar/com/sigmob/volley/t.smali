.class public Lcom/sigmob/volley/t;
.super Ljava/lang/Exception;


# instance fields
.field public final a:Lcom/sigmob/volley/j;

.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/volley/t;->a:Lcom/sigmob/volley/j;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/volley/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/sigmob/volley/t;->a:Lcom/sigmob/volley/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/volley/t;->a:Lcom/sigmob/volley/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/volley/t;->a:Lcom/sigmob/volley/j;

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/volley/t;->b:J

    return-wide v0
.end method

.method a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/sigmob/volley/t;->b:J

    return-void
.end method
