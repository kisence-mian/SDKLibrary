.class public Lcom/ssjj/fnsdk/core/SsjjFNException;
.super Ljava/lang/Exception;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNException;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNException;->a:I

    iput p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNException;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNException;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNException;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNException;->a:I

    iput p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNException;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNException;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNException;->a:I

    iput p3, p0, Lcom/ssjj/fnsdk/core/SsjjFNException;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNException;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNException;->a:I

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .registers 2

    iget v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNException;->a:I

    return v0
.end method

.method public setStatusCode(I)V
    .registers 2

    iput p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNException;->a:I

    return-void
.end method
