.class final Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$Holder;
.super Ljava/lang/Object;
.source "OperatorToObservableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/internal/operators/OperatorToObservableList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;

    invoke-direct {v0}, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/internal/operators/OperatorToObservableList$Holder;->INSTANCE:Lcom/tds/common/reactor/internal/operators/OperatorToObservableList;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
