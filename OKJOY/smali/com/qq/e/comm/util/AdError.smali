.class public Lcom/qq/e/comm/util/AdError;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/qq/e/comm/util/AdError;->a:I

    iput-object p2, p0, Lcom/qq/e/comm/util/AdError;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/util/AdError;->a:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/util/AdError;->b:Ljava/lang/String;

    return-object v0
.end method
