.class public Lcom/qq/e/comm/adevent/ADEvent;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qq/e/comm/adevent/ADEvent;-><init>(I[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "paras"    # [Ljava/lang/Object;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/qq/e/comm/adevent/ADEvent;->a:I

    iput-object p2, p0, Lcom/qq/e/comm/adevent/ADEvent;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getParas()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/adevent/ADEvent;->b:[Ljava/lang/Object;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/qq/e/comm/adevent/ADEvent;->b:[Ljava/lang/Object;

    goto :goto_7
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/adevent/ADEvent;->a:I

    return v0
.end method
