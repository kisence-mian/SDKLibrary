.class final Lcom/tapjoy/internal/ht$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ht;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/bd<",
        "Lcom/tapjoy/internal/ht;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;
    .registers 3

    .line 62
    nop

    .line 1065
    new-instance v0, Lcom/tapjoy/internal/ht;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/ht;-><init>(Lcom/tapjoy/internal/bi;)V

    .line 62
    return-object v0
.end method
