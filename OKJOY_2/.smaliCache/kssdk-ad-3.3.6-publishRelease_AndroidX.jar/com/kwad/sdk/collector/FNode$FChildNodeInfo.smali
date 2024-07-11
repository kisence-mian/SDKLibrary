.class public Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/collector/FNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FChildNodeInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x156d7f11b78acb43L


# instance fields
.field private totalSize:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;)V
    .registers 6

    iget-wide v0, p0, Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;->totalSize:J

    iget-wide v2, p1, Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;->totalSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;->totalSize:J

    return-void
.end method

.method public getTotalSize()J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;->totalSize:J

    return-wide v0
.end method

.method public setTotalSize(J)V
    .registers 3

    iput-wide p1, p0, Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;->totalSize:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildrenInfo{totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/kwad/sdk/collector/FNode$FChildNodeInfo;->totalSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
