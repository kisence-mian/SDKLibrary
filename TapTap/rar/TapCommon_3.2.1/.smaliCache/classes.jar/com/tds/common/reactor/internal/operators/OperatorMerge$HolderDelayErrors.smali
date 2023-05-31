.class final Lcom/tds/common/reactor/internal/operators/OperatorMerge$HolderDelayErrors;
.super Ljava/lang/Object;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HolderDelayErrors"
.end annotation


# static fields
.field static final INSTANCE:Lcom/tds/common/reactor/internal/operators/OperatorMerge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/internal/operators/OperatorMerge<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 76
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OperatorMerge;

    const/4 v1, 0x1

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lcom/tds/common/reactor/internal/operators/OperatorMerge;-><init>(ZI)V

    sput-object v0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$HolderDelayErrors;->INSTANCE:Lcom/tds/common/reactor/internal/operators/OperatorMerge;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
