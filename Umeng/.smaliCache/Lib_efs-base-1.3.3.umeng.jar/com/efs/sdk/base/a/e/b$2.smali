.class final Lcom/efs/sdk/base/a/e/b$2;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/base/a/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 113
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 114
    const-wide/32 v0, 0x100000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "flow_5min"

    invoke-virtual {p0, v1, v0}, Lcom/efs/sdk/base/a/e/b$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "flow_hour"

    invoke-virtual {p0, v1, v0}, Lcom/efs/sdk/base/a/e/b$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "flow_day"

    invoke-virtual {p0, v1, v0}, Lcom/efs/sdk/base/a/e/b$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method
