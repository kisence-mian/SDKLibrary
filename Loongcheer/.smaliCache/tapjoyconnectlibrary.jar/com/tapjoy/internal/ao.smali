.class public abstract Lcom/tapjoy/internal/ao;
.super Ljava/util/AbstractQueue;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/as;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Lcom/tapjoy/internal/as<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/tapjoy/internal/ao$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ao$1;-><init>(Lcom/tapjoy/internal/ao;)V

    return-object v0
.end method
