.class public Lcom/sigmob/sdk/base/common/utils/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:[F

.field public b:[F

.field public c:[F

.field public d:[F

.field public e:[F

.field public f:[F

.field public g:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/sigmob/sdk/base/common/utils/y;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/common/utils/y;

    return-object v0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/utils/y;->a()Lcom/sigmob/sdk/base/common/utils/y;

    move-result-object v0

    return-object v0
.end method
