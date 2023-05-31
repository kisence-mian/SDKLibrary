.class public Lcom/tds/common/tracker/model/TrackEventUpdateAction;
.super Ljava/lang/Object;
.source "TrackEventUpdateAction.java"


# instance fields
.field public final twoTuple:Lcom/tds/common/tracker/entities/TwoTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/tracker/entities/TwoTuple<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/tracker/entities/TwoTuple;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/tracker/entities/TwoTuple<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    .local p1, "twoTuple":Lcom/tds/common/tracker/entities/TwoTuple;, "Lcom/tds/common/tracker/entities/TwoTuple<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/tds/common/tracker/model/TrackEventUpdateAction;->twoTuple:Lcom/tds/common/tracker/entities/TwoTuple;

    .line 9
    return-void
.end method
