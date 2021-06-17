.class public abstract Lcom/efs/sdk/base/protocol/record/AbsRecordLog;
.super Lcom/efs/sdk/base/protocol/AbsLog;
.source "SourceFile"


# instance fields
.field protected dataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/protocol/AbsLog;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->dataMap:Ljava/util/HashMap;

    .line 26
    return-void
.end method


# virtual methods
.method public getBodyType()I
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogProtocol()B
    .registers 2

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->dataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public putMap(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->dataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 45
    return-void
.end method

.method public putNum(Ljava/lang/String;J)V
    .registers 6

    .line 62
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->dataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "wl_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 53
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->dataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "wk_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public putTimestamp(Ljava/lang/String;J)V
    .registers 6

    .line 71
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->dataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "wd_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method
