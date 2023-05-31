.class public Lcom/tds/common/tracker/entities/TwoTuple;
.super Ljava/lang/Object;
.source "TwoTuple.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final paramA:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public final paramB:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 8
    .local p0, "this":Lcom/tds/common/tracker/entities/TwoTuple;, "Lcom/tds/common/tracker/entities/TwoTuple<TA;TB;>;"
    .local p1, "paramA":Ljava/lang/Object;, "TA;"
    .local p2, "paramB":Ljava/lang/Object;, "TB;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/tds/common/tracker/entities/TwoTuple;->paramA:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, Lcom/tds/common/tracker/entities/TwoTuple;->paramB:Ljava/lang/Object;

    .line 11
    return-void
.end method
