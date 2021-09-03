.class final Lcom/tds/protobuf/MutabilityOracle$1;
.super Ljava/lang/Object;
.source "MutabilityOracle.java"

# interfaces
.implements Lcom/tds/protobuf/MutabilityOracle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/MutabilityOracle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ensureMutable()V
    .registers 2

    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
