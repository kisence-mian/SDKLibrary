.class final Lcom/tapjoy/internal/jv$1;
.super Lcom/tapjoy/internal/jy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/jv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/jy<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Lcom/tapjoy/internal/jy;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .line 71
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
